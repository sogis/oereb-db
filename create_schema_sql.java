///usr/bin/env jbang "$0" "$@" ; exit $?
//REPOS mavenCentral,ehi=http://jars.interlis.ch/
//DEPS ch.interlis:ili2pg:4.3.1 org.postgresql:postgresql:42.1.4.jre6 

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PushbackReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

import ch.ehi.ili2db.base.Ili2db;
import ch.ehi.ili2db.base.Ili2dbException;
import ch.ehi.ili2db.gui.Config;
import ch.ehi.ili2pg.PgMain;

import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;

public class create_schema_sql {

    public static void main(String... args) throws Ili2dbException, IOException {

        /* Skripts für Docker OEREB-DB */
        List<String> schemas = List.of("stage", "live");
        SortedMap<String,String> models = new TreeMap<>();
        models.put("ili1", "DM01AVCH24LV95D;PLZOCH1LV95D");
        models.put("ili2", "OeREBKRM_V2_0;OeREBKRMkvs_V2_0;OeREBKRMtrsfr_V2_0");

        var config = new Config();
        new PgMain().initConfig(config);
        config.setFunction(Config.FC_SCRIPT);
        config.setModeldir("https://geo.so.ch/models;http://models.geo.admin.ch");
        Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
        config.setCreateFk(Config.CREATE_FK_YES);
        config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
        config.setCreateImportTabs(true);
        config.setCreateMetaInfo(true);
        config.setNameOptimization(Config.NAME_OPTIMIZATION_DISABLE);
        config.setDefaultSrsCode("2056");
       
        var contentBuilder = new StringBuilder();
        for (var schema : schemas) {
            config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
            config.setTidHandling(Config.TID_HANDLING_PROPERTY);        
            config.setBasketHandling(Config.BASKET_HANDLING_READWRITE);
            config.setCreateTypeDiscriminator(Config.CREATE_TYPE_DISCRIMINATOR_ALWAYS);

            contentBuilder.append("/* SCHEMA: " + schema + " */\n");
            for (var model : models.entrySet()) {
                String fileName = schema+"_"+model.getKey()+".sql";
                //System.out.println(fileName);
                config.setDbschema(schema);
                config.setModels(model.getValue());
                config.setCreatescript(new File(fileName).getAbsolutePath());
                Ili2db.run(config, null);
                
                var content = new String(Files.readAllBytes(Paths.get(fileName)));
                if (model.getKey().equalsIgnoreCase("ili2")) {
                    String replacedContent = content
                          .replaceAll("CREATE SEQUENCE", "-- CREATE SEQUENCE")
                          .replaceAll("CREATE TABLE (.*T_ILI2DB)", "CREATE TABLE IF NOT EXISTS $1")
                          .replaceAll("(CREATE.*INDEX) (T_ILI2DB)", "$1 IF NOT EXISTS $2")
                          .replaceAll("(ALTER TABLE .*T_ILI2DB.* ADD CONSTRAINT .* FOREIGN KEY)", "-- $1")
                          .replaceAll("(INSERT INTO .*T_ILI2DB_SETTINGS)", "-- $1");
                    contentBuilder.append(replacedContent);
                } else {
                    contentBuilder.append(content);
                }
            }

            // WMS-Tabellen ohne t_type, t_basket etc.
            String fileName = schema+"_wms.sql";
            config.setModels("SO_AGI_OeREB_WMS_20220222");
            config.setTidHandling(Config.TID_HANDLING_PROPERTY);        
            config.setBasketHandling(null);
            config.setCreateTypeDiscriminator(null);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);    

            var content = new String(Files.readAllBytes(Paths.get(fileName)));
            String replacedContent = content
                .replaceAll("CREATE SEQUENCE", "-- CREATE SEQUENCE")
                .replaceAll("CREATE TABLE (.*T_ILI2DB)", "CREATE TABLE IF NOT EXISTS $1")
                .replaceAll("(CREATE.*INDEX) (T_ILI2DB)", "$1 IF NOT EXISTS $2")
                .replaceAll("(ALTER TABLE .*T_ILI2DB.* ADD CONSTRAINT .* FOREIGN KEY)", "-- $1")
                .replaceAll("(INSERT INTO .*T_ILI2DB_SETTINGS)", "-- $1")
                ;

            contentBuilder.append(replacedContent);
        }

        var tmpFos = new FileOutputStream("setup_tmp.sql");
        tmpFos.write(contentBuilder.toString().getBytes());
        tmpFos.close();

        // Weil die WMS-Tabellen in einem anderen "ili2db-Scope" erzeugt werden, führt das
        // zu INSERT-Befehlen, welche einen Unique-Constraint verletzen.
        // Diese Befehle müssen identifiziert werden und mit einem 'ON CONFLICT' ergänzt werden.
        var fixedContentBuilder = new StringBuilder();

        FileInputStream sqlFileInputStream = new FileInputStream("setup_tmp.sql");
        InputStreamReader sqlFileReader = new InputStreamReader(sqlFileInputStream, StandardCharsets.UTF_8);

        var reader = new PushbackReader(sqlFileReader);

        var statement = ch.ehi.sqlgen.SqlReader.readSqlStmt(reader, null);
        if (statement == null) {
            reader.close();
        }
        while (statement != null) {
            if (statement.contains("INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES") || 
                statement.contains("INSERT INTO stage.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES")) {
                statement += " ON CONFLICT DO NOTHING;\n";
            } else  {
                statement += ";\n";
            }
            fixedContentBuilder.append(statement);

            statement = ch.ehi.sqlgen.SqlReader.readSqlStmt(reader, null);

            if (statement == null) {
                reader.close();
                break;
            } 
        }

        var fos = new FileOutputStream("setup.sql");
        fos.write(fixedContentBuilder.toString().getBytes());
        fos.close();

        /* Skript für GDI OEREB-DB */
        String preScript = "BEGIN;\n";
        String postScript = "COMMIT;"; 

        var gdiFos = new FileOutputStream("setup_gdi.sql");
        gdiFos.write(preScript.getBytes());
        gdiFos.write(fixedContentBuilder.toString().getBytes());
        gdiFos.write(postScript.getBytes());
        gdiFos.close();

        /* Skripts für Transforming-Schemas (Docker und GDI)
        * für die Docker-DB werden sie dem im ersten Schritt erstellten  
        * setup.sql hinzugefügt. Somit kann das Image auch in der
        * lokalen Entwicklung als Edit-DB verwendet werden. Ohne, dass
        * man sich ums Erstellen der Schemen kümmern muss (aber immer noch
        * ums Importieren von (Test-)Daten). 
        */

        // Keep list in sync with initdb-user.sh!
        List<String> transferSchemas = List.of("afu_grundwasserschutz_oerebv2", "arp_naturreservate_oerebv2", "afu_geotope_oerebv2", "ada_denkmalschutz_oerebv2", "awjf_statische_waldgrenzen_oerebv2", "arp_nutzungsplanung_oerebv2", "arp_nutzungsplanung_kanton_oerebv2", "arp_planungszonen_oerebv2", "afu_gewaesserraum_oerebv2");
        String model = "OeREBKRMtrsfr_V2_0;SO_AGI_OeREB_Legendeneintraege_20211020";

        config = new Config();
        new PgMain().initConfig(config);
        config.setFunction(Config.FC_SCRIPT);
        Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
        config.setCreateFk(Config.CREATE_FK_YES);
        config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
        config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
        config.setTidHandling(Config.TID_HANDLING_PROPERTY);        
        config.setBasketHandling(Config.BASKET_HANDLING_READWRITE);
        config.setNameOptimization(Config.NAME_OPTIMIZATION_TOPIC);
        config.setCreateEnumDefs(Config.CREATE_ENUM_DEFS_MULTI);
        config.setBeautifyEnumDispName(Config.BEAUTIFY_ENUM_DISPNAME_UNDERSCORE);
        config.setCreateUniqueConstraints(true);
        config.setCreateNumChecks(true);
        //config.setCreateDatasetCols(Config.CREATE_DATASET_COL);
        config.setCreateImportTabs(true);
        config.setCreateMetaInfo(true);
        config.setDefaultSrsCode("2056");
        config.setMinIdSeqValue(2000000000000L);

        for (String schema : transferSchemas) {
            String fileName = "transfer_"+schema+"_gdi.sql";
            config.setDbschema(schema);
            config.setModels(model);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);
        
            contentBuilder = new StringBuilder();
            contentBuilder.append("\n");
            contentBuilder.append("COMMENT ON SCHEMA "+schema+" IS 'Schema für den Datenumbau ins OEREB-Transferschema';");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON SCHEMA "+schema+" TO ${writeUser};");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "+schema+" TO ${writeUser};");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON ALL SEQUENCES IN SCHEMA "+schema+" TO ${writeUser};");

            fos = new FileOutputStream("setup.sql", true);
            fos.write(new String(Files.readAllBytes(Paths.get(fileName))).getBytes());
            fos.close();

            fos = new FileOutputStream(fileName, true);
            fos.write(contentBuilder.toString().getBytes());
            fos.close();
        }

        /**
         * Schemen der Datenthemen für Edit-DB. Damit muss man bei der Erstellung seiner
         * dev-Umgebung nicht noch das jeweilige Schema erstellen und das Image kann 
         * einfacher und schnelle als Edit-DB (in einer fremden Umgebung) verwendet werden.
         * Jedes Datenthema muss gesondert behandelt werden, da sie in der Edit-DB 
         * mit unterschiedlichen Parametern angelegt worden sind.
         * 
         * Die SQL-Befehle werden setup.sql hinzugefügt.
         */

        String PG_WRITE_USER = "ddluser";
        String PG_GRETL_USER = "gretl";

         // Konfiguration
         {
            model = "OeREBKRMkvs_V2_0";
            String schema = "agi_oereb_konfiguration";
            String fileName = "edit_"+schema+".sql";

            config = new Config();
            new PgMain().initConfig(config);
            config.setFunction(Config.FC_SCRIPT);
            Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
            config.setCreateFk(Config.CREATE_FK_YES);
            config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
            config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
            config.setTidHandling(Config.TID_HANDLING_PROPERTY);        
            config.setBasketHandling(Config.BASKET_HANDLING_READWRITE);
            config.setCreateDatasetCols(Config.CREATE_DATASET_COL);
            config.setNameOptimization(Config.NAME_OPTIMIZATION_TOPIC);
            config.setCreateEnumDefs(Config.CREATE_ENUM_DEFS_MULTI);
            config.setBeautifyEnumDispName(Config.BEAUTIFY_ENUM_DISPNAME_UNDERSCORE);
            config.setCreateUniqueConstraints(true);
            config.setCreateNumChecks(true);
            config.setDefaultSrsCode("2056");
            config.setDbschema(schema);
            config.setModels(model);
            config.setCreateMetaInfo(true);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);

            contentBuilder = new StringBuilder();
            contentBuilder.append("\n");
            contentBuilder.append("COMMENT ON SCHEMA "+schema+" IS 'Schema für den Datenumbau ins OEREB-Transferschema';");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON ALL SEQUENCES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");

            fos = new FileOutputStream("setup.sql", true);
            fos.write(new String(Files.readAllBytes(Paths.get(fileName))).getBytes());
            fos.close();

            fos = new FileOutputStream(fileName, true);
            fos.write(contentBuilder.toString().getBytes());
            fos.close();
         }   

         // Planerischer Gewässerschutz
         {
            model = "PlanerischerGewaesserschutz_LV95_V1_1";
            String schema = "afu_gewaesserschutz";
            String fileName = "edit_"+schema+".sql";

            config = new Config();
            new PgMain().initConfig(config);
            config.setFunction(Config.FC_SCRIPT);
            Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
            config.setCreateFk(Config.CREATE_FK_YES);
            config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
            config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
            config.setNameOptimization(Config.NAME_OPTIMIZATION_TOPIC);
            config.setCreateEnumDefs(Config.CREATE_ENUM_DEFS_MULTI);
            config.setBeautifyEnumDispName(Config.BEAUTIFY_ENUM_DISPNAME_UNDERSCORE);
            config.setCreateUniqueConstraints(true);
            config.setCreateNumChecks(true);
            config.setDefaultSrsCode("2056");
            config.setDbschema(schema);
            config.setModels(model);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);

            contentBuilder = new StringBuilder();
            contentBuilder.append("\n");
            contentBuilder.append("COMMENT ON SCHEMA "+schema+" IS 'Schema für den Datenumbau ins OEREB-Transferschema';");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON ALL SEQUENCES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");

            fos = new FileOutputStream("setup.sql", true);
            fos.write(new String(Files.readAllBytes(Paths.get(fileName))).getBytes());
            fos.close();

            fos = new FileOutputStream(fileName, true);
            fos.write(contentBuilder.toString().getBytes());
            fos.close();
         }

         // Naturreservate (Einzelschutz)
         {
            model = "SO_ARP_Naturreservate_20200609";
            String schema = "arp_naturreservate";
            //PG_WRITE_USER = "gretl";
            String fileName = "edit_"+schema+".sql";

            config = new Config();
            new PgMain().initConfig(config);
            config.setFunction(Config.FC_SCRIPT);
            Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
            config.setCreateFk(Config.CREATE_FK_YES);
            config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
            config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
            //config.setTidHandling(Config.TID_HANDLING_PROPERTY);        
            //config.setBasketHandling(Config.BASKET_HANDLING_READWRITE);
            config.setNameOptimization(Config.NAME_OPTIMIZATION_TOPIC);
            config.setCreateEnumDefs(Config.CREATE_ENUM_DEFS_MULTI);
            config.setBeautifyEnumDispName(Config.BEAUTIFY_ENUM_DISPNAME_UNDERSCORE);
            config.setCreateUniqueConstraints(true);
            config.setCreateNumChecks(true);
            config.setDefaultSrsCode("2056");
            config.setDbschema(schema);
            config.setModels(model);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);

            contentBuilder = new StringBuilder();
            contentBuilder.append("\n");
            contentBuilder.append("COMMENT ON SCHEMA "+schema+" IS 'Schema für den Datenumbau ins OEREB-Transferschema';");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON ALL SEQUENCES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");

            fos = new FileOutputStream("setup.sql", true);
            fos.write(new String(Files.readAllBytes(Paths.get(fileName))).getBytes());
            fos.close();

            fos = new FileOutputStream(fileName, true);
            fos.write(contentBuilder.toString().getBytes());
            fos.close();
         }

         // Geotope (Einzelschutz)
         {
            model = "SO_AFU_Geotope_20200312";
            String schema = "afu_geotope";
            String fileName = "edit_"+schema+".sql";

            config = new Config();
            new PgMain().initConfig(config);
            config.setFunction(Config.FC_SCRIPT);
            Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
            config.setCreateFk(Config.CREATE_FK_YES);
            config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
            config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
            config.setNameOptimization(Config.NAME_OPTIMIZATION_TOPIC);
            config.setCreateEnumDefs(Config.CREATE_ENUM_DEFS_MULTI);
            config.setBeautifyEnumDispName(Config.BEAUTIFY_ENUM_DISPNAME_UNDERSCORE);
            config.setCreateUniqueConstraints(true);
            config.setCreateNumChecks(true);
            config.setDefaultSrsCode("2056");
            config.setDbschema(schema);
            config.setModels(model);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);

            contentBuilder = new StringBuilder();
            contentBuilder.append("\n");
            contentBuilder.append("COMMENT ON SCHEMA "+schema+" IS 'Schema für den Datenumbau ins OEREB-Transferschema';");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON ALL SEQUENCES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");

            fos = new FileOutputStream("setup.sql", true);
            fos.write(new String(Files.readAllBytes(Paths.get(fileName))).getBytes());
            fos.close();

            fos = new FileOutputStream(fileName, true);
            fos.write(contentBuilder.toString().getBytes());
            fos.close();
         }

        // Geotope (Einzelschutz)
        {
            model = "SO_ADA_Denkmal_20191128";
            String schema = "ada_denkmalschutz";
            String fileName = "edit_"+schema+".sql";

            config = new Config();
            new PgMain().initConfig(config);
            config.setFunction(Config.FC_SCRIPT);
            Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
            config.setCreateFk(Config.CREATE_FK_YES);
            config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
            config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
            config.setNameOptimization(Config.NAME_OPTIMIZATION_TOPIC);
            config.setCreateEnumDefs(Config.CREATE_ENUM_DEFS_MULTI);
            config.setBeautifyEnumDispName(Config.BEAUTIFY_ENUM_DISPNAME_UNDERSCORE);
            config.setCreateUniqueConstraints(true);
            config.setCreateNumChecks(true);
            config.setDefaultSrsCode("2056");
            config.setDbschema(schema);
            config.setModels(model);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);

            contentBuilder = new StringBuilder();
            contentBuilder.append("\n");
            contentBuilder.append("COMMENT ON SCHEMA "+schema+" IS 'Schema für den Datenumbau ins OEREB-Transferschema';");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON ALL SEQUENCES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");

            fos = new FileOutputStream("setup.sql", true);
            fos.write(new String(Files.readAllBytes(Paths.get(fileName))).getBytes());
            fos.close();

            fos = new FileOutputStream(fileName, true);
            fos.write(contentBuilder.toString().getBytes());
            fos.close();
        }

         // Statische Waldgrenzen
         {
            model = "SO_AWJF_Statische_Waldgrenzen_20191119";
            String schema = "awjf_statische_waldgrenze";
            //PG_WRITE_USER = "gretl";
            String fileName = "edit_"+schema+".sql";

            config = new Config();
            new PgMain().initConfig(config);
            config.setFunction(Config.FC_SCRIPT);
            Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
            config.setCreateFk(Config.CREATE_FK_YES);
            config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
            config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
            //config.setTidHandling(Config.TID_HANDLING_PROPERTY);        
            //config.setBasketHandling(Config.BASKET_HANDLING_READWRITE);
            config.setNameOptimization(Config.NAME_OPTIMIZATION_TOPIC);
            config.setCreateEnumDefs(Config.CREATE_ENUM_DEFS_MULTI);
            config.setBeautifyEnumDispName(Config.BEAUTIFY_ENUM_DISPNAME_UNDERSCORE);
            config.setCreateUniqueConstraints(true);
            config.setCreateNumChecks(true);
            config.setDefaultSrsCode("2056");
            config.setDbschema(schema);
            config.setModels(model);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);

            contentBuilder = new StringBuilder();
            contentBuilder.append("\n");
            contentBuilder.append("COMMENT ON SCHEMA "+schema+" IS 'Schema für den Datenumbau ins OEREB-Transferschema';");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON ALL SEQUENCES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");

            fos = new FileOutputStream("setup.sql", true);
            fos.write(new String(Files.readAllBytes(Paths.get(fileName))).getBytes());
            fos.close();

            fos = new FileOutputStream(fileName, true);
            fos.write(contentBuilder.toString().getBytes());
            fos.close();
         }

         // Amtliche Vermessung
         {
            model = "DM01AVSO24LV95";
            String schema = "agi_dm01avso24";
            String fileName = "edit_"+schema+".sql";

            config = new Config();
            new PgMain().initConfig(config);
            config.setFunction(Config.FC_SCRIPT);
            Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
            config.setCreateFk(Config.CREATE_FK_YES);
            config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
            config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
            config.setBasketHandling(Config.BASKET_HANDLING_READWRITE);
            config.setCreateDatasetCols(Config.CREATE_DATASET_COL);
            config.setNameOptimization(Config.NAME_OPTIMIZATION_TOPIC);
            config.setCreateEnumDefs(Config.CREATE_ENUM_DEFS_MULTI);
            config.setBeautifyEnumDispName(Config.BEAUTIFY_ENUM_DISPNAME_UNDERSCORE);
            config.setCreateUniqueConstraints(false);
            config.setCreateNumChecks(true);
            config.setDefaultSrsCode("2056");
            config.setDbschema(schema);
            config.setModels(model);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);

            contentBuilder = new StringBuilder();
            contentBuilder.append("\n");
            contentBuilder.append("COMMENT ON SCHEMA "+schema+" IS 'Schema für den Datenumbau ins OEREB-Transferschema';");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON ALL SEQUENCES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");

            fos = new FileOutputStream("setup.sql", true);
            fos.write(new String(Files.readAllBytes(Paths.get(fileName))).getBytes());
            fos.close();

            fos = new FileOutputStream(fileName, true);
            fos.write(contentBuilder.toString().getBytes());
            fos.close();
         }

         // Nutzungsplanung (Kanton)
         {
            model = "SO_ARP_Nutzungsplanung_Nachfuehrung_20201005";
            String schema = "arp_nutzungsplanung_kanton";
            String fileName = "edit_"+schema+".sql";

            config = new Config();
            new PgMain().initConfig(config);
            config.setFunction(Config.FC_SCRIPT);
            Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
            config.setCreateFk(Config.CREATE_FK_YES);
            config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
            config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
            config.setNameOptimization(Config.NAME_OPTIMIZATION_TOPIC);
            config.setCreateEnumDefs(Config.CREATE_ENUM_DEFS_MULTI);
            config.setBeautifyEnumDispName(Config.BEAUTIFY_ENUM_DISPNAME_UNDERSCORE);
            config.setCreateUniqueConstraints(true);
            config.setCreateNumChecks(true);
            config.setMinIdSeqValue(1000000000000L);
            config.setDefaultSrsCode("2056");
            config.setDbschema(schema);
            config.setModels(model);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);

            contentBuilder = new StringBuilder();
            contentBuilder.append("\n");
            contentBuilder.append("COMMENT ON SCHEMA "+schema+" IS 'Schema für den Datenumbau ins OEREB-Transferschema';");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON ALL SEQUENCES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");

            fos = new FileOutputStream("setup.sql", true);
            fos.write(new String(Files.readAllBytes(Paths.get(fileName))).getBytes());
            fos.close();

            fos = new FileOutputStream(fileName, true);
            fos.write(contentBuilder.toString().getBytes());
            fos.close();
         }

         // Nutzungsplanung (Gemeinde)
         {
            model = "SO_ARP_Nutzungsplanung_Nachfuehrung_20201005";
            String schema = "arp_nutzungsplanung";
            String fileName = "edit_"+schema+".sql";

            config = new Config();
            new PgMain().initConfig(config);
            config.setFunction(Config.FC_SCRIPT);
            Config.setStrokeArcs(config, Config.STROKE_ARCS_ENABLE);
            config.setCreateFk(Config.CREATE_FK_YES);
            config.setCreateFkIdx(Config.CREATE_FKIDX_YES);
            config.setValue(Config.CREATE_GEOM_INDEX, Config.TRUE);
            config.setBasketHandling(Config.BASKET_HANDLING_READWRITE);
            config.setCreateDatasetCols(Config.CREATE_DATASET_COL);
            config.setNameOptimization(Config.NAME_OPTIMIZATION_TOPIC);
            config.setCreateEnumDefs(Config.CREATE_ENUM_DEFS_MULTI);
            config.setBeautifyEnumDispName(Config.BEAUTIFY_ENUM_DISPNAME_UNDERSCORE);
            config.setCreateUniqueConstraints(true);
            config.setCreateNumChecks(true);
            config.setMinIdSeqValue(1000000000000L);
            config.setDefaultSrsCode("2056");
            config.setDbschema(schema);
            config.setModels(model);
            config.setCreatescript(new File(fileName).getAbsolutePath());
            Ili2db.run(config, null);

            contentBuilder = new StringBuilder();
            contentBuilder.append("\n");
            contentBuilder.append("COMMENT ON SCHEMA "+schema+" IS 'Schema für den Datenumbau ins OEREB-Transferschema';");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");
            contentBuilder.append("\n");
            contentBuilder.append("GRANT USAGE ON ALL SEQUENCES IN SCHEMA "+schema+" TO "+PG_WRITE_USER+","+PG_GRETL_USER+";");

            fos = new FileOutputStream("setup.sql", true);
            fos.write(new String(Files.readAllBytes(Paths.get(fileName))).getBytes());
            fos.close();

            fos = new FileOutputStream(fileName, true);
            fos.write(contentBuilder.toString().getBytes());
            fos.close();
         }

    }
}
