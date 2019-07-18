#!/bin/bash

models_ili1="DM01AVSO24LV95;PLZOCH1LV95D"
models_ili2="OeREBKRM_V1_1;OeREBKRMtrsfr_V1_1;OeREBKRMvs_V1_1;SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822;OeREB_ExtractAnnex_V1_0"

for env in "stage" "live"; do
  java -jar ${ILI2PG_PATH} \
  --dbschema ${env} --models $models_ili1 \
  --strokeArcs --createFk --createFkIdx --createGeomIdx --createTidCol --createBasketCol --createTypeDiscriminator --createImportTabs --createMetaInfo --disableNameOptimization --defaultSrsCode 2056 --createNumChecks \
  --createscript "sql/${env}_ili1.sql"
  # the option --createUnique is omitted for these models as it's not suitable for DM01AVCH24LV95D, see https://github.com/sogis/oereb-db/issues/5, and it's not needed for PLZOCH1LV95D

  java -jar ${ILI2PG_PATH} \
  --dbschema ${env} --models $models_ili2 \
  --modeldir http://models.interlis.ch/\;. \
  --strokeArcs --createFk --createFkIdx --createGeomIdx --createTidCol --createBasketCol --createTypeDiscriminator --createImportTabs --createMetaInfo --disableNameOptimization --defaultSrsCode 2056 --createNumChecks \
  --createUnique \
  --createscript "sql/${env}_ili2.sql"
done

# Remove DDL and DML statements from the ili2 scripts that are duplicate to the ili1 scripts
# (by commenting them out or by adding "IF NOT EXISTS")
sed -i -E -e 's/CREATE SEQUENCE/-- CREATE SEQUENCE/' sql/*_ili2.sql
sed -i -E -e 's/CREATE TABLE (.*T_ILI2DB)/CREATE TABLE IF NOT EXISTS \1/' sql/*_ili2.sql
sed -i -E -e 's/(CREATE.*INDEX) (T_ILI2DB)/\1 IF NOT EXISTS \2/' sql/*_ili2.sql
sed -i -E -e 's/(ALTER TABLE .*T_ILI2DB.* ADD CONSTRAINT .* FOREIGN KEY)/-- \1/' sql/*_ili2.sql
sed -i -E -e 's/(INSERT INTO .*T_ILI2DB_SETTINGS)/-- \1/' sql/*_ili2.sql

# create temporary SQL file for oereb-wms views
./create_oereb-wms_views.sh > sql/oereb-wms-views.sql

# Append all SQL scripts to one single setup script
cat sql/setup_original.sql sql/set_role.sql sql/begin_transaction.sql \
sql/*_ili1.sql sql/*_ili2.sql \
sql/oereb-wms-views.sql \
sql/commit_transaction.sql > pgconf/setup.sql
