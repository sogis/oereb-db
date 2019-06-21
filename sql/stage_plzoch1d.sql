CREATE SCHEMA IF NOT EXISTS stage_plzoch1d;
CREATE SEQUENCE stage_plzoch1d.t_ili2db_seq;;
-- PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich
CREATE TABLE stage_plzoch1d.nummerierngsbrche_nummerierungsbereich (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,kt varchar(255) NOT NULL
  ,nbnummer varchar(10) NOT NULL
  ,techdossier varchar(12) NOT NULL
  ,gueltigereintrag date NULL
)
;
CREATE INDEX nummrrngsbrchnmmrrngsbrich_t_basket_idx ON stage_plzoch1d.nummerierngsbrche_nummerierungsbereich ( t_basket );
CREATE INDEX nummrrngsbrchnmmrrngsbrich_t_datasetname_idx ON stage_plzoch1d.nummerierngsbrche_nummerierungsbereich ( t_datasetname );
-- PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrie
CREATE TABLE stage_plzoch1d.nummerierngsbrche_nbgeometrie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,nbgeometrie_von bigint NOT NULL
)
;
CREATE INDEX nummerierngsbrche_nbgmtrie_t_basket_idx ON stage_plzoch1d.nummerierngsbrche_nbgeometrie ( t_basket );
CREATE INDEX nummerierngsbrche_nbgmtrie_t_datasetname_idx ON stage_plzoch1d.nummerierngsbrche_nbgeometrie ( t_datasetname );
CREATE INDEX nummerierngsbrche_nbgmtrie_geometrie_idx ON stage_plzoch1d.nummerierngsbrche_nbgeometrie USING GIST ( geometrie );
CREATE INDEX nummerierngsbrche_nbgmtrie_nbgeometrie_von_idx ON stage_plzoch1d.nummerierngsbrche_nbgeometrie ( nbgeometrie_von );
-- PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos
CREATE TABLE stage_plzoch1d.nummerierngsbrche_nummerierungsbereichpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,nummerierungsbereichpos_von bigint NOT NULL
)
;
CREATE INDEX nummrrngsbrchmrrngsbrchpos_t_basket_idx ON stage_plzoch1d.nummerierngsbrche_nummerierungsbereichpos ( t_basket );
CREATE INDEX nummrrngsbrchmrrngsbrchpos_t_datasetname_idx ON stage_plzoch1d.nummerierngsbrche_nummerierungsbereichpos ( t_datasetname );
CREATE INDEX nummrrngsbrchmrrngsbrchpos_pos_idx ON stage_plzoch1d.nummerierngsbrche_nummerierungsbereichpos USING GIST ( pos );
CREATE INDEX nummrrngsbrchmrrngsbrchpos_nummerierungsbereichps_von_idx ON stage_plzoch1d.nummerierngsbrche_nummerierungsbereichpos ( nummerierungsbereichpos_von );
-- PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung
CREATE TABLE stage_plzoch1d.plzortschaft_osnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NOT NULL
)
;
CREATE INDEX plzortschaft_osnachfuhrung_t_basket_idx ON stage_plzoch1d.plzortschaft_osnachfuehrung ( t_basket );
CREATE INDEX plzortschaft_osnachfuhrung_t_datasetname_idx ON stage_plzoch1d.plzortschaft_osnachfuehrung ( t_datasetname );
CREATE INDEX plzortschaft_osnachfuhrung_perimeter_idx ON stage_plzoch1d.plzortschaft_osnachfuehrung USING GIST ( perimeter );
-- PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbund
CREATE TABLE stage_plzoch1d.plzortschaft_ortschaftsverbund (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,leer varchar(1) NULL
)
;
CREATE INDEX plzortschft_rtschftsvrbund_t_basket_idx ON stage_plzoch1d.plzortschaft_ortschaftsverbund ( t_basket );
CREATE INDEX plzortschft_rtschftsvrbund_t_datasetname_idx ON stage_plzoch1d.plzortschaft_ortschaftsverbund ( t_datasetname );
-- PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText
CREATE TABLE stage_plzoch1d.plzortschaft_ortschaftsverbundtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,atext varchar(200) NOT NULL
  ,sprache varchar(255) NOT NULL
  ,ortschaftsverbundtext_von bigint NOT NULL
)
;
CREATE INDEX plzrtschft_rthftsvrbndtext_t_basket_idx ON stage_plzoch1d.plzortschaft_ortschaftsverbundtext ( t_basket );
CREATE INDEX plzrtschft_rthftsvrbndtext_t_datasetname_idx ON stage_plzoch1d.plzortschaft_ortschaftsverbundtext ( t_datasetname );
CREATE INDEX plzrtschft_rthftsvrbndtext_ortschaftsverbundtext_von_idx ON stage_plzoch1d.plzortschaft_ortschaftsverbundtext ( ortschaftsverbundtext_von );
-- PLZOCH1LV95D.PLZOrtschaft.Ortschaft
CREATE TABLE stage_plzoch1d.plzortschaft_ortschaft (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,astatus varchar(255) NOT NULL
  ,inaenderung varchar(255) NOT NULL
  ,flaeche geometry(POLYGON,2056) NOT NULL
  ,entstehung bigint NOT NULL
  ,ortschaft_von bigint NULL
)
;
CREATE INDEX plzortschaft_ortschaft_t_basket_idx ON stage_plzoch1d.plzortschaft_ortschaft ( t_basket );
CREATE INDEX plzortschaft_ortschaft_t_datasetname_idx ON stage_plzoch1d.plzortschaft_ortschaft ( t_datasetname );
CREATE INDEX plzortschaft_ortschaft_flaeche_idx ON stage_plzoch1d.plzortschaft_ortschaft USING GIST ( flaeche );
CREATE INDEX plzortschaft_ortschaft_entstehung_idx ON stage_plzoch1d.plzortschaft_ortschaft ( entstehung );
CREATE INDEX plzortschaft_ortschaft_ortschaft_von_idx ON stage_plzoch1d.plzortschaft_ortschaft ( ortschaft_von );
-- PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName
CREATE TABLE stage_plzoch1d.plzortschaft_ortschaftsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,atext varchar(40) NOT NULL
  ,kurztext varchar(18) NULL
  ,indextext varchar(16) NULL
  ,sprache varchar(255) NOT NULL
  ,ortschaftsname_von bigint NOT NULL
)
;
CREATE INDEX plzortschaft_ortschftsname_t_basket_idx ON stage_plzoch1d.plzortschaft_ortschaftsname ( t_basket );
CREATE INDEX plzortschaft_ortschftsname_t_datasetname_idx ON stage_plzoch1d.plzortschaft_ortschaftsname ( t_datasetname );
CREATE INDEX plzortschaft_ortschftsname_ortschaftsname_von_idx ON stage_plzoch1d.plzortschaft_ortschaftsname ( ortschaftsname_von );
-- PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos
CREATE TABLE stage_plzoch1d.plzortschaft_ortschaftsname_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,ortschaftsname_pos_von bigint NOT NULL
)
;
CREATE INDEX plzortschft_rtschftsnm_pos_t_basket_idx ON stage_plzoch1d.plzortschaft_ortschaftsname_pos ( t_basket );
CREATE INDEX plzortschft_rtschftsnm_pos_t_datasetname_idx ON stage_plzoch1d.plzortschaft_ortschaftsname_pos ( t_datasetname );
CREATE INDEX plzortschft_rtschftsnm_pos_pos_idx ON stage_plzoch1d.plzortschaft_ortschaftsname_pos USING GIST ( pos );
CREATE INDEX plzortschft_rtschftsnm_pos_ortschaftsname_pos_von_idx ON stage_plzoch1d.plzortschaft_ortschaftsname_pos ( ortschaftsname_pos_von );
-- PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung
CREATE TABLE stage_plzoch1d.plzortschaft_plz6nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NOT NULL
)
;
CREATE INDEX plzortschaft_plz6nchfhrung_t_basket_idx ON stage_plzoch1d.plzortschaft_plz6nachfuehrung ( t_basket );
CREATE INDEX plzortschaft_plz6nchfhrung_t_datasetname_idx ON stage_plzoch1d.plzortschaft_plz6nachfuehrung ( t_datasetname );
CREATE INDEX plzortschaft_plz6nchfhrung_perimeter_idx ON stage_plzoch1d.plzortschaft_plz6nachfuehrung USING GIST ( perimeter );
-- PLZOCH1LV95D.PLZOrtschaft.PLZ6
CREATE TABLE stage_plzoch1d.plzortschaft_plz6 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('stage_plzoch1d.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,flaeche geometry(POLYGON,2056) NULL
  ,astatus varchar(255) NOT NULL
  ,inaenderung varchar(255) NOT NULL
  ,plz integer NOT NULL
  ,zusatzziffern integer NOT NULL
  ,entstehung bigint NOT NULL
  ,plz6_von bigint NOT NULL
)
;
CREATE INDEX plzortschaft_plz6_t_basket_idx ON stage_plzoch1d.plzortschaft_plz6 ( t_basket );
CREATE INDEX plzortschaft_plz6_t_datasetname_idx ON stage_plzoch1d.plzortschaft_plz6 ( t_datasetname );
CREATE INDEX plzortschaft_plz6_flaeche_idx ON stage_plzoch1d.plzortschaft_plz6 USING GIST ( flaeche );
CREATE INDEX plzortschaft_plz6_entstehung_idx ON stage_plzoch1d.plzortschaft_plz6 ( entstehung );
CREATE INDEX plzortschaft_plz6_plz6_von_idx ON stage_plzoch1d.plzortschaft_plz6 ( plz6_von );
CREATE TABLE stage_plzoch1d.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON stage_plzoch1d.t_ili2db_basket ( dataset );
CREATE TABLE stage_plzoch1d.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE stage_plzoch1d.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_dataset_idx ON stage_plzoch1d.t_ili2db_import ( dataset );
CREATE TABLE stage_plzoch1d.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,importrun bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_BASKET_importrun_idx ON stage_plzoch1d.t_ili2db_import_basket ( importrun );
CREATE INDEX T_ILI2DB_IMPORT_BASKET_basket_idx ON stage_plzoch1d.t_ili2db_import_basket ( basket );
CREATE TABLE stage_plzoch1d.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE stage_plzoch1d.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (iliversion,modelName)
)
;
CREATE TABLE stage_plzoch1d.valignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.astatus (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.nummerierngsbrche_kantonskuerzel (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.plzortschaft_ortschaft_inaenderung (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.schriftgroesse (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.sprachtyp (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.halignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.plzortschaft_plz6_inaenderung (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.status_ga (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE stage_plzoch1d.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE stage_plzoch1d.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (ColOwner,SqlName)
)
;
CREATE TABLE stage_plzoch1d.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE stage_plzoch1d.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE stage_plzoch1d.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE stage_plzoch1d.nummerierngsbrche_nummerierungsbereich ADD CONSTRAINT nummrrngsbrchnmmrrngsbrich_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.nummerierngsbrche_nbgeometrie ADD CONSTRAINT nummerierngsbrche_nbgmtrie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.nummerierngsbrche_nbgeometrie ADD CONSTRAINT nummerierngsbrche_nbgmtrie_nbgeometrie_von_fkey FOREIGN KEY ( nbgeometrie_von ) REFERENCES stage_plzoch1d.nummerierngsbrche_nummerierungsbereich DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.nummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT nummrrngsbrchmrrngsbrchpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.nummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT nummrrngsbrcmrrngsbrchpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE stage_plzoch1d.nummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT nummrrngsbrchmrrngsbrchpos_nummerierungsbereichps_von_fkey FOREIGN KEY ( nummerierungsbereichpos_von ) REFERENCES stage_plzoch1d.nummerierngsbrche_nummerierungsbereich DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX plzrtschnchfhrung_nbident_identifikator_key ON stage_plzoch1d.plzortschaft_osnachfuehrung (nbident,identifikator)
;
ALTER TABLE stage_plzoch1d.plzortschaft_osnachfuehrung ADD CONSTRAINT plzortschaft_osnachfuhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaftsverbund ADD CONSTRAINT plzortschft_rtschftsvrbund_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaftsverbundtext ADD CONSTRAINT plzrtschft_rthftsvrbndtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaftsverbundtext ADD CONSTRAINT plzrtschft_rthftsvrbndtext_ortschaftsverbundtext_von_fkey FOREIGN KEY ( ortschaftsverbundtext_von ) REFERENCES stage_plzoch1d.plzortschaft_ortschaftsverbund DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaft ADD CONSTRAINT plzortschaft_ortschaft_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaft ADD CONSTRAINT plzortschaft_ortschaft_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES stage_plzoch1d.plzortschaft_osnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaft ADD CONSTRAINT plzortschaft_ortschaft_ortschaft_von_fkey FOREIGN KEY ( ortschaft_von ) REFERENCES stage_plzoch1d.plzortschaft_ortschaftsverbund DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaftsname ADD CONSTRAINT plzortschaft_ortschftsname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaftsname ADD CONSTRAINT plzortschaft_ortschftsname_ortschaftsname_von_fkey FOREIGN KEY ( ortschaftsname_von ) REFERENCES stage_plzoch1d.plzortschaft_ortschaft DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaftsname_pos ADD CONSTRAINT plzortschft_rtschftsnm_pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaftsname_pos ADD CONSTRAINT plzrtschft_rtschftsnm_pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE stage_plzoch1d.plzortschaft_ortschaftsname_pos ADD CONSTRAINT plzortschft_rtschftsnm_pos_ortschaftsname_pos_von_fkey FOREIGN KEY ( ortschaftsname_pos_von ) REFERENCES stage_plzoch1d.plzortschaft_ortschaftsname DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX plzrtschnchfhrung_nbident_identifikator_key1 ON stage_plzoch1d.plzortschaft_plz6nachfuehrung (nbident,identifikator)
;
ALTER TABLE stage_plzoch1d.plzortschaft_plz6nachfuehrung ADD CONSTRAINT plzortschaft_plz6nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_plz6 ADD CONSTRAINT plzortschaft_plz6_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_plz6 ADD CONSTRAINT plzortschaft_plz6_plz_check CHECK( plz BETWEEN 1000 AND 9999);
ALTER TABLE stage_plzoch1d.plzortschaft_plz6 ADD CONSTRAINT plzortschaft_plz6_zusatzziffern_check CHECK( zusatzziffern BETWEEN 0 AND 99);
ALTER TABLE stage_plzoch1d.plzortschaft_plz6 ADD CONSTRAINT plzortschaft_plz6_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES stage_plzoch1d.plzortschaft_plz6nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.plzortschaft_plz6 ADD CONSTRAINT plzortschaft_plz6_plz6_von_fkey FOREIGN KEY ( plz6_von ) REFERENCES stage_plzoch1d.plzortschaft_ortschaft DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES stage_plzoch1d.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON stage_plzoch1d.T_ILI2DB_DATASET (datasetName)
;
ALTER TABLE stage_plzoch1d.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_importrun_fkey FOREIGN KEY ( importrun ) REFERENCES stage_plzoch1d.T_ILI2DB_IMPORT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE stage_plzoch1d.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_basket_fkey FOREIGN KEY ( basket ) REFERENCES stage_plzoch1d.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_iliversion_modelName_key ON stage_plzoch1d.T_ILI2DB_MODEL (iliversion,modelName)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_ColOwner_SqlName_key ON stage_plzoch1d.T_ILI2DB_ATTRNAME (ColOwner,SqlName)
;
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('INTERLIS.VALIGNMENT','valignment');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftEntstehung','plzortschaft_ortschaftentstehung');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von','plzortschaft_ortschaftsname_posortschaftsname_pos_von');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('INTERLIS.HALIGNMENT','halignment');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName','plzortschaft_ortschaftsname');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von','nummerierngsbrche_nbgeometrienbgeometrie_von');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftOrtschaft_von','plzortschaft_ortschaftortschaft_von');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von','nummerierngsbrche_nummerierungsbereichposnummrrngsbrchps_von');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Entstehung','plzortschaft_plz6entstehung');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6PLZ6_von','plzortschaft_plz6plz6_von');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Status','astatus');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos','plzortschaft_ortschaftsname_pos');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft.InAenderung','plzortschaft_ortschaft_inaenderung');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich','nummerierngsbrche_nummerierungsbereich');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von','plzortschaft_ortschaftsverbundtextortschaftsverbundtext_von');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.InAenderung','plzortschaft_plz6_inaenderung');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbund','plzortschaft_ortschaftsverbund');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung','plzortschaft_osnachfuehrung');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Schriftgroesse','schriftgroesse');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft','plzortschaft_ortschaft');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos','nummerierngsbrche_nummerierungsbereichpos');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText','plzortschaft_ortschaftsverbundtext');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung','plzortschaft_plz6nachfuehrung');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Sprachtyp','sprachtyp');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von','plzortschaft_ortschaftsnameortschaftsname_von');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Status_GA','status_ga');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Kantonskuerzel','nummerierngsbrche_kantonskuerzel');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6','plzortschaft_plz6');
INSERT INTO stage_plzoch1d.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrie','nummerierngsbrche_nbgeometrie');
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich.Kt','kt','nummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6PLZ6_von.PLZ6_von','plz6_von','plzortschaft_plz6','plzortschaft_ortschaft');
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.GueltigerEintrag','gueltigereintrag','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos.Pos','pos','plzortschaft_ortschaftsname_pos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftEntstehung.Entstehung','entstehung','plzortschaft_ortschaft','plzortschaft_osnachfuehrung');
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText.Sprache','sprache','plzortschaft_ortschaftsverbundtext',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich.GueltigerEintrag','gueltigereintrag','nummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.Flaeche','flaeche','plzortschaft_plz6',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von.OrtschaftsName_von','ortschaftsname_von','plzortschaft_ortschaftsname','plzortschaft_ortschaft');
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Entstehung.Entstehung','entstehung','plzortschaft_plz6','plzortschaft_plz6nachfuehrung');
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.PLZ','plz','plzortschaft_plz6',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Beschreibung','beschreibung','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos.VAli','vali','plzortschaft_ortschaftsname_pos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos.Ori','ori','plzortschaft_ortschaftsname_pos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName.KurzText','kurztext','plzortschaft_ortschaftsname',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos.Pos','pos','nummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Identifikator','identifikator','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos.VAli','vali','nummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName.Sprache','sprache','plzortschaft_ortschaftsname',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.Perimeter','perimeter','plzortschaft_osnachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos.HAli','hali','nummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.Zusatzziffern','zusatzziffern','plzortschaft_plz6',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.GueltigerEintrag','gueltigereintrag','plzortschaft_osnachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich.TechDossier','techdossier','nummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich.NBNummer','nbnummer','nummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName.IndexText','indextext','plzortschaft_ortschaftsname',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Gueltigkeit','gueltigkeit','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von.NBGeometrie_von','nbgeometrie_von','nummerierngsbrche_nbgeometrie','nummerierngsbrche_nummerierungsbereich');
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.NBIdent','nbident','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos.Ori','ori','nummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName.Text','atext','plzortschaft_ortschaftsname',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos.Groesse','groesse','plzortschaft_ortschaftsname_pos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft.Status','astatus','plzortschaft_ortschaft',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.InAenderung','inaenderung','plzortschaft_plz6',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft.InAenderung','inaenderung','plzortschaft_ortschaft',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.Beschreibung','beschreibung','plzortschaft_osnachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftOrtschaft_von.Ortschaft_von','ortschaft_von','plzortschaft_ortschaft','plzortschaft_ortschaftsverbund');
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft.Flaeche','flaeche','plzortschaft_ortschaft',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbund.Leer','leer','plzortschaft_ortschaftsverbund',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von.OrtschaftsName_Pos_von','ortschaftsname_pos_von','plzortschaft_ortschaftsname_pos','plzortschaft_ortschaftsname');
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrie.Geometrie','geometrie','nummerierngsbrche_nbgeometrie',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos.Groesse','groesse','nummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von.NummerierungsbereichPos_von','nummerierungsbereichpos_von','nummerierngsbrche_nummerierungsbereichpos','nummerierngsbrche_nummerierungsbereich');
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.Gueltigkeit','gueltigkeit','plzortschaft_osnachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von.OrtschaftsVerbundText_von','ortschaftsverbundtext_von','plzortschaft_ortschaftsverbundtext','plzortschaft_ortschaftsverbund');
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos.HAli','hali','plzortschaft_ortschaftsname_pos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.Status','astatus','plzortschaft_plz6',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.NBIdent','nbident','plzortschaft_osnachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.Identifikator','identifikator','plzortschaft_osnachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText.Text','atext','plzortschaft_ortschaftsverbundtext',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Perimeter','perimeter','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbund','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftOrtschaft_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO stage_plzoch1d.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6PLZ6_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Entstehung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbund',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftOrtschaft_von',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrie',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6PLZ6_von',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftEntstehung',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos',NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von',NULL);
INSERT INTO stage_plzoch1d.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (0,'Top',0,'Top',FALSE,NULL);
INSERT INTO stage_plzoch1d.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (1,'Cap',1,'Cap',FALSE,NULL);
INSERT INTO stage_plzoch1d.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (2,'Half',2,'Half',FALSE,NULL);
INSERT INTO stage_plzoch1d.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (3,'Base',3,'Base',FALSE,NULL);
INSERT INTO stage_plzoch1d.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (4,'Bottom',4,'Bottom',FALSE,NULL);
INSERT INTO stage_plzoch1d.astatus (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'projektiert',0,'projektiert',FALSE,NULL);
INSERT INTO stage_plzoch1d.astatus (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gueltig',1,'gueltig',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ZH',0,'ZH',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BE',1,'BE',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'LU',2,'LU',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'UR',3,'UR',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SZ',4,'SZ',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'OW',5,'OW',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'NW',6,'NW',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GL',7,'GL',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ZG',8,'ZG',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'FR',9,'FR',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SO',10,'SO',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BS',11,'BS',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BL',12,'BL',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SH',13,'SH',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AR',14,'AR',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AI',15,'AI',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SG',16,'SG',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GR',17,'GR',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AG',18,'AG',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TG',19,'TG',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TI',20,'TI',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'VD',21,'VD',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'VS',22,'VS',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'NE',23,'NE',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GE',24,'GE',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'JU',25,'JU',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'FL',26,'FL',FALSE,NULL);
INSERT INTO stage_plzoch1d.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'CH',27,'CH',FALSE,NULL);
INSERT INTO stage_plzoch1d.plzortschaft_ortschaft_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO stage_plzoch1d.plzortschaft_ortschaft_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO stage_plzoch1d.schriftgroesse (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'klein',0,'klein',FALSE,NULL);
INSERT INTO stage_plzoch1d.schriftgroesse (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mittel',1,'mittel',FALSE,NULL);
INSERT INTO stage_plzoch1d.schriftgroesse (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gross',2,'gross',FALSE,NULL);
INSERT INTO stage_plzoch1d.sprachtyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'de',0,'de',FALSE,NULL);
INSERT INTO stage_plzoch1d.sprachtyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fr',1,'fr',FALSE,NULL);
INSERT INTO stage_plzoch1d.sprachtyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'it',2,'it',FALSE,NULL);
INSERT INTO stage_plzoch1d.sprachtyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rm',3,'rm',FALSE,NULL);
INSERT INTO stage_plzoch1d.sprachtyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'en',4,'en',FALSE,NULL);
INSERT INTO stage_plzoch1d.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (0,'Left',0,'Left',FALSE,NULL);
INSERT INTO stage_plzoch1d.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (1,'Center',1,'Center',FALSE,NULL);
INSERT INTO stage_plzoch1d.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (2,'Right',2,'Right',FALSE,NULL);
INSERT INTO stage_plzoch1d.plzortschaft_plz6_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO stage_plzoch1d.plzortschaft_plz6_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO stage_plzoch1d.status_ga (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'projektiert',0,'projektiert',FALSE,NULL);
INSERT INTO stage_plzoch1d.status_ga (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'real',1,'real',FALSE,NULL);
INSERT INTO stage_plzoch1d.status_ga (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vergangen',2,'vergangen',FALSE,NULL);
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsverbundtext',NULL,'ortschaftsverbundtext_von','ch.ehi.ili2db.foreignKey','plzortschaft_ortschaftsverbund');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'nummerierungsbereichpos_von','ch.ehi.ili2db.foreignKey','nummerierngsbrche_nummerierungsbereich');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.coordDimension','2');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'ortschaftsname_pos_von','ch.ehi.ili2db.foreignKey','plzortschaft_ortschaftsname');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.srid','2056');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'nbgeometrie_von','ch.ehi.ili2db.foreignKey','nummerierngsbrche_nummerierungsbereich');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname',NULL,'ortschaftsname_von','ch.ehi.ili2db.foreignKey','plzortschaft_ortschaft');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'ortschaft_von','ch.ehi.ili2db.foreignKey','plzortschaft_ortschaftsverbund');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'entstehung','ch.ehi.ili2db.foreignKey','plzortschaft_plz6nachfuehrung');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.coordDimension','2');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'entstehung','ch.ehi.ili2db.foreignKey','plzortschaft_osnachfuehrung');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'plz6_von','ch.ehi.ili2db.foreignKey','plzortschaft_ortschaft');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.srid','2056');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO stage_plzoch1d.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO stage_plzoch1d.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('plzortschaft_ortschaft_inaenderung','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO stage_plzoch1d.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('valignment','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO stage_plzoch1d.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('schriftgroesse','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO stage_plzoch1d.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('sprachtyp','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO stage_plzoch1d.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('astatus','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO stage_plzoch1d.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('status_ga','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO stage_plzoch1d.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('halignment','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO stage_plzoch1d.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('plzortschaft_plz6_inaenderung','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO stage_plzoch1d.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('nummerierngsbrche_kantonskuerzel','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO stage_plzoch1d.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('PLZO-CH_LV95_1d_ili1.ili','1.0','PLZOCH1LV95D','
TRANSFER INTERLIS1;

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!! Datenmodell der PLZOrtschaften "Bund" (PLZO-CH-LV95)
!! beschrieben in INTERLIS Version 1 (SN 612030)
!! IDGeoIV = "181.1"
!!
!! Bundesamt fuer Landestopographie (swisstopo)
!! Eidg. Vermessungsdirektion (V+D)
!! CH-3084 Wabern
!! www.cadastre.ch/plz
!!
!! Version: 1 deutsch
!! Dateiname: PLZO-CH_LV95_1d_ili1.ili (Datum: 27. August 2012)
!!
!! Das vorliegende Datenmodell gilt fuer den Bezugsrahmen "Landesvermessung 1903+
!! (LV95)".
!!
!! Dieses Datenmodell basiert auf dem Datenmodell DM.01-AV-CH-24d enthält jedoch
!! nur das TOPIC PLZOrtschaft. In der Tabelle PLZ6 wurde der Identifikator
!! "IDENT PLZ, Zusatzziffern" entfernt, da es PLZ-Flaechen gibt, welche mehrere
!! Geometrien besitzen, so dass der Identifikator nicht eingehalten werden kann.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


MODEL PLZOCH1LV95D

  DOMAIN

    LKoord = COORD2 2480000.000   1070000.000
                    2850000.000  1310000.000;

    Status = (
      projektiert,
      gueltig);

    Rotation = GRADS 0.0 399.9;

    Schriftgroesse = (
      klein,
      mittel,
      gross);

    Status_GA = ( !! Fuer Gebaeudeadressen, siehe SN 612040
        projektiert,    !! neues Objekt, in Bearbeitung
                        !! Zustand zufaellig
        real,           !! Objekt existiert real
        vergangen);     !! Objekt existiert nicht mehr

      Sprachtyp = ( !! Fuer Gebaeudeadressen, siehe SN 612040
          de,  !! deutsch
          fr,  !! francais
          it,  !! italiano
          rm,  !! rumantsch
          en); !! english



 
  TOPIC Nummerierungsbereiche =

    DOMAIN
      Kantonskuerzel = (  !! BFS-Ordnung, ergaenzt mit FL und CH
        ZH, BE, LU, UR, SZ, OW, NW, GL, ZG, FR, SO, BS, BL, SH, 
        AR, AI, SG, GR, AG, TG, TI, VD, VS, NE, GE, JU, FL, CH);

    !! Der hier definierte Benutzerschluessel und die zugeordnete
    !! Flaeche koennen einem Gemeindegebiet entsprechen, einem Teil 
    !! oder einer Aggregation mehrerer Gemeindegebiete; dazu 
    !! kommen evtl. der Kanton und/oder die Schweiz (bzw. FL)
    !! als Ganzes (siehe Dokument Erlaeuterungen)
    TABLE Nummerierungsbereich =
      Kt: Kantonskuerzel;  !! Eindeutig ueber die Schweiz (inkl. FL)
      NBNummer: TEXT*10;
      TechDossier: TEXT*12;
      GueltigerEintrag: OPTIONAL DATE;
    IDENT Kt, NBNummer;  !! ergibt Benutzerschluessel NBIdent
    END Nummerierungsbereich;

    !! Die Geometrien der Nummerierungsbereiche, die das Territorium gemaess der
    !! gleichen logischen Einheit zerlegen (z.B.: Perimeter der Gemeinden), 
    !! muessen untereinander eine Gebietsaufteilung (AREA) bilden.
    !! Innerhalb eines Nummerierungsbereichs muss die 
    !! Geometrie ueberlappungsfrei (d.h. wie AREA) sein.
    TABLE NBGeometrie =
      NBGeometrie_von: -> Nummerierungsbereich;  !! Beziehung 1-m
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.050;
    NO IDENT
    END NBGeometrie;

    TABLE NummerierungsbereichPos =
      NummerierungsbereichPos_von: -> Nummerierungsbereich; !! Beziehung 1-mc;
                                !! beschriftet NBNummer
      Pos: LKoord // Pos innerhalb NBGeometrie //;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END NummerierungsbereichPos;

  END Nummerierungsbereiche.



 
  TOPIC PLZOrtschaft = !! siehe SN 612040;
                     !! Verantwortung der Kantone fuer Ortschaften
                     !! Verantwortung der Post fuer PLZ

    TABLE OSNachfuehrung = !! SN Norm = NachfuerbareSache
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
                         !! DM01: zusaetzlich zur SN
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
                               !! DM01: zusaetzlich zur SN
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.500; !! DM01: zusaetzlich zur SN
      Gueltigkeit: Status;
      GueltigerEintrag: DATE;
    IDENT NBIdent, Identifikator;
    END OSNachfuehrung;

    TABLE OrtschaftsVerbund = !! Norm SN 612040: OrtschaftsVerbund
      !! Dieses Attribut ist nur noetig, um eine gueltige Syntax
      !! im INTERLIS 1 zu haben
      Leer: OPTIONAL TEXT*1; 
    NO IDENT
    END OrtschaftsVerbund;

    TABLE OrtschaftsVerbundText=
        OrtschaftsVerbundText_von: -> OrtschaftsVerbund;  !! Beziehung 1-m
        Text: TEXT*200;
        Sprache: Sprachtyp; 
    IDENT OrtschaftsVerbundText_von, Sprache;
    END OrtschaftsVerbundText;

    !! Die realen Ortschaften bilden AREA
    TABLE Ortschaft = 
      Entstehung: -> OSNachfuehrung  ;  !! Beziehung 1-mc
      Ortschaft_von: OPTIONAL -> OrtschaftsVerbund; !!Beziehung c-m
      Status: Status_GA;
      InAenderung: (ja, nein);
      Flaeche: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.500;
    NO IDENT
    END Ortschaft;

    !! Beispiel fuer Text, KurzText und IndexText:
    !! Text (Vollstaendiger Name): La Chaux-de-Fonds
    !! KurzText (Schreibweise in der Postadresse): La Chx-de-Fds
    !! IndexText (Fuer Index): Chaux-de-Fonds
    TABLE OrtschaftsName =
        OrtschaftsName_von: -> Ortschaft; !! Beziehung 1-m 
        Text: TEXT*40;
        KurzText: OPTIONAL TEXT*18;
        IndexText: OPTIONAL TEXT*16;
        Sprache: Sprachtyp; 
    IDENT OrtschaftsName_von, Sprache;
    END OrtschaftsName;

    TABLE OrtschaftsName_Pos =  !! DM01: zusaetzlich zur SN
      OrtschaftsName_Pos_von: -> OrtschaftsName; !! Beziehung 1-mc;
                            !! beschriftet Texte
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END OrtschaftsName_Pos;

    TABLE PLZ6Nachfuehrung = !! SN Norm = NachfuerbareSache
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
                         !! DM01: zusaetzlich zur SN
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
                               !! DM01: zusaetzlich zur SN
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.500; !! DM01: zusaetzlich zur SN
      Gueltigkeit: Status;
      GueltigerEintrag: DATE;
    IDENT NBIdent, Identifikator;
    END PLZ6Nachfuehrung ;

    !! Eine reale PLZ6 auf eine nicht reale Ortschaft ist zu vermeiden.
    TABLE PLZ6 =
      Entstehung: -> PLZ6Nachfuehrung;  !! Beziehung 1-mc
      PLZ6_von: -> Ortschaft;  !! Beziehung 1-m
      !! Sind einer Ortschaft mehrere sechsstellige Postleitzahlen zugeordnet,
      !! muss fuer jede derselben eine Flaeche definiert sein, und alle diese 
      !! Flaechen muessen innerhalb der Flaeche der Ortschaft liegen.
      !! Die realen PLZ6 sind vom Typ AREA.
      Flaeche: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
            WITHOUT OVERLAPS > 0.500;
      Status: Status_GA;
      InAenderung: (ja, nein);
      PLZ: [1000 .. 9999];
      Zusatzziffern: [0 .. 99];
    NO IDENT
    END PLZ6;
   
  END PLZOrtschaft.

END PLZOCH1LV95D.



FORMAT FREE;
!! FORMAT FIX WITH LINESIZE = 107, TIDSIZE = 16;



CODE
  BLANK = DEFAULT, UNDEFINED = DEFAULT, CONTINUE = DEFAULT;
  TID = ANY;
END.

','2019-06-21 10:05:23.675');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.beautifyEnumDispName','underscore');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','topic');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.1.0-aa1d00a37ee431852bdee6b990f34b3620f9c1c1');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','%ILI_FROM_DB;%XTF_DIR;http://models.interlis.ch/;%JAR_DIR');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.importTabs','simple');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createDatasetCols','addDatasetCol');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.BasketHandling','readWrite');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createEnumDefs','multiTable');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO stage_plzoch1d.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
