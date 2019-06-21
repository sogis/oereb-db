CREATE SCHEMA IF NOT EXISTS live_dm01avso24;
CREATE SEQUENCE live_dm01avso24.t_ili2db_seq;;
-- DM01AVSO24LV95.FixpunkteKategorie1.LFP1Nachfuehrung
CREATE TABLE live_dm01avso24.fixpunktekatgrie1_lfp1nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX fixpnktktgr1_lfp1nchfhrung_t_basket_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1nachfuehrung ( t_basket );
CREATE INDEX fixpnktktgr1_lfp1nchfhrung_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1nachfuehrung ( t_datasetname );
CREATE INDEX fixpnktktgr1_lfp1nchfhrung_perimeter_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1nachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.FixpunkteKategorie1.LFP1
CREATE TABLE live_dm01avso24.fixpunktekatgrie1_lfp1 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,hoehegeom decimal(7,3) NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,hoehegen decimal(4,1) NULL
  ,hoehezuv varchar(255) NULL
  ,begehbarkeit varchar(255) NOT NULL
  ,punktzeichen varchar(255) NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie1_lfp1_t_basket_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1 ( t_basket );
CREATE INDEX fixpunktekatgrie1_lfp1_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1 ( t_datasetname );
CREATE INDEX fixpunktekatgrie1_lfp1_geometrie_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1 USING GIST ( geometrie );
CREATE INDEX fixpunktekatgrie1_lfp1_entstehung_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1 ( entstehung );
-- DM01AVSO24LV95.FixpunkteKategorie1.LFP1Pos
CREATE TABLE live_dm01avso24.fixpunktekatgrie1_lfp1pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,lfp1pos_von bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie1_lfp1pos_t_basket_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1pos ( t_basket );
CREATE INDEX fixpunktekatgrie1_lfp1pos_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1pos ( t_datasetname );
CREATE INDEX fixpunktekatgrie1_lfp1pos_pos_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1pos USING GIST ( pos );
CREATE INDEX fixpunktekatgrie1_lfp1pos_lfp1pos_von_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1pos ( lfp1pos_von );
-- DM01AVSO24LV95.FixpunkteKategorie1.LFP1Symbol
CREATE TABLE live_dm01avso24.fixpunktekatgrie1_lfp1symbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ori decimal(4,1) NULL
  ,lfp1symbol_von bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgr1_lfp1symbol_t_basket_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1symbol ( t_basket );
CREATE INDEX fixpunktekatgr1_lfp1symbol_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1symbol ( t_datasetname );
CREATE INDEX fixpunktekatgr1_lfp1symbol_lfp1symbol_von_idx ON live_dm01avso24.fixpunktekatgrie1_lfp1symbol ( lfp1symbol_von );
-- DM01AVSO24LV95.FixpunkteKategorie1.HFP1Nachfuehrung
CREATE TABLE live_dm01avso24.fixpunktekatgrie1_hfp1nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX fixpnktktgr1_hfp1nchfhrung_t_basket_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1nachfuehrung ( t_basket );
CREATE INDEX fixpnktktgr1_hfp1nchfhrung_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1nachfuehrung ( t_datasetname );
CREATE INDEX fixpnktktgr1_hfp1nchfhrung_perimeter_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1nachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.FixpunkteKategorie1.HFP1
CREATE TABLE live_dm01avso24.fixpunktekatgrie1_hfp1 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,hoehegeom decimal(7,3) NOT NULL
  ,lagegen decimal(4,1) NULL
  ,lagezuv varchar(255) NULL
  ,hoehegen decimal(4,1) NOT NULL
  ,hoehezuv varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie1_hfp1_t_basket_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1 ( t_basket );
CREATE INDEX fixpunktekatgrie1_hfp1_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1 ( t_datasetname );
CREATE INDEX fixpunktekatgrie1_hfp1_geometrie_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1 USING GIST ( geometrie );
CREATE INDEX fixpunktekatgrie1_hfp1_entstehung_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1 ( entstehung );
-- DM01AVSO24LV95.FixpunkteKategorie1.HFP1Pos
CREATE TABLE live_dm01avso24.fixpunktekatgrie1_hfp1pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hfp1pos_von bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie1_hfp1pos_t_basket_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1pos ( t_basket );
CREATE INDEX fixpunktekatgrie1_hfp1pos_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1pos ( t_datasetname );
CREATE INDEX fixpunktekatgrie1_hfp1pos_pos_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1pos USING GIST ( pos );
CREATE INDEX fixpunktekatgrie1_hfp1pos_hfp1pos_von_idx ON live_dm01avso24.fixpunktekatgrie1_hfp1pos ( hfp1pos_von );
-- DM01AVSO24LV95.FixpunkteKategorie2.LFP2Nachfuehrung
CREATE TABLE live_dm01avso24.fixpunktekatgrie2_lfp2nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX fixpnktktgr2_lfp2nchfhrung_t_basket_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2nachfuehrung ( t_basket );
CREATE INDEX fixpnktktgr2_lfp2nchfhrung_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2nachfuehrung ( t_datasetname );
CREATE INDEX fixpnktktgr2_lfp2nchfhrung_perimeter_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2nachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.FixpunkteKategorie2.LFP2
CREATE TABLE live_dm01avso24.fixpunktekatgrie2_lfp2 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,hoehegeom decimal(7,3) NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,hoehegen decimal(4,1) NULL
  ,hoehezuv varchar(255) NULL
  ,begehbarkeit varchar(255) NOT NULL
  ,punktzeichen varchar(255) NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie2_lfp2_t_basket_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2 ( t_basket );
CREATE INDEX fixpunktekatgrie2_lfp2_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2 ( t_datasetname );
CREATE INDEX fixpunktekatgrie2_lfp2_geometrie_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2 USING GIST ( geometrie );
CREATE INDEX fixpunktekatgrie2_lfp2_entstehung_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2 ( entstehung );
-- DM01AVSO24LV95.FixpunkteKategorie2.LFP2Pos
CREATE TABLE live_dm01avso24.fixpunktekatgrie2_lfp2pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,lfp2pos_von bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie2_lfp2pos_t_basket_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2pos ( t_basket );
CREATE INDEX fixpunktekatgrie2_lfp2pos_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2pos ( t_datasetname );
CREATE INDEX fixpunktekatgrie2_lfp2pos_pos_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2pos USING GIST ( pos );
CREATE INDEX fixpunktekatgrie2_lfp2pos_lfp2pos_von_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2pos ( lfp2pos_von );
-- DM01AVSO24LV95.FixpunkteKategorie2.LFP2Symbol
CREATE TABLE live_dm01avso24.fixpunktekatgrie2_lfp2symbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ori decimal(4,1) NULL
  ,lfp2symbol_von bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgr2_lfp2symbol_t_basket_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2symbol ( t_basket );
CREATE INDEX fixpunktekatgr2_lfp2symbol_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2symbol ( t_datasetname );
CREATE INDEX fixpunktekatgr2_lfp2symbol_lfp2symbol_von_idx ON live_dm01avso24.fixpunktekatgrie2_lfp2symbol ( lfp2symbol_von );
-- DM01AVSO24LV95.FixpunkteKategorie2.HFP2Nachfuehrung
CREATE TABLE live_dm01avso24.fixpunktekatgrie2_hfp2nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX fixpnktktgr2_hfp2nchfhrung_t_basket_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2nachfuehrung ( t_basket );
CREATE INDEX fixpnktktgr2_hfp2nchfhrung_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2nachfuehrung ( t_datasetname );
CREATE INDEX fixpnktktgr2_hfp2nchfhrung_perimeter_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2nachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.FixpunkteKategorie2.HFP2
CREATE TABLE live_dm01avso24.fixpunktekatgrie2_hfp2 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,hoehegeom decimal(7,3) NOT NULL
  ,lagegen decimal(4,1) NULL
  ,lagezuv varchar(255) NULL
  ,hoehegen decimal(4,1) NOT NULL
  ,hoehezuv varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie2_hfp2_t_basket_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2 ( t_basket );
CREATE INDEX fixpunktekatgrie2_hfp2_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2 ( t_datasetname );
CREATE INDEX fixpunktekatgrie2_hfp2_geometrie_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2 USING GIST ( geometrie );
CREATE INDEX fixpunktekatgrie2_hfp2_entstehung_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2 ( entstehung );
-- DM01AVSO24LV95.FixpunkteKategorie2.HFP2Pos
CREATE TABLE live_dm01avso24.fixpunktekatgrie2_hfp2pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hfp2pos_von bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie2_hfp2pos_t_basket_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2pos ( t_basket );
CREATE INDEX fixpunktekatgrie2_hfp2pos_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2pos ( t_datasetname );
CREATE INDEX fixpunktekatgrie2_hfp2pos_pos_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2pos USING GIST ( pos );
CREATE INDEX fixpunktekatgrie2_hfp2pos_hfp2pos_von_idx ON live_dm01avso24.fixpunktekatgrie2_hfp2pos ( hfp2pos_von );
-- DM01AVSO24LV95.FixpunkteKategorie3.LFP3Nachfuehrung
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_lfp3nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX fixpnktktgr3_lfp3nchfhrung_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3nachfuehrung ( t_basket );
CREATE INDEX fixpnktktgr3_lfp3nchfhrung_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3nachfuehrung ( t_datasetname );
CREATE INDEX fixpnktktgr3_lfp3nchfhrung_perimeter_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3nachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.FixpunkteKategorie3.LFP3
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_lfp3 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,hoehegeom decimal(7,3) NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,hoehegen decimal(4,1) NULL
  ,hoehezuv varchar(255) NULL
  ,punktzeichen varchar(255) NOT NULL
  ,protokoll varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie3_lfp3_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3 ( t_basket );
CREATE INDEX fixpunktekatgrie3_lfp3_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3 ( t_datasetname );
CREATE INDEX fixpunktekatgrie3_lfp3_geometrie_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3 USING GIST ( geometrie );
CREATE INDEX fixpunktekatgrie3_lfp3_entstehung_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3 ( entstehung );
-- DM01AVSO24LV95.FixpunkteKategorie3.LFP3Pos
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_lfp3pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,lfp3pos_von bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie3_lfp3pos_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3pos ( t_basket );
CREATE INDEX fixpunktekatgrie3_lfp3pos_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3pos ( t_datasetname );
CREATE INDEX fixpunktekatgrie3_lfp3pos_pos_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3pos USING GIST ( pos );
CREATE INDEX fixpunktekatgrie3_lfp3pos_lfp3pos_von_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3pos ( lfp3pos_von );
-- DM01AVSO24LV95.FixpunkteKategorie3.LFP3Symbol
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_lfp3symbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ori decimal(4,1) NULL
  ,lfp3symbol_von bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgr3_lfp3symbol_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3symbol ( t_basket );
CREATE INDEX fixpunktekatgr3_lfp3symbol_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3symbol ( t_datasetname );
CREATE INDEX fixpunktekatgr3_lfp3symbol_lfp3symbol_von_idx ON live_dm01avso24.fixpunktekatgrie3_lfp3symbol ( lfp3symbol_von );
-- DM01AVSO24LV95.FixpunkteKategorie3.HilfsFPNachfuehrung
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfpnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX fixpnktktgr3_fsfpnchfhrung_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfpnachfuehrung ( t_basket );
CREATE INDEX fixpnktktgr3_fsfpnchfhrung_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfpnachfuehrung ( t_datasetname );
CREATE INDEX fixpnktktgr3_fsfpnchfhrung_perimeter_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfpnachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,hoehegeom decimal(7,3) NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,hoehegen decimal(4,1) NULL
  ,hoehezuv varchar(255) NULL
  ,punktzeichen varchar(255) NOT NULL
  ,protokoll varchar(255) NOT NULL
  ,entstehung bigint NULL
)
;
CREATE INDEX fixpunktekatgr3_hlfsfxpnkt_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt ( t_basket );
CREATE INDEX fixpunktekatgr3_hlfsfxpnkt_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt ( t_datasetname );
CREATE INDEX fixpunktekatgr3_hlfsfxpnkt_geometrie_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt USING GIST ( geometrie );
CREATE INDEX fixpunktekatgr3_hlfsfxpnkt_entstehung_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt ( entstehung );
-- DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPos
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hilfsfixpunktpos_von bigint NOT NULL
)
;
CREATE INDEX fixpnktktgr3_hlfsfxpnktpos_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktpos ( t_basket );
CREATE INDEX fixpnktktgr3_hlfsfxpnktpos_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktpos ( t_datasetname );
CREATE INDEX fixpnktktgr3_hlfsfxpnktpos_pos_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktpos USING GIST ( pos );
CREATE INDEX fixpnktktgr3_hlfsfxpnktpos_hilfsfixpunktpos_von_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktpos ( hilfsfixpunktpos_von );
-- DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktSymbol
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ori decimal(4,1) NULL
  ,hilfsfixpunktsymbol_von bigint NOT NULL
)
;
CREATE INDEX fixpnktktgr3_sfxpnktsymbol_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktsymbol ( t_basket );
CREATE INDEX fixpnktktgr3_sfxpnktsymbol_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktsymbol ( t_datasetname );
CREATE INDEX fixpnktktgr3_sfxpnktsymbol_hilfsfixpunktsymbol_von_idx ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktsymbol ( hilfsfixpunktsymbol_von );
-- DM01AVSO24LV95.FixpunkteKategorie3.HFP3Nachfuehrung
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_hfp3nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX fixpnktktgr3_hfp3nchfhrung_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3nachfuehrung ( t_basket );
CREATE INDEX fixpnktktgr3_hfp3nchfhrung_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3nachfuehrung ( t_datasetname );
CREATE INDEX fixpnktktgr3_hfp3nchfhrung_perimeter_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3nachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.FixpunkteKategorie3.HFP3
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_hfp3 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,hoehegeom decimal(7,3) NOT NULL
  ,lagegen decimal(4,1) NULL
  ,lagezuv varchar(255) NULL
  ,hoehegen decimal(4,1) NOT NULL
  ,hoehezuv varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie3_hfp3_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3 ( t_basket );
CREATE INDEX fixpunktekatgrie3_hfp3_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3 ( t_datasetname );
CREATE INDEX fixpunktekatgrie3_hfp3_geometrie_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3 USING GIST ( geometrie );
CREATE INDEX fixpunktekatgrie3_hfp3_entstehung_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3 ( entstehung );
-- DM01AVSO24LV95.FixpunkteKategorie3.HFP3Pos
CREATE TABLE live_dm01avso24.fixpunktekatgrie3_hfp3pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hfp3pos_von bigint NOT NULL
)
;
CREATE INDEX fixpunktekatgrie3_hfp3pos_t_basket_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3pos ( t_basket );
CREATE INDEX fixpunktekatgrie3_hfp3pos_t_datasetname_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3pos ( t_datasetname );
CREATE INDEX fixpunktekatgrie3_hfp3pos_pos_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3pos USING GIST ( pos );
CREATE INDEX fixpunktekatgrie3_hfp3pos_hfp3pos_von_idx ON live_dm01avso24.fixpunktekatgrie3_hfp3pos ( hfp3pos_von );
-- DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung
CREATE TABLE live_dm01avso24.bodenbedeckung_bbnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX bodenbedeckung_bbnchfhrung_t_basket_idx ON live_dm01avso24.bodenbedeckung_bbnachfuehrung ( t_basket );
CREATE INDEX bodenbedeckung_bbnchfhrung_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_bbnachfuehrung ( t_datasetname );
CREATE INDEX bodenbedeckung_bbnchfhrung_perimeter_idx ON live_dm01avso24.bodenbedeckung_bbnachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaeche
CREATE TABLE live_dm01avso24.bodenbedeckung_projboflaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX bodenbedeckung_projboflche_t_basket_idx ON live_dm01avso24.bodenbedeckung_projboflaeche ( t_basket );
CREATE INDEX bodenbedeckung_projboflche_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_projboflaeche ( t_datasetname );
CREATE INDEX bodenbedeckung_projboflche_geometrie_idx ON live_dm01avso24.bodenbedeckung_projboflaeche USING GIST ( geometrie );
CREATE INDEX bodenbedeckung_projboflche_entstehung_idx ON live_dm01avso24.bodenbedeckung_projboflaeche ( entstehung );
-- DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummer
CREATE TABLE live_dm01avso24.bodenbedeckung_projgebaeudenummer (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,gwr_egid integer NULL
  ,projgebaeudenummer_von bigint NOT NULL
)
;
CREATE INDEX bodenbedeckung_prjgbdnmmer_t_basket_idx ON live_dm01avso24.bodenbedeckung_projgebaeudenummer ( t_basket );
CREATE INDEX bodenbedeckung_prjgbdnmmer_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_projgebaeudenummer ( t_datasetname );
CREATE INDEX bodenbedeckung_prjgbdnmmer_projgebaeudenummer_von_idx ON live_dm01avso24.bodenbedeckung_projgebaeudenummer ( projgebaeudenummer_von );
-- DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPos
CREATE TABLE live_dm01avso24.bodenbedeckung_projgebaeudenummerpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,projgebaeudenummerpos_von bigint NOT NULL
)
;
CREATE INDEX bodenbedckng_prjgbdnmmrpos_t_basket_idx ON live_dm01avso24.bodenbedeckung_projgebaeudenummerpos ( t_basket );
CREATE INDEX bodenbedckng_prjgbdnmmrpos_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_projgebaeudenummerpos ( t_datasetname );
CREATE INDEX bodenbedckng_prjgbdnmmrpos_pos_idx ON live_dm01avso24.bodenbedeckung_projgebaeudenummerpos USING GIST ( pos );
CREATE INDEX bodenbedckng_prjgbdnmmrpos_projgebaeudenummerpos_von_idx ON live_dm01avso24.bodenbedeckung_projgebaeudenummerpos ( projgebaeudenummerpos_von );
-- DM01AVSO24LV95.Bodenbedeckung.ProjObjektname
CREATE TABLE live_dm01avso24.bodenbedeckung_projobjektname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,aname varchar(30) NOT NULL
  ,projobjektname_von bigint NOT NULL
)
;
CREATE INDEX bodenbedeckung_prjbjktname_t_basket_idx ON live_dm01avso24.bodenbedeckung_projobjektname ( t_basket );
CREATE INDEX bodenbedeckung_prjbjktname_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_projobjektname ( t_datasetname );
CREATE INDEX bodenbedeckung_prjbjktname_projobjektname_von_idx ON live_dm01avso24.bodenbedeckung_projobjektname ( projobjektname_von );
-- DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePos
CREATE TABLE live_dm01avso24.bodenbedeckung_projobjektnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,projobjektnamepos_von bigint NOT NULL
)
;
CREATE INDEX bodenbedeckng_prjbjktnmpos_t_basket_idx ON live_dm01avso24.bodenbedeckung_projobjektnamepos ( t_basket );
CREATE INDEX bodenbedeckng_prjbjktnmpos_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_projobjektnamepos ( t_datasetname );
CREATE INDEX bodenbedeckng_prjbjktnmpos_pos_idx ON live_dm01avso24.bodenbedeckung_projobjektnamepos USING GIST ( pos );
CREATE INDEX bodenbedeckng_prjbjktnmpos_projobjektnamepos_von_idx ON live_dm01avso24.bodenbedeckung_projobjektnamepos ( projobjektnamepos_von );
-- DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheSymbol
CREATE TABLE live_dm01avso24.bodenbedeckung_projboflaechesymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,projboflaechesymbol_von bigint NOT NULL
)
;
CREATE INDEX bodenbdckng_prjbflchsymbol_t_basket_idx ON live_dm01avso24.bodenbedeckung_projboflaechesymbol ( t_basket );
CREATE INDEX bodenbdckng_prjbflchsymbol_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_projboflaechesymbol ( t_datasetname );
CREATE INDEX bodenbdckng_prjbflchsymbol_pos_idx ON live_dm01avso24.bodenbedeckung_projboflaechesymbol USING GIST ( pos );
CREATE INDEX bodenbdckng_prjbflchsymbol_projboflaechesymbol_von_idx ON live_dm01avso24.bodenbedeckung_projboflaechesymbol ( projboflaechesymbol_von );
-- DM01AVSO24LV95.Bodenbedeckung.BoFlaeche
CREATE TABLE live_dm01avso24.bodenbedeckung_boflaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX bodenbedeckung_boflaeche_t_basket_idx ON live_dm01avso24.bodenbedeckung_boflaeche ( t_basket );
CREATE INDEX bodenbedeckung_boflaeche_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_boflaeche ( t_datasetname );
CREATE INDEX bodenbedeckung_boflaeche_geometrie_idx ON live_dm01avso24.bodenbedeckung_boflaeche USING GIST ( geometrie );
CREATE INDEX bodenbedeckung_boflaeche_entstehung_idx ON live_dm01avso24.bodenbedeckung_boflaeche ( entstehung );
-- DM01AVSO24LV95.Bodenbedeckung.Gebaeudenummer
CREATE TABLE live_dm01avso24.bodenbedeckung_gebaeudenummer (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,gwr_egid integer NULL
  ,gebaeudenummer_von bigint NOT NULL
)
;
CREATE INDEX bodenbedeckung_gebaednmmer_t_basket_idx ON live_dm01avso24.bodenbedeckung_gebaeudenummer ( t_basket );
CREATE INDEX bodenbedeckung_gebaednmmer_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_gebaeudenummer ( t_datasetname );
CREATE INDEX bodenbedeckung_gebaednmmer_gebaeudenummer_von_idx ON live_dm01avso24.bodenbedeckung_gebaeudenummer ( gebaeudenummer_von );
-- DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPos
CREATE TABLE live_dm01avso24.bodenbedeckung_gebaeudenummerpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,gebaeudenummerpos_von bigint NOT NULL
)
;
CREATE INDEX bodenbedeckung_gebdnmmrpos_t_basket_idx ON live_dm01avso24.bodenbedeckung_gebaeudenummerpos ( t_basket );
CREATE INDEX bodenbedeckung_gebdnmmrpos_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_gebaeudenummerpos ( t_datasetname );
CREATE INDEX bodenbedeckung_gebdnmmrpos_pos_idx ON live_dm01avso24.bodenbedeckung_gebaeudenummerpos USING GIST ( pos );
CREATE INDEX bodenbedeckung_gebdnmmrpos_gebaeudenummerpos_von_idx ON live_dm01avso24.bodenbedeckung_gebaeudenummerpos ( gebaeudenummerpos_von );
-- DM01AVSO24LV95.Bodenbedeckung.Objektname
CREATE TABLE live_dm01avso24.bodenbedeckung_objektname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,aname varchar(30) NOT NULL
  ,objektname_von bigint NOT NULL
)
;
CREATE INDEX bodenbedeckung_objektname_t_basket_idx ON live_dm01avso24.bodenbedeckung_objektname ( t_basket );
CREATE INDEX bodenbedeckung_objektname_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_objektname ( t_datasetname );
CREATE INDEX bodenbedeckung_objektname_objektname_von_idx ON live_dm01avso24.bodenbedeckung_objektname ( objektname_von );
-- DM01AVSO24LV95.Bodenbedeckung.ObjektnamePos
CREATE TABLE live_dm01avso24.bodenbedeckung_objektnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,objektnamepos_von bigint NOT NULL
)
;
CREATE INDEX bodenbedeckung_objektnmpos_t_basket_idx ON live_dm01avso24.bodenbedeckung_objektnamepos ( t_basket );
CREATE INDEX bodenbedeckung_objektnmpos_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_objektnamepos ( t_datasetname );
CREATE INDEX bodenbedeckung_objektnmpos_pos_idx ON live_dm01avso24.bodenbedeckung_objektnamepos USING GIST ( pos );
CREATE INDEX bodenbedeckung_objektnmpos_objektnamepos_von_idx ON live_dm01avso24.bodenbedeckung_objektnamepos ( objektnamepos_von );
-- DM01AVSO24LV95.Bodenbedeckung.BoFlaecheSymbol
CREATE TABLE live_dm01avso24.bodenbedeckung_boflaechesymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,boflaechesymbol_von bigint NOT NULL
)
;
CREATE INDEX bodenbedeckung_bflchsymbol_t_basket_idx ON live_dm01avso24.bodenbedeckung_boflaechesymbol ( t_basket );
CREATE INDEX bodenbedeckung_bflchsymbol_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_boflaechesymbol ( t_datasetname );
CREATE INDEX bodenbedeckung_bflchsymbol_pos_idx ON live_dm01avso24.bodenbedeckung_boflaechesymbol USING GIST ( pos );
CREATE INDEX bodenbedeckung_bflchsymbol_boflaechesymbol_von_idx ON live_dm01avso24.bodenbedeckung_boflaechesymbol ( boflaechesymbol_von );
-- DM01AVSO24LV95.Bodenbedeckung.Einzelpunkt
CREATE TABLE live_dm01avso24.bodenbedeckung_einzelpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,identifikator varchar(12) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,exaktdefiniert varchar(255) NOT NULL
  ,entstehung bigint NULL
)
;
CREATE INDEX bodenbedeckung_einzelpunkt_t_basket_idx ON live_dm01avso24.bodenbedeckung_einzelpunkt ( t_basket );
CREATE INDEX bodenbedeckung_einzelpunkt_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_einzelpunkt ( t_datasetname );
CREATE INDEX bodenbedeckung_einzelpunkt_geometrie_idx ON live_dm01avso24.bodenbedeckung_einzelpunkt USING GIST ( geometrie );
CREATE INDEX bodenbedeckung_einzelpunkt_entstehung_idx ON live_dm01avso24.bodenbedeckung_einzelpunkt ( entstehung );
-- DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPos
CREATE TABLE live_dm01avso24.bodenbedeckung_einzelpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,einzelpunktpos_von bigint NOT NULL
)
;
CREATE INDEX bodenbedeckung_enzlpnktpos_t_basket_idx ON live_dm01avso24.bodenbedeckung_einzelpunktpos ( t_basket );
CREATE INDEX bodenbedeckung_enzlpnktpos_t_datasetname_idx ON live_dm01avso24.bodenbedeckung_einzelpunktpos ( t_datasetname );
CREATE INDEX bodenbedeckung_enzlpnktpos_pos_idx ON live_dm01avso24.bodenbedeckung_einzelpunktpos USING GIST ( pos );
CREATE INDEX bodenbedeckung_enzlpnktpos_einzelpunktpos_von_idx ON live_dm01avso24.bodenbedeckung_einzelpunktpos ( einzelpunktpos_von );
-- DM01AVSO24LV95.Einzelobjekte.EONachfuehrung
CREATE TABLE live_dm01avso24.einzelobjekte_eonachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX einzelobjekte_eonachfhrung_t_basket_idx ON live_dm01avso24.einzelobjekte_eonachfuehrung ( t_basket );
CREATE INDEX einzelobjekte_eonachfhrung_t_datasetname_idx ON live_dm01avso24.einzelobjekte_eonachfuehrung ( t_datasetname );
CREATE INDEX einzelobjekte_eonachfhrung_perimeter_idx ON live_dm01avso24.einzelobjekte_eonachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.Einzelobjekte.Einzelobjekt
CREATE TABLE live_dm01avso24.einzelobjekte_einzelobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX einzelobjekte_einzelobjekt_t_basket_idx ON live_dm01avso24.einzelobjekte_einzelobjekt ( t_basket );
CREATE INDEX einzelobjekte_einzelobjekt_t_datasetname_idx ON live_dm01avso24.einzelobjekte_einzelobjekt ( t_datasetname );
CREATE INDEX einzelobjekte_einzelobjekt_entstehung_idx ON live_dm01avso24.einzelobjekte_einzelobjekt ( entstehung );
-- DM01AVSO24LV95.Einzelobjekte.Flaechenelement
CREATE TABLE live_dm01avso24.einzelobjekte_flaechenelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenelement_von bigint NOT NULL
)
;
CREATE INDEX einzelobjekte_flaechnlment_t_basket_idx ON live_dm01avso24.einzelobjekte_flaechenelement ( t_basket );
CREATE INDEX einzelobjekte_flaechnlment_t_datasetname_idx ON live_dm01avso24.einzelobjekte_flaechenelement ( t_datasetname );
CREATE INDEX einzelobjekte_flaechnlment_geometrie_idx ON live_dm01avso24.einzelobjekte_flaechenelement USING GIST ( geometrie );
CREATE INDEX einzelobjekte_flaechnlment_flaechenelement_von_idx ON live_dm01avso24.einzelobjekte_flaechenelement ( flaechenelement_von );
-- DM01AVSO24LV95.Einzelobjekte.FlaechenelementSymbol
CREATE TABLE live_dm01avso24.einzelobjekte_flaechenelementsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,flaechenelementsymbol_von bigint NOT NULL
)
;
CREATE INDEX einzelbjkt_flchnlmntsymbol_t_basket_idx ON live_dm01avso24.einzelobjekte_flaechenelementsymbol ( t_basket );
CREATE INDEX einzelbjkt_flchnlmntsymbol_t_datasetname_idx ON live_dm01avso24.einzelobjekte_flaechenelementsymbol ( t_datasetname );
CREATE INDEX einzelbjkt_flchnlmntsymbol_pos_idx ON live_dm01avso24.einzelobjekte_flaechenelementsymbol USING GIST ( pos );
CREATE INDEX einzelbjkt_flchnlmntsymbol_flaechenelementsymbol_von_idx ON live_dm01avso24.einzelobjekte_flaechenelementsymbol ( flaechenelementsymbol_von );
-- DM01AVSO24LV95.Einzelobjekte.Linienelement
CREATE TABLE live_dm01avso24.einzelobjekte_linienelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,linienelement_von bigint NOT NULL
)
;
CREATE INDEX einzelobjekte_linienelment_t_basket_idx ON live_dm01avso24.einzelobjekte_linienelement ( t_basket );
CREATE INDEX einzelobjekte_linienelment_t_datasetname_idx ON live_dm01avso24.einzelobjekte_linienelement ( t_datasetname );
CREATE INDEX einzelobjekte_linienelment_geometrie_idx ON live_dm01avso24.einzelobjekte_linienelement USING GIST ( geometrie );
CREATE INDEX einzelobjekte_linienelment_linienelement_von_idx ON live_dm01avso24.einzelobjekte_linienelement ( linienelement_von );
-- DM01AVSO24LV95.Einzelobjekte.LinienelementSymbol
CREATE TABLE live_dm01avso24.einzelobjekte_linienelementsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,linienelementsymbol_von bigint NOT NULL
)
;
CREATE INDEX einzelobjekt_lnnlmntsymbol_t_basket_idx ON live_dm01avso24.einzelobjekte_linienelementsymbol ( t_basket );
CREATE INDEX einzelobjekt_lnnlmntsymbol_t_datasetname_idx ON live_dm01avso24.einzelobjekte_linienelementsymbol ( t_datasetname );
CREATE INDEX einzelobjekt_lnnlmntsymbol_pos_idx ON live_dm01avso24.einzelobjekte_linienelementsymbol USING GIST ( pos );
CREATE INDEX einzelobjekt_lnnlmntsymbol_linienelementsymbol_von_idx ON live_dm01avso24.einzelobjekte_linienelementsymbol ( linienelementsymbol_von );
-- DM01AVSO24LV95.Einzelobjekte.Punktelement
CREATE TABLE live_dm01avso24.einzelobjekte_punktelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,punktelement_von bigint NOT NULL
)
;
CREATE INDEX einzelobjekte_punktelement_t_basket_idx ON live_dm01avso24.einzelobjekte_punktelement ( t_basket );
CREATE INDEX einzelobjekte_punktelement_t_datasetname_idx ON live_dm01avso24.einzelobjekte_punktelement ( t_datasetname );
CREATE INDEX einzelobjekte_punktelement_geometrie_idx ON live_dm01avso24.einzelobjekte_punktelement USING GIST ( geometrie );
CREATE INDEX einzelobjekte_punktelement_punktelement_von_idx ON live_dm01avso24.einzelobjekte_punktelement ( punktelement_von );
-- DM01AVSO24LV95.Einzelobjekte.Objektname
CREATE TABLE live_dm01avso24.einzelobjekte_objektname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,aname varchar(30) NOT NULL
  ,objektname_von bigint NOT NULL
)
;
CREATE INDEX einzelobjekte_objektname_t_basket_idx ON live_dm01avso24.einzelobjekte_objektname ( t_basket );
CREATE INDEX einzelobjekte_objektname_t_datasetname_idx ON live_dm01avso24.einzelobjekte_objektname ( t_datasetname );
CREATE INDEX einzelobjekte_objektname_objektname_von_idx ON live_dm01avso24.einzelobjekte_objektname ( objektname_von );
-- DM01AVSO24LV95.Einzelobjekte.ObjektnamePos
CREATE TABLE live_dm01avso24.einzelobjekte_objektnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,objektnamepos_von bigint NOT NULL
)
;
CREATE INDEX einzelobjekte_objektnampos_t_basket_idx ON live_dm01avso24.einzelobjekte_objektnamepos ( t_basket );
CREATE INDEX einzelobjekte_objektnampos_t_datasetname_idx ON live_dm01avso24.einzelobjekte_objektnamepos ( t_datasetname );
CREATE INDEX einzelobjekte_objektnampos_pos_idx ON live_dm01avso24.einzelobjekte_objektnamepos USING GIST ( pos );
CREATE INDEX einzelobjekte_objektnampos_objektnamepos_von_idx ON live_dm01avso24.einzelobjekte_objektnamepos ( objektnamepos_von );
-- DM01AVSO24LV95.Einzelobjekte.Objektnummer
CREATE TABLE live_dm01avso24.einzelobjekte_objektnummer (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,gwr_egid integer NULL
  ,objektnummer_von bigint NOT NULL
)
;
CREATE INDEX einzelobjekte_objektnummer_t_basket_idx ON live_dm01avso24.einzelobjekte_objektnummer ( t_basket );
CREATE INDEX einzelobjekte_objektnummer_t_datasetname_idx ON live_dm01avso24.einzelobjekte_objektnummer ( t_datasetname );
CREATE INDEX einzelobjekte_objektnummer_objektnummer_von_idx ON live_dm01avso24.einzelobjekte_objektnummer ( objektnummer_von );
-- DM01AVSO24LV95.Einzelobjekte.ObjektnummerPos
CREATE TABLE live_dm01avso24.einzelobjekte_objektnummerpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,objektnummerpos_von bigint NOT NULL
)
;
CREATE INDEX einzelobjekte_objktnmmrpos_t_basket_idx ON live_dm01avso24.einzelobjekte_objektnummerpos ( t_basket );
CREATE INDEX einzelobjekte_objktnmmrpos_t_datasetname_idx ON live_dm01avso24.einzelobjekte_objektnummerpos ( t_datasetname );
CREATE INDEX einzelobjekte_objktnmmrpos_pos_idx ON live_dm01avso24.einzelobjekte_objektnummerpos USING GIST ( pos );
CREATE INDEX einzelobjekte_objktnmmrpos_objektnummerpos_von_idx ON live_dm01avso24.einzelobjekte_objektnummerpos ( objektnummerpos_von );
-- DM01AVSO24LV95.Einzelobjekte.Einzelpunkt
CREATE TABLE live_dm01avso24.einzelobjekte_einzelpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,identifikator varchar(12) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,exaktdefiniert varchar(255) NOT NULL
  ,entstehung bigint NULL
)
;
CREATE INDEX einzelobjekte_einzelpunkt_t_basket_idx ON live_dm01avso24.einzelobjekte_einzelpunkt ( t_basket );
CREATE INDEX einzelobjekte_einzelpunkt_t_datasetname_idx ON live_dm01avso24.einzelobjekte_einzelpunkt ( t_datasetname );
CREATE INDEX einzelobjekte_einzelpunkt_geometrie_idx ON live_dm01avso24.einzelobjekte_einzelpunkt USING GIST ( geometrie );
CREATE INDEX einzelobjekte_einzelpunkt_entstehung_idx ON live_dm01avso24.einzelobjekte_einzelpunkt ( entstehung );
-- DM01AVSO24LV95.Einzelobjekte.EinzelpunktPos
CREATE TABLE live_dm01avso24.einzelobjekte_einzelpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,einzelpunktpos_von bigint NOT NULL
)
;
CREATE INDEX einzelobjekte_einzlpnktpos_t_basket_idx ON live_dm01avso24.einzelobjekte_einzelpunktpos ( t_basket );
CREATE INDEX einzelobjekte_einzlpnktpos_t_datasetname_idx ON live_dm01avso24.einzelobjekte_einzelpunktpos ( t_datasetname );
CREATE INDEX einzelobjekte_einzlpnktpos_pos_idx ON live_dm01avso24.einzelobjekte_einzelpunktpos USING GIST ( pos );
CREATE INDEX einzelobjekte_einzlpnktpos_einzelpunktpos_von_idx ON live_dm01avso24.einzelobjekte_einzelpunktpos ( einzelpunktpos_von );
-- DM01AVSO24LV95.Hoehen.HONachfuehrung
CREATE TABLE live_dm01avso24.hoehen_honachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX hoehen_honachfuehrung_t_basket_idx ON live_dm01avso24.hoehen_honachfuehrung ( t_basket );
CREATE INDEX hoehen_honachfuehrung_t_datasetname_idx ON live_dm01avso24.hoehen_honachfuehrung ( t_datasetname );
CREATE INDEX hoehen_honachfuehrung_perimeter_idx ON live_dm01avso24.hoehen_honachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.Hoehen.Hoehenpunkt
CREATE TABLE live_dm01avso24.hoehen_hoehenpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POINTZ,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX hoehen_hoehenpunkt_t_basket_idx ON live_dm01avso24.hoehen_hoehenpunkt ( t_basket );
CREATE INDEX hoehen_hoehenpunkt_t_datasetname_idx ON live_dm01avso24.hoehen_hoehenpunkt ( t_datasetname );
CREATE INDEX hoehen_hoehenpunkt_geometrie_idx ON live_dm01avso24.hoehen_hoehenpunkt USING GIST ( geometrie );
CREATE INDEX hoehen_hoehenpunkt_entstehung_idx ON live_dm01avso24.hoehen_hoehenpunkt ( entstehung );
-- DM01AVSO24LV95.Hoehen.HoehenpunktPos
CREATE TABLE live_dm01avso24.hoehen_hoehenpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hoehenpunktpos_von bigint NOT NULL
)
;
CREATE INDEX hoehen_hoehenpunktpos_t_basket_idx ON live_dm01avso24.hoehen_hoehenpunktpos ( t_basket );
CREATE INDEX hoehen_hoehenpunktpos_t_datasetname_idx ON live_dm01avso24.hoehen_hoehenpunktpos ( t_datasetname );
CREATE INDEX hoehen_hoehenpunktpos_pos_idx ON live_dm01avso24.hoehen_hoehenpunktpos USING GIST ( pos );
CREATE INDEX hoehen_hoehenpunktpos_hoehenpunktpos_von_idx ON live_dm01avso24.hoehen_hoehenpunktpos ( hoehenpunktpos_von );
-- DM01AVSO24LV95.Hoehen.Gelaendekante
CREATE TABLE live_dm01avso24.hoehen_gelaendekante (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(LINESTRINGZ,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX hoehen_gelaendekante_t_basket_idx ON live_dm01avso24.hoehen_gelaendekante ( t_basket );
CREATE INDEX hoehen_gelaendekante_t_datasetname_idx ON live_dm01avso24.hoehen_gelaendekante ( t_datasetname );
CREATE INDEX hoehen_gelaendekante_geometrie_idx ON live_dm01avso24.hoehen_gelaendekante USING GIST ( geometrie );
CREATE INDEX hoehen_gelaendekante_entstehung_idx ON live_dm01avso24.hoehen_gelaendekante ( entstehung );
-- DM01AVSO24LV95.Hoehen.Aussparung
CREATE TABLE live_dm01avso24.hoehen_aussparung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX hoehen_aussparung_t_basket_idx ON live_dm01avso24.hoehen_aussparung ( t_basket );
CREATE INDEX hoehen_aussparung_t_datasetname_idx ON live_dm01avso24.hoehen_aussparung ( t_datasetname );
CREATE INDEX hoehen_aussparung_geometrie_idx ON live_dm01avso24.hoehen_aussparung USING GIST ( geometrie );
CREATE INDEX hoehen_aussparung_entstehung_idx ON live_dm01avso24.hoehen_aussparung ( entstehung );
-- DM01AVSO24LV95.Nomenklatur.NKNachfuehrung
CREATE TABLE live_dm01avso24.nomenklatur_nknachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX nomenklatur_nknachfuehrung_t_basket_idx ON live_dm01avso24.nomenklatur_nknachfuehrung ( t_basket );
CREATE INDEX nomenklatur_nknachfuehrung_t_datasetname_idx ON live_dm01avso24.nomenklatur_nknachfuehrung ( t_datasetname );
CREATE INDEX nomenklatur_nknachfuehrung_perimeter_idx ON live_dm01avso24.nomenklatur_nknachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.Nomenklatur.Flurname
CREATE TABLE live_dm01avso24.nomenklatur_flurname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,aname varchar(40) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX nomenklatur_flurname_t_basket_idx ON live_dm01avso24.nomenklatur_flurname ( t_basket );
CREATE INDEX nomenklatur_flurname_t_datasetname_idx ON live_dm01avso24.nomenklatur_flurname ( t_datasetname );
CREATE INDEX nomenklatur_flurname_geometrie_idx ON live_dm01avso24.nomenklatur_flurname USING GIST ( geometrie );
CREATE INDEX nomenklatur_flurname_entstehung_idx ON live_dm01avso24.nomenklatur_flurname ( entstehung );
-- DM01AVSO24LV95.Nomenklatur.FlurnamePos
CREATE TABLE live_dm01avso24.nomenklatur_flurnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,stil varchar(255) NULL
  ,flurnamepos_von bigint NOT NULL
)
;
CREATE INDEX nomenklatur_flurnamepos_t_basket_idx ON live_dm01avso24.nomenklatur_flurnamepos ( t_basket );
CREATE INDEX nomenklatur_flurnamepos_t_datasetname_idx ON live_dm01avso24.nomenklatur_flurnamepos ( t_datasetname );
CREATE INDEX nomenklatur_flurnamepos_pos_idx ON live_dm01avso24.nomenklatur_flurnamepos USING GIST ( pos );
CREATE INDEX nomenklatur_flurnamepos_flurnamepos_von_idx ON live_dm01avso24.nomenklatur_flurnamepos ( flurnamepos_von );
-- DM01AVSO24LV95.Nomenklatur.Ortsname
CREATE TABLE live_dm01avso24.nomenklatur_ortsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,aname varchar(40) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,typ varchar(30) NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX nomenklatur_ortsname_t_basket_idx ON live_dm01avso24.nomenklatur_ortsname ( t_basket );
CREATE INDEX nomenklatur_ortsname_t_datasetname_idx ON live_dm01avso24.nomenklatur_ortsname ( t_datasetname );
CREATE INDEX nomenklatur_ortsname_geometrie_idx ON live_dm01avso24.nomenklatur_ortsname USING GIST ( geometrie );
CREATE INDEX nomenklatur_ortsname_entstehung_idx ON live_dm01avso24.nomenklatur_ortsname ( entstehung );
-- DM01AVSO24LV95.Nomenklatur.OrtsnamePos
CREATE TABLE live_dm01avso24.nomenklatur_ortsnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,stil varchar(255) NULL
  ,ortsnamepos_von bigint NOT NULL
)
;
CREATE INDEX nomenklatur_ortsnamepos_t_basket_idx ON live_dm01avso24.nomenklatur_ortsnamepos ( t_basket );
CREATE INDEX nomenklatur_ortsnamepos_t_datasetname_idx ON live_dm01avso24.nomenklatur_ortsnamepos ( t_datasetname );
CREATE INDEX nomenklatur_ortsnamepos_pos_idx ON live_dm01avso24.nomenklatur_ortsnamepos USING GIST ( pos );
CREATE INDEX nomenklatur_ortsnamepos_ortsnamepos_von_idx ON live_dm01avso24.nomenklatur_ortsnamepos ( ortsnamepos_von );
-- DM01AVSO24LV95.Nomenklatur.Gelaendename
CREATE TABLE live_dm01avso24.nomenklatur_gelaendename (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,aname varchar(40) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX nomenklatur_gelaendename_t_basket_idx ON live_dm01avso24.nomenklatur_gelaendename ( t_basket );
CREATE INDEX nomenklatur_gelaendename_t_datasetname_idx ON live_dm01avso24.nomenklatur_gelaendename ( t_datasetname );
CREATE INDEX nomenklatur_gelaendename_entstehung_idx ON live_dm01avso24.nomenklatur_gelaendename ( entstehung );
-- DM01AVSO24LV95.Nomenklatur.GelaendenamePos
CREATE TABLE live_dm01avso24.nomenklatur_gelaendenamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,stil varchar(255) NULL
  ,gelaendenamepos_von bigint NOT NULL
)
;
CREATE INDEX nomenklatur_gelaendenampos_t_basket_idx ON live_dm01avso24.nomenklatur_gelaendenamepos ( t_basket );
CREATE INDEX nomenklatur_gelaendenampos_t_datasetname_idx ON live_dm01avso24.nomenklatur_gelaendenamepos ( t_datasetname );
CREATE INDEX nomenklatur_gelaendenampos_pos_idx ON live_dm01avso24.nomenklatur_gelaendenamepos USING GIST ( pos );
CREATE INDEX nomenklatur_gelaendenampos_gelaendenamepos_von_idx ON live_dm01avso24.nomenklatur_gelaendenamepos ( gelaendenamepos_von );
-- DM01AVSO24LV95.Liegenschaften.LSNachfuehrung
CREATE TABLE live_dm01avso24.liegenschaften_lsnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,gbeintrag date NULL
  ,datum1 date NULL
  ,datum2 date NULL
)
;
CREATE INDEX liegenschaften_lsnchfhrung_t_basket_idx ON live_dm01avso24.liegenschaften_lsnachfuehrung ( t_basket );
CREATE INDEX liegenschaften_lsnchfhrung_t_datasetname_idx ON live_dm01avso24.liegenschaften_lsnachfuehrung ( t_datasetname );
CREATE INDEX liegenschaften_lsnchfhrung_perimeter_idx ON live_dm01avso24.liegenschaften_lsnachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.Liegenschaften.Grenzpunkt
CREATE TABLE live_dm01avso24.liegenschaften_grenzpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,identifikator varchar(12) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,punktzeichen varchar(255) NOT NULL
  ,exaktdefiniert varchar(255) NOT NULL
  ,hoheitsgrenzsteinalt varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX liegenschaften_grenzpunkt_t_basket_idx ON live_dm01avso24.liegenschaften_grenzpunkt ( t_basket );
CREATE INDEX liegenschaften_grenzpunkt_t_datasetname_idx ON live_dm01avso24.liegenschaften_grenzpunkt ( t_datasetname );
CREATE INDEX liegenschaften_grenzpunkt_geometrie_idx ON live_dm01avso24.liegenschaften_grenzpunkt USING GIST ( geometrie );
CREATE INDEX liegenschaften_grenzpunkt_entstehung_idx ON live_dm01avso24.liegenschaften_grenzpunkt ( entstehung );
-- DM01AVSO24LV95.Liegenschaften.GrenzpunktPos
CREATE TABLE live_dm01avso24.liegenschaften_grenzpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,grenzpunktpos_von bigint NOT NULL
)
;
CREATE INDEX liegenschaften_grnzpnktpos_t_basket_idx ON live_dm01avso24.liegenschaften_grenzpunktpos ( t_basket );
CREATE INDEX liegenschaften_grnzpnktpos_t_datasetname_idx ON live_dm01avso24.liegenschaften_grenzpunktpos ( t_datasetname );
CREATE INDEX liegenschaften_grnzpnktpos_pos_idx ON live_dm01avso24.liegenschaften_grenzpunktpos USING GIST ( pos );
CREATE INDEX liegenschaften_grnzpnktpos_grenzpunktpos_von_idx ON live_dm01avso24.liegenschaften_grenzpunktpos ( grenzpunktpos_von );
-- DM01AVSO24LV95.Liegenschaften.GrenzpunktSymbol
CREATE TABLE live_dm01avso24.liegenschaften_grenzpunktsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ori decimal(4,1) NULL
  ,grenzpunktsymbol_von bigint NOT NULL
)
;
CREATE INDEX liegnschftn_grnzpnktsymbol_t_basket_idx ON live_dm01avso24.liegenschaften_grenzpunktsymbol ( t_basket );
CREATE INDEX liegnschftn_grnzpnktsymbol_t_datasetname_idx ON live_dm01avso24.liegenschaften_grenzpunktsymbol ( t_datasetname );
CREATE INDEX liegnschftn_grnzpnktsymbol_grenzpunktsymbol_von_idx ON live_dm01avso24.liegenschaften_grenzpunktsymbol ( grenzpunktsymbol_von );
-- DM01AVSO24LV95.Liegenschaften.ProjGrundstueck
CREATE TABLE live_dm01avso24.liegenschaften_projgrundstueck (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,egris_egrid varchar(14) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,vollstaendigkeit varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,gesamteflaechenmass integer NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX liegenschaftn_prjgrndsteck_t_basket_idx ON live_dm01avso24.liegenschaften_projgrundstueck ( t_basket );
CREATE INDEX liegenschaftn_prjgrndsteck_t_datasetname_idx ON live_dm01avso24.liegenschaften_projgrundstueck ( t_datasetname );
CREATE INDEX liegenschaftn_prjgrndsteck_entstehung_idx ON live_dm01avso24.liegenschaften_projgrundstueck ( entstehung );
-- DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPos
CREATE TABLE live_dm01avso24.liegenschaften_projgrundstueckpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,hilfslinie geometry(LINESTRING,2056) NULL
  ,projgrundstueckpos_von bigint NOT NULL
)
;
CREATE INDEX liegnschftn_prjgrndstckpos_t_basket_idx ON live_dm01avso24.liegenschaften_projgrundstueckpos ( t_basket );
CREATE INDEX liegnschftn_prjgrndstckpos_t_datasetname_idx ON live_dm01avso24.liegenschaften_projgrundstueckpos ( t_datasetname );
CREATE INDEX liegnschftn_prjgrndstckpos_pos_idx ON live_dm01avso24.liegenschaften_projgrundstueckpos USING GIST ( pos );
CREATE INDEX liegnschftn_prjgrndstckpos_hilfslinie_idx ON live_dm01avso24.liegenschaften_projgrundstueckpos USING GIST ( hilfslinie );
CREATE INDEX liegnschftn_prjgrndstckpos_projgrundstueckpos_von_idx ON live_dm01avso24.liegenschaften_projgrundstueckpos ( projgrundstueckpos_von );
-- DM01AVSO24LV95.Liegenschaften.ProjLiegenschaft
CREATE TABLE live_dm01avso24.liegenschaften_projliegenschaft (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,projliegenschaft_von bigint NOT NULL
)
;
CREATE INDEX liegenschaftn_prjlgnschaft_t_basket_idx ON live_dm01avso24.liegenschaften_projliegenschaft ( t_basket );
CREATE INDEX liegenschaftn_prjlgnschaft_t_datasetname_idx ON live_dm01avso24.liegenschaften_projliegenschaft ( t_datasetname );
CREATE INDEX liegenschaftn_prjlgnschaft_geometrie_idx ON live_dm01avso24.liegenschaften_projliegenschaft USING GIST ( geometrie );
CREATE INDEX liegenschaftn_prjlgnschaft_projliegenschaft_von_idx ON live_dm01avso24.liegenschaften_projliegenschaft ( projliegenschaft_von );
-- DM01AVSO24LV95.Liegenschaften.ProjSelbstRecht
CREATE TABLE live_dm01avso24.liegenschaften_projselbstrecht (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,projselbstrecht_von bigint NOT NULL
)
;
CREATE INDEX liegenschaftn_prjslbstrcht_t_basket_idx ON live_dm01avso24.liegenschaften_projselbstrecht ( t_basket );
CREATE INDEX liegenschaftn_prjslbstrcht_t_datasetname_idx ON live_dm01avso24.liegenschaften_projselbstrecht ( t_datasetname );
CREATE INDEX liegenschaftn_prjslbstrcht_geometrie_idx ON live_dm01avso24.liegenschaften_projselbstrecht USING GIST ( geometrie );
CREATE INDEX liegenschaftn_prjslbstrcht_projselbstrecht_von_idx ON live_dm01avso24.liegenschaften_projselbstrecht ( projselbstrecht_von );
-- DM01AVSO24LV95.Liegenschaften.ProjBergwerk
CREATE TABLE live_dm01avso24.liegenschaften_projbergwerk (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,projbergwerk_von bigint NOT NULL
)
;
CREATE INDEX liegenschaften_projbrgwerk_t_basket_idx ON live_dm01avso24.liegenschaften_projbergwerk ( t_basket );
CREATE INDEX liegenschaften_projbrgwerk_t_datasetname_idx ON live_dm01avso24.liegenschaften_projbergwerk ( t_datasetname );
CREATE INDEX liegenschaften_projbrgwerk_geometrie_idx ON live_dm01avso24.liegenschaften_projbergwerk USING GIST ( geometrie );
CREATE INDEX liegenschaften_projbrgwerk_projbergwerk_von_idx ON live_dm01avso24.liegenschaften_projbergwerk ( projbergwerk_von );
-- DM01AVSO24LV95.Liegenschaften.Grundstueck
CREATE TABLE live_dm01avso24.liegenschaften_grundstueck (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,egris_egrid varchar(14) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,vollstaendigkeit varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,gesamteflaechenmass integer NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX liegenschaften_grundstueck_t_basket_idx ON live_dm01avso24.liegenschaften_grundstueck ( t_basket );
CREATE INDEX liegenschaften_grundstueck_t_datasetname_idx ON live_dm01avso24.liegenschaften_grundstueck ( t_datasetname );
CREATE INDEX liegenschaften_grundstueck_entstehung_idx ON live_dm01avso24.liegenschaften_grundstueck ( entstehung );
-- DM01AVSO24LV95.Liegenschaften.GrundstueckPos
CREATE TABLE live_dm01avso24.liegenschaften_grundstueckpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,hilfslinie geometry(LINESTRING,2056) NULL
  ,grundstueckpos_von bigint NOT NULL
)
;
CREATE INDEX liegenschaften_grndstckpos_t_basket_idx ON live_dm01avso24.liegenschaften_grundstueckpos ( t_basket );
CREATE INDEX liegenschaften_grndstckpos_t_datasetname_idx ON live_dm01avso24.liegenschaften_grundstueckpos ( t_datasetname );
CREATE INDEX liegenschaften_grndstckpos_pos_idx ON live_dm01avso24.liegenschaften_grundstueckpos USING GIST ( pos );
CREATE INDEX liegenschaften_grndstckpos_hilfslinie_idx ON live_dm01avso24.liegenschaften_grundstueckpos USING GIST ( hilfslinie );
CREATE INDEX liegenschaften_grndstckpos_grundstueckpos_von_idx ON live_dm01avso24.liegenschaften_grundstueckpos ( grundstueckpos_von );
-- DM01AVSO24LV95.Liegenschaften.Liegenschaft
CREATE TABLE live_dm01avso24.liegenschaften_liegenschaft (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,liegenschaft_von bigint NOT NULL
)
;
CREATE INDEX liegenschaften_liegnschaft_t_basket_idx ON live_dm01avso24.liegenschaften_liegenschaft ( t_basket );
CREATE INDEX liegenschaften_liegnschaft_t_datasetname_idx ON live_dm01avso24.liegenschaften_liegenschaft ( t_datasetname );
CREATE INDEX liegenschaften_liegnschaft_geometrie_idx ON live_dm01avso24.liegenschaften_liegenschaft USING GIST ( geometrie );
CREATE INDEX liegenschaften_liegnschaft_liegenschaft_von_idx ON live_dm01avso24.liegenschaften_liegenschaft ( liegenschaft_von );
-- DM01AVSO24LV95.Liegenschaften.SelbstRecht
CREATE TABLE live_dm01avso24.liegenschaften_selbstrecht (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,selbstrecht_von bigint NOT NULL
)
;
CREATE INDEX liegenschaften_selbstrecht_t_basket_idx ON live_dm01avso24.liegenschaften_selbstrecht ( t_basket );
CREATE INDEX liegenschaften_selbstrecht_t_datasetname_idx ON live_dm01avso24.liegenschaften_selbstrecht ( t_datasetname );
CREATE INDEX liegenschaften_selbstrecht_geometrie_idx ON live_dm01avso24.liegenschaften_selbstrecht USING GIST ( geometrie );
CREATE INDEX liegenschaften_selbstrecht_selbstrecht_von_idx ON live_dm01avso24.liegenschaften_selbstrecht ( selbstrecht_von );
-- DM01AVSO24LV95.Liegenschaften.Bergwerk
CREATE TABLE live_dm01avso24.liegenschaften_bergwerk (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,bergwerk_von bigint NOT NULL
)
;
CREATE INDEX liegenschaften_bergwerk_t_basket_idx ON live_dm01avso24.liegenschaften_bergwerk ( t_basket );
CREATE INDEX liegenschaften_bergwerk_t_datasetname_idx ON live_dm01avso24.liegenschaften_bergwerk ( t_datasetname );
CREATE INDEX liegenschaften_bergwerk_geometrie_idx ON live_dm01avso24.liegenschaften_bergwerk USING GIST ( geometrie );
CREATE INDEX liegenschaften_bergwerk_bergwerk_von_idx ON live_dm01avso24.liegenschaften_bergwerk ( bergwerk_von );
-- DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung
CREATE TABLE live_dm01avso24.rohrleitungen_rlnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX rohrleitungen_rlnachfhrung_t_basket_idx ON live_dm01avso24.rohrleitungen_rlnachfuehrung ( t_basket );
CREATE INDEX rohrleitungen_rlnachfhrung_t_datasetname_idx ON live_dm01avso24.rohrleitungen_rlnachfuehrung ( t_datasetname );
CREATE INDEX rohrleitungen_rlnachfhrung_perimeter_idx ON live_dm01avso24.rohrleitungen_rlnachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.Rohrleitungen.Leitungsobjekt
CREATE TABLE live_dm01avso24.rohrleitungen_leitungsobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,betreiber varchar(30) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX rohrleitungen_leitngsbjekt_t_basket_idx ON live_dm01avso24.rohrleitungen_leitungsobjekt ( t_basket );
CREATE INDEX rohrleitungen_leitngsbjekt_t_datasetname_idx ON live_dm01avso24.rohrleitungen_leitungsobjekt ( t_datasetname );
CREATE INDEX rohrleitungen_leitngsbjekt_entstehung_idx ON live_dm01avso24.rohrleitungen_leitungsobjekt ( entstehung );
-- DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPos
CREATE TABLE live_dm01avso24.rohrleitungen_leitungsobjektpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,groesse varchar(255) NULL
  ,leitungsobjektpos_von bigint NOT NULL
)
;
CREATE INDEX rohrleitungen_ltngsbjktpos_t_basket_idx ON live_dm01avso24.rohrleitungen_leitungsobjektpos ( t_basket );
CREATE INDEX rohrleitungen_ltngsbjktpos_t_datasetname_idx ON live_dm01avso24.rohrleitungen_leitungsobjektpos ( t_datasetname );
CREATE INDEX rohrleitungen_ltngsbjktpos_pos_idx ON live_dm01avso24.rohrleitungen_leitungsobjektpos USING GIST ( pos );
CREATE INDEX rohrleitungen_ltngsbjktpos_leitungsobjektpos_von_idx ON live_dm01avso24.rohrleitungen_leitungsobjektpos ( leitungsobjektpos_von );
-- DM01AVSO24LV95.Rohrleitungen.Flaechenelement
CREATE TABLE live_dm01avso24.rohrleitungen_flaechenelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenelement_von bigint NOT NULL
)
;
CREATE INDEX rohrleitungen_flaechnlment_t_basket_idx ON live_dm01avso24.rohrleitungen_flaechenelement ( t_basket );
CREATE INDEX rohrleitungen_flaechnlment_t_datasetname_idx ON live_dm01avso24.rohrleitungen_flaechenelement ( t_datasetname );
CREATE INDEX rohrleitungen_flaechnlment_geometrie_idx ON live_dm01avso24.rohrleitungen_flaechenelement USING GIST ( geometrie );
CREATE INDEX rohrleitungen_flaechnlment_flaechenelement_von_idx ON live_dm01avso24.rohrleitungen_flaechenelement ( flaechenelement_von );
-- DM01AVSO24LV95.Rohrleitungen.Linienelement
CREATE TABLE live_dm01avso24.rohrleitungen_linienelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,linienart varchar(255) NULL
  ,linienelement_von bigint NOT NULL
)
;
CREATE INDEX rohrleitungen_linienelment_t_basket_idx ON live_dm01avso24.rohrleitungen_linienelement ( t_basket );
CREATE INDEX rohrleitungen_linienelment_t_datasetname_idx ON live_dm01avso24.rohrleitungen_linienelement ( t_datasetname );
CREATE INDEX rohrleitungen_linienelment_geometrie_idx ON live_dm01avso24.rohrleitungen_linienelement USING GIST ( geometrie );
CREATE INDEX rohrleitungen_linienelment_linienelement_von_idx ON live_dm01avso24.rohrleitungen_linienelement ( linienelement_von );
-- DM01AVSO24LV95.Rohrleitungen.Punktelement
CREATE TABLE live_dm01avso24.rohrleitungen_punktelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,hoehegeom decimal(7,3) NULL
  ,ori decimal(4,1) NOT NULL
  ,punktelement_von bigint NOT NULL
)
;
CREATE INDEX rohrleitungen_punktelement_t_basket_idx ON live_dm01avso24.rohrleitungen_punktelement ( t_basket );
CREATE INDEX rohrleitungen_punktelement_t_datasetname_idx ON live_dm01avso24.rohrleitungen_punktelement ( t_datasetname );
CREATE INDEX rohrleitungen_punktelement_geometrie_idx ON live_dm01avso24.rohrleitungen_punktelement USING GIST ( geometrie );
CREATE INDEX rohrleitungen_punktelement_punktelement_von_idx ON live_dm01avso24.rohrleitungen_punktelement ( punktelement_von );
-- DM01AVSO24LV95.Rohrleitungen.Signalpunkt
CREATE TABLE live_dm01avso24.rohrleitungen_signalpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,betreiber varchar(30) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,punktart varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX rohrleitungen_signalpunkt_t_basket_idx ON live_dm01avso24.rohrleitungen_signalpunkt ( t_basket );
CREATE INDEX rohrleitungen_signalpunkt_t_datasetname_idx ON live_dm01avso24.rohrleitungen_signalpunkt ( t_datasetname );
CREATE INDEX rohrleitungen_signalpunkt_geometrie_idx ON live_dm01avso24.rohrleitungen_signalpunkt USING GIST ( geometrie );
CREATE INDEX rohrleitungen_signalpunkt_entstehung_idx ON live_dm01avso24.rohrleitungen_signalpunkt ( entstehung );
-- DM01AVSO24LV95.Rohrleitungen.SignalpunktPos
CREATE TABLE live_dm01avso24.rohrleitungen_signalpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,signalpunktpos_von bigint NOT NULL
)
;
CREATE INDEX rohrleitungen_signlpnktpos_t_basket_idx ON live_dm01avso24.rohrleitungen_signalpunktpos ( t_basket );
CREATE INDEX rohrleitungen_signlpnktpos_t_datasetname_idx ON live_dm01avso24.rohrleitungen_signalpunktpos ( t_datasetname );
CREATE INDEX rohrleitungen_signlpnktpos_pos_idx ON live_dm01avso24.rohrleitungen_signalpunktpos USING GIST ( pos );
CREATE INDEX rohrleitungen_signlpnktpos_signalpunktpos_von_idx ON live_dm01avso24.rohrleitungen_signalpunktpos ( signalpunktpos_von );
-- DM01AVSO24LV95.Rohrleitungen.Einzelpunkt
CREATE TABLE live_dm01avso24.rohrleitungen_einzelpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,identifikator varchar(12) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,exaktdefiniert varchar(255) NOT NULL
  ,entstehung bigint NULL
)
;
CREATE INDEX rohrleitungen_einzelpunkt_t_basket_idx ON live_dm01avso24.rohrleitungen_einzelpunkt ( t_basket );
CREATE INDEX rohrleitungen_einzelpunkt_t_datasetname_idx ON live_dm01avso24.rohrleitungen_einzelpunkt ( t_datasetname );
CREATE INDEX rohrleitungen_einzelpunkt_geometrie_idx ON live_dm01avso24.rohrleitungen_einzelpunkt USING GIST ( geometrie );
CREATE INDEX rohrleitungen_einzelpunkt_entstehung_idx ON live_dm01avso24.rohrleitungen_einzelpunkt ( entstehung );
-- DM01AVSO24LV95.Rohrleitungen.EinzelpunktPos
CREATE TABLE live_dm01avso24.rohrleitungen_einzelpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,einzelpunktpos_von bigint NOT NULL
)
;
CREATE INDEX rohrleitungen_einzlpnktpos_t_basket_idx ON live_dm01avso24.rohrleitungen_einzelpunktpos ( t_basket );
CREATE INDEX rohrleitungen_einzlpnktpos_t_datasetname_idx ON live_dm01avso24.rohrleitungen_einzelpunktpos ( t_datasetname );
CREATE INDEX rohrleitungen_einzlpnktpos_pos_idx ON live_dm01avso24.rohrleitungen_einzelpunktpos USING GIST ( pos );
CREATE INDEX rohrleitungen_einzlpnktpos_einzelpunktpos_von_idx ON live_dm01avso24.rohrleitungen_einzelpunktpos ( einzelpunktpos_von );
-- DM01AVSO24LV95.Nummerierungsbereiche.Nummerierungsbereich
CREATE TABLE live_dm01avso24.nummerierngsbrche_nummerierungsbereich (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,kt varchar(255) NOT NULL
  ,nbnummer varchar(10) NOT NULL
  ,techdossier varchar(12) NOT NULL
  ,gueltigereintrag date NULL
)
;
CREATE INDEX nummrrngsbrchnmmrrngsbrich_t_basket_idx ON live_dm01avso24.nummerierngsbrche_nummerierungsbereich ( t_basket );
CREATE INDEX nummrrngsbrchnmmrrngsbrich_t_datasetname_idx ON live_dm01avso24.nummerierngsbrche_nummerierungsbereich ( t_datasetname );
-- DM01AVSO24LV95.Nummerierungsbereiche.NBGeometrie
CREATE TABLE live_dm01avso24.nummerierngsbrche_nbgeometrie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,nbgeometrie_von bigint NOT NULL
)
;
CREATE INDEX nummerierngsbrche_nbgmtrie_t_basket_idx ON live_dm01avso24.nummerierngsbrche_nbgeometrie ( t_basket );
CREATE INDEX nummerierngsbrche_nbgmtrie_t_datasetname_idx ON live_dm01avso24.nummerierngsbrche_nbgeometrie ( t_datasetname );
CREATE INDEX nummerierngsbrche_nbgmtrie_geometrie_idx ON live_dm01avso24.nummerierngsbrche_nbgeometrie USING GIST ( geometrie );
CREATE INDEX nummerierngsbrche_nbgmtrie_nbgeometrie_von_idx ON live_dm01avso24.nummerierngsbrche_nbgeometrie ( nbgeometrie_von );
-- DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPos
CREATE TABLE live_dm01avso24.nummerierngsbrche_nummerierungsbereichpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
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
CREATE INDEX nummrrngsbrchmrrngsbrchpos_t_basket_idx ON live_dm01avso24.nummerierngsbrche_nummerierungsbereichpos ( t_basket );
CREATE INDEX nummrrngsbrchmrrngsbrchpos_t_datasetname_idx ON live_dm01avso24.nummerierngsbrche_nummerierungsbereichpos ( t_datasetname );
CREATE INDEX nummrrngsbrchmrrngsbrchpos_pos_idx ON live_dm01avso24.nummerierngsbrche_nummerierungsbereichpos USING GIST ( pos );
CREATE INDEX nummrrngsbrchmrrngsbrchpos_nummerierungsbereichps_von_idx ON live_dm01avso24.nummerierngsbrche_nummerierungsbereichpos ( nummerierungsbereichpos_von );
-- DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung
CREATE TABLE live_dm01avso24.gemeindegrenzen_gemnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX gemeindegrenzn_gmnchfhrung_t_basket_idx ON live_dm01avso24.gemeindegrenzen_gemnachfuehrung ( t_basket );
CREATE INDEX gemeindegrenzn_gmnchfhrung_t_datasetname_idx ON live_dm01avso24.gemeindegrenzen_gemnachfuehrung ( t_datasetname );
CREATE INDEX gemeindegrenzn_gmnchfhrung_perimeter_idx ON live_dm01avso24.gemeindegrenzen_gemnachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt
CREATE TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,identifikator varchar(12) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,punktzeichen varchar(255) NOT NULL
  ,hoheitsgrenzstein varchar(255) NOT NULL
  ,exaktdefiniert varchar(255) NOT NULL
  ,nbident varchar(12) NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX gemeindegrnzn_hhtsgrnzpnkt_t_basket_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt ( t_basket );
CREATE INDEX gemeindegrnzn_hhtsgrnzpnkt_t_datasetname_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt ( t_datasetname );
CREATE INDEX gemeindegrnzn_hhtsgrnzpnkt_geometrie_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt USING GIST ( geometrie );
CREATE INDEX gemeindegrnzn_hhtsgrnzpnkt_entstehung_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt ( entstehung );
-- DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPos
CREATE TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hoheitsgrenzpunktpos_von bigint NOT NULL
)
;
CREATE INDEX gemndgrnzn_hhtsgrnzpnktpos_t_basket_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktpos ( t_basket );
CREATE INDEX gemndgrnzn_hhtsgrnzpnktpos_t_datasetname_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktpos ( t_datasetname );
CREATE INDEX gemndgrnzn_hhtsgrnzpnktpos_pos_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktpos USING GIST ( pos );
CREATE INDEX gemndgrnzn_hhtsgrnzpnktpos_hoheitsgrenzpunktpos_von_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktpos ( hoheitsgrenzpunktpos_von );
-- DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktSymbol
CREATE TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ori decimal(4,1) NULL
  ,hoheitsgrenzpunktsymbol_von bigint NOT NULL
)
;
CREATE INDEX gemndgrnzn_hhrnzpnktsymbol_t_basket_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktsymbol ( t_basket );
CREATE INDEX gemndgrnzn_hhrnzpnktsymbol_t_datasetname_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktsymbol ( t_datasetname );
CREATE INDEX gemndgrnzn_hhrnzpnktsymbol_hoheitsgrenzpunktsymbl_von_idx ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktsymbol ( hoheitsgrenzpunktsymbol_von );
-- DM01AVSO24LV95.Gemeindegrenzen.Gemeinde
CREATE TABLE live_dm01avso24.gemeindegrenzen_gemeinde (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,aname varchar(30) NOT NULL
  ,bfsnr integer NOT NULL
)
;
CREATE INDEX gemeindegrenzen_gemeinde_t_basket_idx ON live_dm01avso24.gemeindegrenzen_gemeinde ( t_basket );
CREATE INDEX gemeindegrenzen_gemeinde_t_datasetname_idx ON live_dm01avso24.gemeindegrenzen_gemeinde ( t_datasetname );
-- DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenze
CREATE TABLE live_dm01avso24.gemeindegrenzen_projgemeindegrenze (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,entstehung bigint NOT NULL
  ,projgemeindegrenze_von bigint NOT NULL
)
;
CREATE INDEX gemeindegrnzn_prjgmndgrnze_t_basket_idx ON live_dm01avso24.gemeindegrenzen_projgemeindegrenze ( t_basket );
CREATE INDEX gemeindegrnzn_prjgmndgrnze_t_datasetname_idx ON live_dm01avso24.gemeindegrenzen_projgemeindegrenze ( t_datasetname );
CREATE INDEX gemeindegrnzn_prjgmndgrnze_geometrie_idx ON live_dm01avso24.gemeindegrenzen_projgemeindegrenze USING GIST ( geometrie );
CREATE INDEX gemeindegrnzn_prjgmndgrnze_entstehung_idx ON live_dm01avso24.gemeindegrenzen_projgemeindegrenze ( entstehung );
CREATE INDEX gemeindegrnzn_prjgmndgrnze_projgemeindegrenze_von_idx ON live_dm01avso24.gemeindegrenzen_projgemeindegrenze ( projgemeindegrenze_von );
-- DM01AVSO24LV95.Gemeindegrenzen.Gemeindegrenze
CREATE TABLE live_dm01avso24.gemeindegrenzen_gemeindegrenze (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,entstehung bigint NOT NULL
  ,gemeindegrenze_von bigint NOT NULL
)
;
CREATE INDEX gemeindegrenzen_gemndgrnze_t_basket_idx ON live_dm01avso24.gemeindegrenzen_gemeindegrenze ( t_basket );
CREATE INDEX gemeindegrenzen_gemndgrnze_t_datasetname_idx ON live_dm01avso24.gemeindegrenzen_gemeindegrenze ( t_datasetname );
CREATE INDEX gemeindegrenzen_gemndgrnze_geometrie_idx ON live_dm01avso24.gemeindegrenzen_gemeindegrenze USING GIST ( geometrie );
CREATE INDEX gemeindegrenzen_gemndgrnze_entstehung_idx ON live_dm01avso24.gemeindegrenzen_gemeindegrenze ( entstehung );
CREATE INDEX gemeindegrenzen_gemndgrnze_gemeindegrenze_von_idx ON live_dm01avso24.gemeindegrenzen_gemeindegrenze ( gemeindegrenze_von );
-- DM01AVSO24LV95.Bezirksgrenzen.Bezirksgrenzabschnitt
CREATE TABLE live_dm01avso24.bezirksgrenzen_bezirksgrenzabschnitt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,gueltigkeit varchar(255) NOT NULL
)
;
CREATE INDEX bezrksgrnzn_bsgrnzbschnitt_t_basket_idx ON live_dm01avso24.bezirksgrenzen_bezirksgrenzabschnitt ( t_basket );
CREATE INDEX bezrksgrnzn_bsgrnzbschnitt_t_datasetname_idx ON live_dm01avso24.bezirksgrenzen_bezirksgrenzabschnitt ( t_datasetname );
CREATE INDEX bezrksgrnzn_bsgrnzbschnitt_geometrie_idx ON live_dm01avso24.bezirksgrenzen_bezirksgrenzabschnitt USING GIST ( geometrie );
-- DM01AVSO24LV95.Kantonsgrenzen.Kantonsgrenzabschnitt
CREATE TABLE live_dm01avso24.kantonsgrenzen_kantonsgrenzabschnitt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,gueltigkeit varchar(255) NOT NULL
)
;
CREATE INDEX kantnsgrnzn_ksgrnzbschnitt_t_basket_idx ON live_dm01avso24.kantonsgrenzen_kantonsgrenzabschnitt ( t_basket );
CREATE INDEX kantnsgrnzn_ksgrnzbschnitt_t_datasetname_idx ON live_dm01avso24.kantonsgrenzen_kantonsgrenzabschnitt ( t_datasetname );
CREATE INDEX kantnsgrnzn_ksgrnzbschnitt_geometrie_idx ON live_dm01avso24.kantonsgrenzen_kantonsgrenzabschnitt USING GIST ( geometrie );
-- DM01AVSO24LV95.Landesgrenzen.Landesgrenzabschnitt
CREATE TABLE live_dm01avso24.landesgrenzen_landesgrenzabschnitt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,gueltigkeit varchar(255) NOT NULL
)
;
CREATE INDEX landsgrnzn_lnsgrnzbschnitt_t_basket_idx ON live_dm01avso24.landesgrenzen_landesgrenzabschnitt ( t_basket );
CREATE INDEX landsgrnzn_lnsgrnzbschnitt_t_datasetname_idx ON live_dm01avso24.landesgrenzen_landesgrenzabschnitt ( t_datasetname );
CREATE INDEX landsgrnzn_lnsgrnzbschnitt_geometrie_idx ON live_dm01avso24.landesgrenzen_landesgrenzabschnitt USING GIST ( geometrie );
-- DM01AVSO24LV95.Planeinteilungen.Plan
CREATE TABLE live_dm01avso24.planeinteilungen_plan (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,techdossier varchar(12) NOT NULL
  ,gueltigereintrag date NULL
)
;
CREATE INDEX planeinteilungen_plan_t_basket_idx ON live_dm01avso24.planeinteilungen_plan ( t_basket );
CREATE INDEX planeinteilungen_plan_t_datasetname_idx ON live_dm01avso24.planeinteilungen_plan ( t_datasetname );
-- DM01AVSO24LV95.Planeinteilungen.Plangeometrie
CREATE TABLE live_dm01avso24.planeinteilungen_plangeometrie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,plangeometrie_von bigint NOT NULL
)
;
CREATE INDEX planeinteilungen_plngmtrie_t_basket_idx ON live_dm01avso24.planeinteilungen_plangeometrie ( t_basket );
CREATE INDEX planeinteilungen_plngmtrie_t_datasetname_idx ON live_dm01avso24.planeinteilungen_plangeometrie ( t_datasetname );
CREATE INDEX planeinteilungen_plngmtrie_geometrie_idx ON live_dm01avso24.planeinteilungen_plangeometrie USING GIST ( geometrie );
CREATE INDEX planeinteilungen_plngmtrie_plangeometrie_von_idx ON live_dm01avso24.planeinteilungen_plangeometrie ( plangeometrie_von );
-- DM01AVSO24LV95.Planeinteilungen.PlanPos
CREATE TABLE live_dm01avso24.planeinteilungen_planpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,planpos_von bigint NOT NULL
)
;
CREATE INDEX planeinteilungen_planpos_t_basket_idx ON live_dm01avso24.planeinteilungen_planpos ( t_basket );
CREATE INDEX planeinteilungen_planpos_t_datasetname_idx ON live_dm01avso24.planeinteilungen_planpos ( t_datasetname );
CREATE INDEX planeinteilungen_planpos_pos_idx ON live_dm01avso24.planeinteilungen_planpos USING GIST ( pos );
CREATE INDEX planeinteilungen_planpos_planpos_von_idx ON live_dm01avso24.planeinteilungen_planpos ( planpos_von );
-- DM01AVSO24LV95.TSEinteilung.Toleranzstufe
CREATE TABLE live_dm01avso24.tseinteilung_toleranzstufe (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,gueltigereintrag date NULL
  ,art varchar(255) NOT NULL
)
;
CREATE INDEX tseinteilung_toleranzstufe_t_basket_idx ON live_dm01avso24.tseinteilung_toleranzstufe ( t_basket );
CREATE INDEX tseinteilung_toleranzstufe_t_datasetname_idx ON live_dm01avso24.tseinteilung_toleranzstufe ( t_datasetname );
CREATE INDEX tseinteilung_toleranzstufe_geometrie_idx ON live_dm01avso24.tseinteilung_toleranzstufe USING GIST ( geometrie );
-- DM01AVSO24LV95.TSEinteilung.ToleranzstufePos
CREATE TABLE live_dm01avso24.tseinteilung_toleranzstufepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,toleranzstufepos_von bigint NOT NULL
)
;
CREATE INDEX tseinteilung_tolernzstfpos_t_basket_idx ON live_dm01avso24.tseinteilung_toleranzstufepos ( t_basket );
CREATE INDEX tseinteilung_tolernzstfpos_t_datasetname_idx ON live_dm01avso24.tseinteilung_toleranzstufepos ( t_datasetname );
CREATE INDEX tseinteilung_tolernzstfpos_pos_idx ON live_dm01avso24.tseinteilung_toleranzstufepos USING GIST ( pos );
CREATE INDEX tseinteilung_tolernzstfpos_toleranzstufepos_von_idx ON live_dm01avso24.tseinteilung_toleranzstufepos ( toleranzstufepos_von );
-- DM01AVSO24LV95.Rutschgebiete.Rutschung
CREATE TABLE live_dm01avso24.rutschgebiete_rutschung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,aname varchar(30) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,gueltigereintrag date NULL
)
;
CREATE INDEX rutschgebiete_rutschung_t_basket_idx ON live_dm01avso24.rutschgebiete_rutschung ( t_basket );
CREATE INDEX rutschgebiete_rutschung_t_datasetname_idx ON live_dm01avso24.rutschgebiete_rutschung ( t_datasetname );
CREATE INDEX rutschgebiete_rutschung_geometrie_idx ON live_dm01avso24.rutschgebiete_rutschung USING GIST ( geometrie );
-- DM01AVSO24LV95.Rutschgebiete.RutschungPos
CREATE TABLE live_dm01avso24.rutschgebiete_rutschungpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,rutschungpos_von bigint NOT NULL
)
;
CREATE INDEX rutschgebiete_rutschungpos_t_basket_idx ON live_dm01avso24.rutschgebiete_rutschungpos ( t_basket );
CREATE INDEX rutschgebiete_rutschungpos_t_datasetname_idx ON live_dm01avso24.rutschgebiete_rutschungpos ( t_datasetname );
CREATE INDEX rutschgebiete_rutschungpos_pos_idx ON live_dm01avso24.rutschgebiete_rutschungpos USING GIST ( pos );
CREATE INDEX rutschgebiete_rutschungpos_rutschungpos_von_idx ON live_dm01avso24.rutschgebiete_rutschungpos ( rutschungpos_von );
-- DM01AVSO24LV95.PLZOrtschaft.OSNachfuehrung
CREATE TABLE live_dm01avso24.plzortschaft_osnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
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
CREATE INDEX plzortschaft_osnachfuhrung_t_basket_idx ON live_dm01avso24.plzortschaft_osnachfuehrung ( t_basket );
CREATE INDEX plzortschaft_osnachfuhrung_t_datasetname_idx ON live_dm01avso24.plzortschaft_osnachfuehrung ( t_datasetname );
CREATE INDEX plzortschaft_osnachfuhrung_perimeter_idx ON live_dm01avso24.plzortschaft_osnachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbund
CREATE TABLE live_dm01avso24.plzortschaft_ortschaftsverbund (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,leer varchar(1) NULL
)
;
CREATE INDEX plzortschft_rtschftsvrbund_t_basket_idx ON live_dm01avso24.plzortschaft_ortschaftsverbund ( t_basket );
CREATE INDEX plzortschft_rtschftsvrbund_t_datasetname_idx ON live_dm01avso24.plzortschaft_ortschaftsverbund ( t_datasetname );
-- DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbundText
CREATE TABLE live_dm01avso24.plzortschaft_ortschaftsverbundtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,atext varchar(200) NOT NULL
  ,sprache varchar(255) NOT NULL
  ,ortschaftsverbundtext_von bigint NOT NULL
)
;
CREATE INDEX plzrtschft_rthftsvrbndtext_t_basket_idx ON live_dm01avso24.plzortschaft_ortschaftsverbundtext ( t_basket );
CREATE INDEX plzrtschft_rthftsvrbndtext_t_datasetname_idx ON live_dm01avso24.plzortschaft_ortschaftsverbundtext ( t_datasetname );
CREATE INDEX plzrtschft_rthftsvrbndtext_ortschaftsverbundtext_von_idx ON live_dm01avso24.plzortschaft_ortschaftsverbundtext ( ortschaftsverbundtext_von );
-- DM01AVSO24LV95.PLZOrtschaft.Ortschaft
CREATE TABLE live_dm01avso24.plzortschaft_ortschaft (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,astatus varchar(255) NOT NULL
  ,inaenderung varchar(255) NOT NULL
  ,flaeche geometry(POLYGON,2056) NOT NULL
  ,entstehung bigint NOT NULL
  ,ortschaft_von bigint NULL
)
;
CREATE INDEX plzortschaft_ortschaft_t_basket_idx ON live_dm01avso24.plzortschaft_ortschaft ( t_basket );
CREATE INDEX plzortschaft_ortschaft_t_datasetname_idx ON live_dm01avso24.plzortschaft_ortschaft ( t_datasetname );
CREATE INDEX plzortschaft_ortschaft_flaeche_idx ON live_dm01avso24.plzortschaft_ortschaft USING GIST ( flaeche );
CREATE INDEX plzortschaft_ortschaft_entstehung_idx ON live_dm01avso24.plzortschaft_ortschaft ( entstehung );
CREATE INDEX plzortschaft_ortschaft_ortschaft_von_idx ON live_dm01avso24.plzortschaft_ortschaft ( ortschaft_von );
-- DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName
CREATE TABLE live_dm01avso24.plzortschaft_ortschaftsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,atext varchar(40) NOT NULL
  ,kurztext varchar(18) NULL
  ,indextext varchar(16) NULL
  ,sprache varchar(255) NOT NULL
  ,ortschaftsname_von bigint NOT NULL
)
;
CREATE INDEX plzortschaft_ortschftsname_t_basket_idx ON live_dm01avso24.plzortschaft_ortschaftsname ( t_basket );
CREATE INDEX plzortschaft_ortschftsname_t_datasetname_idx ON live_dm01avso24.plzortschaft_ortschaftsname ( t_datasetname );
CREATE INDEX plzortschaft_ortschftsname_ortschaftsname_von_idx ON live_dm01avso24.plzortschaft_ortschaftsname ( ortschaftsname_von );
-- DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_Pos
CREATE TABLE live_dm01avso24.plzortschaft_ortschaftsname_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
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
CREATE INDEX plzortschft_rtschftsnm_pos_t_basket_idx ON live_dm01avso24.plzortschaft_ortschaftsname_pos ( t_basket );
CREATE INDEX plzortschft_rtschftsnm_pos_t_datasetname_idx ON live_dm01avso24.plzortschaft_ortschaftsname_pos ( t_datasetname );
CREATE INDEX plzortschft_rtschftsnm_pos_pos_idx ON live_dm01avso24.plzortschaft_ortschaftsname_pos USING GIST ( pos );
CREATE INDEX plzortschft_rtschftsnm_pos_ortschaftsname_pos_von_idx ON live_dm01avso24.plzortschaft_ortschaftsname_pos ( ortschaftsname_pos_von );
-- DM01AVSO24LV95.PLZOrtschaft.PLZ6Nachfuehrung
CREATE TABLE live_dm01avso24.plzortschaft_plz6nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
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
CREATE INDEX plzortschaft_plz6nchfhrung_t_basket_idx ON live_dm01avso24.plzortschaft_plz6nachfuehrung ( t_basket );
CREATE INDEX plzortschaft_plz6nchfhrung_t_datasetname_idx ON live_dm01avso24.plzortschaft_plz6nachfuehrung ( t_datasetname );
CREATE INDEX plzortschaft_plz6nchfhrung_perimeter_idx ON live_dm01avso24.plzortschaft_plz6nachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.PLZOrtschaft.PLZ6
CREATE TABLE live_dm01avso24.plzortschaft_plz6 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
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
CREATE INDEX plzortschaft_plz6_t_basket_idx ON live_dm01avso24.plzortschaft_plz6 ( t_basket );
CREATE INDEX plzortschaft_plz6_t_datasetname_idx ON live_dm01avso24.plzortschaft_plz6 ( t_datasetname );
CREATE INDEX plzortschaft_plz6_flaeche_idx ON live_dm01avso24.plzortschaft_plz6 USING GIST ( flaeche );
CREATE INDEX plzortschaft_plz6_entstehung_idx ON live_dm01avso24.plzortschaft_plz6 ( entstehung );
CREATE INDEX plzortschaft_plz6_plz6_von_idx ON live_dm01avso24.plzortschaft_plz6 ( plz6_von );
-- DM01AVSO24LV95.Gebaeudeadressen.GEBNachfuehrung
CREATE TABLE live_dm01avso24.gebaeudeadressen_gebnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
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
CREATE INDEX gebaeudeadrssn_gbnchfhrung_t_basket_idx ON live_dm01avso24.gebaeudeadressen_gebnachfuehrung ( t_basket );
CREATE INDEX gebaeudeadrssn_gbnchfhrung_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_gebnachfuehrung ( t_datasetname );
CREATE INDEX gebaeudeadrssn_gbnchfhrung_perimeter_idx ON live_dm01avso24.gebaeudeadressen_gebnachfuehrung USING GIST ( perimeter );
-- DM01AVSO24LV95.Gebaeudeadressen.Lokalisation
CREATE TABLE live_dm01avso24.gebaeudeadressen_lokalisation (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nummerierungsprinzip varchar(255) NOT NULL
  ,lokalisationnummer varchar(12) NULL
  ,attributeprovisorisch varchar(255) NOT NULL
  ,istoffiziellebezeichnung varchar(255) NOT NULL
  ,astatus varchar(255) NOT NULL
  ,inaenderung varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX gebaeudeadressen_loklstion_t_basket_idx ON live_dm01avso24.gebaeudeadressen_lokalisation ( t_basket );
CREATE INDEX gebaeudeadressen_loklstion_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_lokalisation ( t_datasetname );
CREATE INDEX gebaeudeadressen_loklstion_entstehung_idx ON live_dm01avso24.gebaeudeadressen_lokalisation ( entstehung );
-- DM01AVSO24LV95.Gebaeudeadressen.LokalisationsName
CREATE TABLE live_dm01avso24.gebaeudeadressen_lokalisationsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,atext varchar(60) NOT NULL
  ,kurztext varchar(24) NULL
  ,indextext varchar(16) NULL
  ,sprache varchar(255) NOT NULL
  ,benannte bigint NOT NULL
)
;
CREATE INDEX gebaeudeadrssn_lklstnsname_t_basket_idx ON live_dm01avso24.gebaeudeadressen_lokalisationsname ( t_basket );
CREATE INDEX gebaeudeadrssn_lklstnsname_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_lokalisationsname ( t_datasetname );
CREATE INDEX gebaeudeadrssn_lklstnsname_benannte_idx ON live_dm01avso24.gebaeudeadressen_lokalisationsname ( benannte );
-- DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos
CREATE TABLE live_dm01avso24.gebaeudeadressen_lokalisationsnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,anfindex integer NULL
  ,endindex integer NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,hilfslinie geometry(LINESTRING,2056) NULL
  ,lokalisationsnamepos_von bigint NOT NULL
)
;
CREATE INDEX gebaeudedrssn_lklstnsnmpos_t_basket_idx ON live_dm01avso24.gebaeudeadressen_lokalisationsnamepos ( t_basket );
CREATE INDEX gebaeudedrssn_lklstnsnmpos_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_lokalisationsnamepos ( t_datasetname );
CREATE INDEX gebaeudedrssn_lklstnsnmpos_pos_idx ON live_dm01avso24.gebaeudeadressen_lokalisationsnamepos USING GIST ( pos );
CREATE INDEX gebaeudedrssn_lklstnsnmpos_hilfslinie_idx ON live_dm01avso24.gebaeudeadressen_lokalisationsnamepos USING GIST ( hilfslinie );
CREATE INDEX gebaeudedrssn_lklstnsnmpos_lokalisationsnamepos_von_idx ON live_dm01avso24.gebaeudeadressen_lokalisationsnamepos ( lokalisationsnamepos_von );
-- DM01AVSO24LV95.Gebaeudeadressen.BenanntesGebiet
CREATE TABLE live_dm01avso24.gebaeudeadressen_benanntesgebiet (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,flaeche geometry(POLYGON,2056) NOT NULL
  ,benanntesgebiet_von bigint NOT NULL
)
;
CREATE INDEX gebaeudeadrssn_bnnntsgbiet_t_basket_idx ON live_dm01avso24.gebaeudeadressen_benanntesgebiet ( t_basket );
CREATE INDEX gebaeudeadrssn_bnnntsgbiet_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_benanntesgebiet ( t_datasetname );
CREATE INDEX gebaeudeadrssn_bnnntsgbiet_flaeche_idx ON live_dm01avso24.gebaeudeadressen_benanntesgebiet USING GIST ( flaeche );
CREATE INDEX gebaeudeadrssn_bnnntsgbiet_benanntesgebiet_von_idx ON live_dm01avso24.gebaeudeadressen_benanntesgebiet ( benanntesgebiet_von );
-- DM01AVSO24LV95.Gebaeudeadressen.Strassenstueck
CREATE TABLE live_dm01avso24.gebaeudeadressen_strassenstueck (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,anfangspunkt geometry(POINT,2056) NOT NULL
  ,ordnung integer NOT NULL
  ,istachse varchar(255) NOT NULL
  ,strassenstueck_von bigint NOT NULL
)
;
CREATE INDEX gebaeudeadrssn_strssnsteck_t_basket_idx ON live_dm01avso24.gebaeudeadressen_strassenstueck ( t_basket );
CREATE INDEX gebaeudeadrssn_strssnsteck_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_strassenstueck ( t_datasetname );
CREATE INDEX gebaeudeadrssn_strssnsteck_geometrie_idx ON live_dm01avso24.gebaeudeadressen_strassenstueck USING GIST ( geometrie );
CREATE INDEX gebaeudeadrssn_strssnsteck_anfangspunkt_idx ON live_dm01avso24.gebaeudeadressen_strassenstueck USING GIST ( anfangspunkt );
CREATE INDEX gebaeudeadrssn_strssnsteck_strassenstueck_von_idx ON live_dm01avso24.gebaeudeadressen_strassenstueck ( strassenstueck_von );
-- DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang
CREATE TABLE live_dm01avso24.gebaeudeadressen_gebaeudeeingang (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,astatus varchar(255) NOT NULL
  ,inaenderung varchar(255) NOT NULL
  ,attributeprovisorisch varchar(255) NOT NULL
  ,istoffiziellebezeichnung varchar(255) NOT NULL
  ,lage geometry(POINT,2056) NOT NULL
  ,hoehenlage integer NULL
  ,hausnummer varchar(12) NULL
  ,im_gebaeude varchar(255) NOT NULL
  ,gwr_egid integer NULL
  ,gwr_edid integer NULL
  ,entstehung bigint NOT NULL
  ,gebaeudeeingang_von bigint NULL
)
;
CREATE INDEX gebaeudeadressen_gebdngang_t_basket_idx ON live_dm01avso24.gebaeudeadressen_gebaeudeeingang ( t_basket );
CREATE INDEX gebaeudeadressen_gebdngang_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_gebaeudeeingang ( t_datasetname );
CREATE INDEX gebaeudeadressen_gebdngang_lage_idx ON live_dm01avso24.gebaeudeadressen_gebaeudeeingang USING GIST ( lage );
CREATE INDEX gebaeudeadressen_gebdngang_entstehung_idx ON live_dm01avso24.gebaeudeadressen_gebaeudeeingang ( entstehung );
CREATE INDEX gebaeudeadressen_gebdngang_gebaeudeeingang_von_idx ON live_dm01avso24.gebaeudeadressen_gebaeudeeingang ( gebaeudeeingang_von );
-- DM01AVSO24LV95.Gebaeudeadressen.HausnummerPos
CREATE TABLE live_dm01avso24.gebaeudeadressen_hausnummerpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,hausnummerpos_von bigint NOT NULL
)
;
CREATE INDEX gebaeudeadressen_hsnmmrpos_t_basket_idx ON live_dm01avso24.gebaeudeadressen_hausnummerpos ( t_basket );
CREATE INDEX gebaeudeadressen_hsnmmrpos_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_hausnummerpos ( t_datasetname );
CREATE INDEX gebaeudeadressen_hsnmmrpos_pos_idx ON live_dm01avso24.gebaeudeadressen_hausnummerpos USING GIST ( pos );
CREATE INDEX gebaeudeadressen_hsnmmrpos_hausnummerpos_von_idx ON live_dm01avso24.gebaeudeadressen_hausnummerpos ( hausnummerpos_von );
-- DM01AVSO24LV95.Gebaeudeadressen.GebaeudeName
CREATE TABLE live_dm01avso24.gebaeudeadressen_gebaeudename (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,atext varchar(40) NOT NULL
  ,kurztext varchar(24) NULL
  ,indextext varchar(16) NULL
  ,sprache varchar(255) NOT NULL
  ,gebaeudename_von bigint NOT NULL
)
;
CREATE INDEX gebaeudeadressen_gebadname_t_basket_idx ON live_dm01avso24.gebaeudeadressen_gebaeudename ( t_basket );
CREATE INDEX gebaeudeadressen_gebadname_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_gebaeudename ( t_datasetname );
CREATE INDEX gebaeudeadressen_gebadname_gebaeudename_von_idx ON live_dm01avso24.gebaeudeadressen_gebaeudename ( gebaeudename_von );
-- DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePos
CREATE TABLE live_dm01avso24.gebaeudeadressen_gebaeudenamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,hilfslinie geometry(LINESTRING,2056) NULL
  ,gebaeudenamepos_von bigint NOT NULL
)
;
CREATE INDEX gebaeudeadressen_gebdnmpos_t_basket_idx ON live_dm01avso24.gebaeudeadressen_gebaeudenamepos ( t_basket );
CREATE INDEX gebaeudeadressen_gebdnmpos_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_gebaeudenamepos ( t_datasetname );
CREATE INDEX gebaeudeadressen_gebdnmpos_pos_idx ON live_dm01avso24.gebaeudeadressen_gebaeudenamepos USING GIST ( pos );
CREATE INDEX gebaeudeadressen_gebdnmpos_hilfslinie_idx ON live_dm01avso24.gebaeudeadressen_gebaeudenamepos USING GIST ( hilfslinie );
CREATE INDEX gebaeudeadressen_gebdnmpos_gebaeudenamepos_von_idx ON live_dm01avso24.gebaeudeadressen_gebaeudenamepos ( gebaeudenamepos_von );
-- DM01AVSO24LV95.Gebaeudeadressen.GebaeudeBeschreibung
CREATE TABLE live_dm01avso24.gebaeudeadressen_gebaeudebeschreibung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,atext varchar(100) NOT NULL
  ,sprache varchar(255) NOT NULL
  ,gebaeudebeschreibung_von bigint NOT NULL
)
;
CREATE INDEX gebaeudedrssn_gbdbschrbung_t_basket_idx ON live_dm01avso24.gebaeudeadressen_gebaeudebeschreibung ( t_basket );
CREATE INDEX gebaeudedrssn_gbdbschrbung_t_datasetname_idx ON live_dm01avso24.gebaeudeadressen_gebaeudebeschreibung ( t_datasetname );
CREATE INDEX gebaeudedrssn_gbdbschrbung_gebaeudebeschreibung_von_idx ON live_dm01avso24.gebaeudeadressen_gebaeudebeschreibung ( gebaeudebeschreibung_von );
-- DM01AVSO24LV95.Planrahmen.PlanLayout
CREATE TABLE live_dm01avso24.planrahmen_planlayout (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(32) NOT NULL
  ,layouttyp varchar(20) NOT NULL
  ,plannummer varchar(12) NOT NULL
  ,gemeindename varchar(30) NOT NULL
  ,geometername varchar(30) NULL
  ,erstellungsdatum date NOT NULL
  ,nachfuehrungsgeometername varchar(30) NULL
  ,nachfuehrungsdatum date NULL
  ,massstabszahl integer NOT NULL
  ,plannullpunkt geometry(POINT,2056) NOT NULL
  ,e_azimut decimal(4,1) NOT NULL
  ,uebersichtmassstabszahl integer NULL
  ,uebersichtplannullpunkt geometry(POINT,2056) NULL
  ,mit_koordinatennetz varchar(255) NOT NULL
)
;
CREATE INDEX planrahmen_planlayout_t_basket_idx ON live_dm01avso24.planrahmen_planlayout ( t_basket );
CREATE INDEX planrahmen_planlayout_t_datasetname_idx ON live_dm01avso24.planrahmen_planlayout ( t_datasetname );
CREATE INDEX planrahmen_planlayout_plannullpunkt_idx ON live_dm01avso24.planrahmen_planlayout USING GIST ( plannullpunkt );
CREATE INDEX planrahmen_planlayout_uebersichtplannullpunkt_idx ON live_dm01avso24.planrahmen_planlayout USING GIST ( uebersichtplannullpunkt );
-- DM01AVSO24LV95.Planrahmen.Planbeschriftung
CREATE TABLE live_dm01avso24.planrahmen_planbeschriftung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,beschriftung varchar(30) NOT NULL
  ,art varchar(255) NOT NULL
  ,planbeschriftung_von bigint NOT NULL
)
;
CREATE INDEX planrahmen_planbeschrftung_t_basket_idx ON live_dm01avso24.planrahmen_planbeschriftung ( t_basket );
CREATE INDEX planrahmen_planbeschrftung_t_datasetname_idx ON live_dm01avso24.planrahmen_planbeschriftung ( t_datasetname );
CREATE INDEX planrahmen_planbeschrftung_planbeschriftung_von_idx ON live_dm01avso24.planrahmen_planbeschriftung ( planbeschriftung_von );
-- DM01AVSO24LV95.Planrahmen.PlanbeschriftungPos
CREATE TABLE live_dm01avso24.planrahmen_planbeschriftungpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,planbeschriftungpos_von bigint NOT NULL
)
;
CREATE INDEX planrahmen_plnbschrftngpos_t_basket_idx ON live_dm01avso24.planrahmen_planbeschriftungpos ( t_basket );
CREATE INDEX planrahmen_plnbschrftngpos_t_datasetname_idx ON live_dm01avso24.planrahmen_planbeschriftungpos ( t_datasetname );
CREATE INDEX planrahmen_plnbschrftngpos_pos_idx ON live_dm01avso24.planrahmen_planbeschriftungpos USING GIST ( pos );
CREATE INDEX planrahmen_plnbschrftngpos_planbeschriftungpos_von_idx ON live_dm01avso24.planrahmen_planbeschriftungpos ( planbeschriftungpos_von );
-- DM01AVSO24LV95.Planrahmen.Koordinatenanschrift
CREATE TABLE live_dm01avso24.planrahmen_koordinatenanschrift (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,beschriftung varchar(12) NOT NULL
  ,koordinatenanschrift_von bigint NOT NULL
)
;
CREATE INDEX planrahmen_kordntnnschrift_t_basket_idx ON live_dm01avso24.planrahmen_koordinatenanschrift ( t_basket );
CREATE INDEX planrahmen_kordntnnschrift_t_datasetname_idx ON live_dm01avso24.planrahmen_koordinatenanschrift ( t_datasetname );
CREATE INDEX planrahmen_kordntnnschrift_koordinatenanschrift_von_idx ON live_dm01avso24.planrahmen_koordinatenanschrift ( koordinatenanschrift_von );
-- DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPos
CREATE TABLE live_dm01avso24.planrahmen_koordinatenanschriftpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,koordinatenanschriftpos_von bigint NOT NULL
)
;
CREATE INDEX planrahmn_krdntnnschrftpos_t_basket_idx ON live_dm01avso24.planrahmen_koordinatenanschriftpos ( t_basket );
CREATE INDEX planrahmn_krdntnnschrftpos_t_datasetname_idx ON live_dm01avso24.planrahmen_koordinatenanschriftpos ( t_datasetname );
CREATE INDEX planrahmn_krdntnnschrftpos_pos_idx ON live_dm01avso24.planrahmen_koordinatenanschriftpos USING GIST ( pos );
CREATE INDEX planrahmn_krdntnnschrftpos_koordinatenanschriftps_von_idx ON live_dm01avso24.planrahmen_koordinatenanschriftpos ( koordinatenanschriftpos_von );
-- DM01AVSO24LV95.Planrahmen.Linienobjekt
CREATE TABLE live_dm01avso24.planrahmen_linienobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,art varchar(255) NOT NULL
  ,linienobjekt_von bigint NOT NULL
)
;
CREATE INDEX planrahmen_linienobjekt_t_basket_idx ON live_dm01avso24.planrahmen_linienobjekt ( t_basket );
CREATE INDEX planrahmen_linienobjekt_t_datasetname_idx ON live_dm01avso24.planrahmen_linienobjekt ( t_datasetname );
CREATE INDEX planrahmen_linienobjekt_geometrie_idx ON live_dm01avso24.planrahmen_linienobjekt USING GIST ( geometrie );
CREATE INDEX planrahmen_linienobjekt_linienobjekt_von_idx ON live_dm01avso24.planrahmen_linienobjekt ( linienobjekt_von );
-- DM01AVSO24LV95.Planrahmen.KoordinatenLinie
CREATE TABLE live_dm01avso24.planrahmen_koordinatenlinie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,koordinatenlinie_von bigint NOT NULL
)
;
CREATE INDEX planrahmen_koordinatenlnie_t_basket_idx ON live_dm01avso24.planrahmen_koordinatenlinie ( t_basket );
CREATE INDEX planrahmen_koordinatenlnie_t_datasetname_idx ON live_dm01avso24.planrahmen_koordinatenlinie ( t_datasetname );
CREATE INDEX planrahmen_koordinatenlnie_geometrie_idx ON live_dm01avso24.planrahmen_koordinatenlinie USING GIST ( geometrie );
CREATE INDEX planrahmen_koordinatenlnie_koordinatenlinie_von_idx ON live_dm01avso24.planrahmen_koordinatenlinie ( koordinatenlinie_von );
-- DM01AVSO24LV95.Planrahmen.Darstellungsflaeche
CREATE TABLE live_dm01avso24.planrahmen_darstellungsflaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,auswahlart varchar(255) NOT NULL
  ,darstellungsflaeche_von bigint NOT NULL
)
;
CREATE INDEX planrahmen_darstllngsflche_t_basket_idx ON live_dm01avso24.planrahmen_darstellungsflaeche ( t_basket );
CREATE INDEX planrahmen_darstllngsflche_t_datasetname_idx ON live_dm01avso24.planrahmen_darstellungsflaeche ( t_datasetname );
CREATE INDEX planrahmen_darstllngsflche_geometrie_idx ON live_dm01avso24.planrahmen_darstellungsflaeche USING GIST ( geometrie );
CREATE INDEX planrahmen_darstllngsflche_darstellungsflaeche_von_idx ON live_dm01avso24.planrahmen_darstellungsflaeche ( darstellungsflaeche_von );
-- DM01AVSO24LV95.Planrahmen.PlanLayoutSymbol
CREATE TABLE live_dm01avso24.planrahmen_planlayoutsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,art varchar(255) NOT NULL
  ,planlayoutsymbol_von bigint NOT NULL
)
;
CREATE INDEX planrahmen_planlayotsymbol_t_basket_idx ON live_dm01avso24.planrahmen_planlayoutsymbol ( t_basket );
CREATE INDEX planrahmen_planlayotsymbol_t_datasetname_idx ON live_dm01avso24.planrahmen_planlayoutsymbol ( t_datasetname );
CREATE INDEX planrahmen_planlayotsymbol_pos_idx ON live_dm01avso24.planrahmen_planlayoutsymbol USING GIST ( pos );
CREATE INDEX planrahmen_planlayotsymbol_planlayoutsymbol_von_idx ON live_dm01avso24.planrahmen_planlayoutsymbol ( planlayoutsymbol_von );
-- DM01AVSO24LV95.Planrahmen.Netzkreuz
CREATE TABLE live_dm01avso24.planrahmen_netzkreuz (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live_dm01avso24.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,art varchar(255) NOT NULL
  ,netzkreuz_von bigint NOT NULL
)
;
CREATE INDEX planrahmen_netzkreuz_t_basket_idx ON live_dm01avso24.planrahmen_netzkreuz ( t_basket );
CREATE INDEX planrahmen_netzkreuz_t_datasetname_idx ON live_dm01avso24.planrahmen_netzkreuz ( t_datasetname );
CREATE INDEX planrahmen_netzkreuz_pos_idx ON live_dm01avso24.planrahmen_netzkreuz USING GIST ( pos );
CREATE INDEX planrahmen_netzkreuz_netzkreuz_von_idx ON live_dm01avso24.planrahmen_netzkreuz ( netzkreuz_von );
CREATE TABLE live_dm01avso24.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON live_dm01avso24.t_ili2db_basket ( dataset );
CREATE TABLE live_dm01avso24.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE live_dm01avso24.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_dataset_idx ON live_dm01avso24.t_ili2db_import ( dataset );
CREATE TABLE live_dm01avso24.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,importrun bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_BASKET_importrun_idx ON live_dm01avso24.t_ili2db_import_basket ( importrun );
CREATE INDEX T_ILI2DB_IMPORT_BASKET_basket_idx ON live_dm01avso24.t_ili2db_import_basket ( basket );
CREATE TABLE live_dm01avso24.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE live_dm01avso24.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (modelName,iliversion)
)
;
CREATE TABLE live_dm01avso24.liegenschaften_lineattrib4_linienart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.rohrleitungen_linienelement_linienart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_projgrundstueck_vollstaendigkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_inaenderung (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_projgrundstueck_gueltigkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.planrahmen_kreuzart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_lineattrib6_linienart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_attributeprovisorisch (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.versicherungsart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.nummerierngsbrche_kantonskuerzel (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.planrahmen_planlayout_mit_koordinatennetz (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_grundstuecksart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_grenzpunkt_exaktdefiniert (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.rohrleitungen_lineattrib7_linienart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.planrahmen_symbolart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.planrahmen_darstellungsflaeche_auswahlart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.schriftgroesse (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gemeindegrenzen_lineattrib8_linienart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.planrahmen_beschriftungsart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.bodenbedeckung_einzelpunkt_exaktdefiniert (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.plzortschaft_ortschaft_inaenderung (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gebaeudeadrssen_lokalisation_nummerierungsprinzip (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gebaeudeadrssen_lokalisation_attributeprovisorisch (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.fixpunktktgrie3_hilfsfixpunkt_protokoll (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.rohrleitungen_einzelpunkt_exaktdefiniert (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_lineattrib5_linienart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.planrahmen_linientyp (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.halignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gebaeudeadrssen_strassenstueck_istachse (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_istoffiziellebezeichnung (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.astatus (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gebaeudeadrssen_lokalisation_istoffiziellebezeichnung (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_im_gebaeude (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gebaeudeadrssen_lokalisation_art (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_grundstueck_vollstaendigkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_grenzpunkt_hoheitsgrenzsteinalt (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.einzelobjekte_eoart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.fixpunktktgrie1_lfp1_begehbarkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_grundstueck_gueltigkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.qualitaetsstandard (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.rohrleitungen_signalpunkt_punktart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.status_ga (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.hoehen_gelaendekante_art (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.fixpunktktgrie3_lfp3_protokoll (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.landesgrenzen_landesgrenzabschnitt_gueltigkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.gebaeudeadrssen_lokalisation_inaenderung (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.einzelobjekte_einzelpunkt_exaktdefiniert (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.hoehen_aussparung_art (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_lineattrib3_linienart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_lineattrib1_linienart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.liegenschaften_lineattrib2_linienart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.sprachtyp (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.schriftstil (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.valignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.plzortschaft_plz6_inaenderung (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.zuverlaessigkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.bodenbedeckung_bbart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.fixpunktktgrie2_lfp2_begehbarkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.rohrleitungen_medium (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.tseinteilung_toleranzstufe_art (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE live_dm01avso24.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE live_dm01avso24.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (ColOwner,SqlName)
)
;
CREATE TABLE live_dm01avso24.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE live_dm01avso24.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE live_dm01avso24.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
CREATE UNIQUE INDEX fixpnktknchfhrung_nbident_identifikator_key ON live_dm01avso24.fixpunktekatgrie1_lfp1nachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1nachfuehrung ADD CONSTRAINT fixpnktktgr1_lfp1nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktktgr1_lfp1_nummer_nbident_key ON live_dm01avso24.fixpunktekatgrie1_lfp1 (nummer,nbident)
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1 ADD CONSTRAINT fixpunktekatgrie1_lfp1_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1 ADD CONSTRAINT fixpunktekatgrie1_lfp1_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 1600.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1 ADD CONSTRAINT fixpunktekatgrie1_lfp1_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1 ADD CONSTRAINT fixpunktekatgrie1_lfp1_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1 ADD CONSTRAINT fixpunktekatgrie1_lfp1_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.fixpunktekatgrie1_lfp1nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1pos ADD CONSTRAINT fixpunktekatgrie1_lfp1pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1pos ADD CONSTRAINT fixpunktekatgrie1_lfp1pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1pos ADD CONSTRAINT fixpunktekatgrie1_lfp1pos_lfp1pos_von_fkey FOREIGN KEY ( lfp1pos_von ) REFERENCES live_dm01avso24.fixpunktekatgrie1_lfp1 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1symbol ADD CONSTRAINT fixpunktekatgr1_lfp1symbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1symbol ADD CONSTRAINT fixpunktektgr1_lfp1symbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_lfp1symbol ADD CONSTRAINT fixpunktekatgr1_lfp1symbol_lfp1symbol_von_fkey FOREIGN KEY ( lfp1symbol_von ) REFERENCES live_dm01avso24.fixpunktekatgrie1_lfp1 DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktknchfhrung_nbident_identifikator_key1 ON live_dm01avso24.fixpunktekatgrie1_hfp1nachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_hfp1nachfuehrung ADD CONSTRAINT fixpnktktgr1_hfp1nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktktgr1_hfp1_nummer_nbident_key ON live_dm01avso24.fixpunktekatgrie1_hfp1 (nummer,nbident)
;
CREATE UNIQUE INDEX fixpunktekatgrie1_hfp1_geometrie_key ON live_dm01avso24.fixpunktekatgrie1_hfp1 (ST_AsBinary(geometrie))
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_hfp1 ADD CONSTRAINT fixpunktekatgrie1_hfp1_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_hfp1 ADD CONSTRAINT fixpunktekatgrie1_hfp1_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 1600.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_hfp1 ADD CONSTRAINT fixpunktekatgrie1_hfp1_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_hfp1 ADD CONSTRAINT fixpunktekatgrie1_hfp1_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_hfp1 ADD CONSTRAINT fixpunktekatgrie1_hfp1_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.fixpunktekatgrie1_hfp1nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_hfp1pos ADD CONSTRAINT fixpunktekatgrie1_hfp1pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_hfp1pos ADD CONSTRAINT fixpunktekatgrie1_hfp1pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie1_hfp1pos ADD CONSTRAINT fixpunktekatgrie1_hfp1pos_hfp1pos_von_fkey FOREIGN KEY ( hfp1pos_von ) REFERENCES live_dm01avso24.fixpunktekatgrie1_hfp1 DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktknchfhrung_nbident_identifikator_key2 ON live_dm01avso24.fixpunktekatgrie2_lfp2nachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2nachfuehrung ADD CONSTRAINT fixpnktktgr2_lfp2nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktktgr2_lfp2_nummer_nbident_key ON live_dm01avso24.fixpunktekatgrie2_lfp2 (nummer,nbident)
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2 ADD CONSTRAINT fixpunktekatgrie2_lfp2_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2 ADD CONSTRAINT fixpunktekatgrie2_lfp2_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 1600.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2 ADD CONSTRAINT fixpunktekatgrie2_lfp2_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2 ADD CONSTRAINT fixpunktekatgrie2_lfp2_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2 ADD CONSTRAINT fixpunktekatgrie2_lfp2_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.fixpunktekatgrie2_lfp2nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2pos ADD CONSTRAINT fixpunktekatgrie2_lfp2pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2pos ADD CONSTRAINT fixpunktekatgrie2_lfp2pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2pos ADD CONSTRAINT fixpunktekatgrie2_lfp2pos_lfp2pos_von_fkey FOREIGN KEY ( lfp2pos_von ) REFERENCES live_dm01avso24.fixpunktekatgrie2_lfp2 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2symbol ADD CONSTRAINT fixpunktekatgr2_lfp2symbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2symbol ADD CONSTRAINT fixpunktektgr2_lfp2symbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_lfp2symbol ADD CONSTRAINT fixpunktekatgr2_lfp2symbol_lfp2symbol_von_fkey FOREIGN KEY ( lfp2symbol_von ) REFERENCES live_dm01avso24.fixpunktekatgrie2_lfp2 DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktknchfhrung_nbident_identifikator_key3 ON live_dm01avso24.fixpunktekatgrie2_hfp2nachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_hfp2nachfuehrung ADD CONSTRAINT fixpnktktgr2_hfp2nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpunktekatgrie2_hfp2_geometrie_key ON live_dm01avso24.fixpunktekatgrie2_hfp2 (ST_AsBinary(geometrie))
;
CREATE UNIQUE INDEX fixpnktktgr2_hfp2_nummer_nbident_key ON live_dm01avso24.fixpunktekatgrie2_hfp2 (nummer,nbident)
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_hfp2 ADD CONSTRAINT fixpunktekatgrie2_hfp2_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_hfp2 ADD CONSTRAINT fixpunktekatgrie2_hfp2_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 1600.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_hfp2 ADD CONSTRAINT fixpunktekatgrie2_hfp2_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_hfp2 ADD CONSTRAINT fixpunktekatgrie2_hfp2_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_hfp2 ADD CONSTRAINT fixpunktekatgrie2_hfp2_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.fixpunktekatgrie2_hfp2nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_hfp2pos ADD CONSTRAINT fixpunktekatgrie2_hfp2pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_hfp2pos ADD CONSTRAINT fixpunktekatgrie2_hfp2pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie2_hfp2pos ADD CONSTRAINT fixpunktekatgrie2_hfp2pos_hfp2pos_von_fkey FOREIGN KEY ( hfp2pos_von ) REFERENCES live_dm01avso24.fixpunktekatgrie2_hfp2 DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktknchfhrung_nbident_identifikator_key4 ON live_dm01avso24.fixpunktekatgrie3_lfp3nachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3nachfuehrung ADD CONSTRAINT fixpnktktgr3_lfp3nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktktgr3_lfp3_nummer_nbident_key ON live_dm01avso24.fixpunktekatgrie3_lfp3 (nummer,nbident)
;
CREATE UNIQUE INDEX fixpunktekatgrie3_lfp3_geometrie_key ON live_dm01avso24.fixpunktekatgrie3_lfp3 (ST_AsBinary(geometrie))
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3 ADD CONSTRAINT fixpunktekatgrie3_lfp3_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3 ADD CONSTRAINT fixpunktekatgrie3_lfp3_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 1600.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3 ADD CONSTRAINT fixpunktekatgrie3_lfp3_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3 ADD CONSTRAINT fixpunktekatgrie3_lfp3_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3 ADD CONSTRAINT fixpunktekatgrie3_lfp3_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.fixpunktekatgrie3_lfp3nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3pos ADD CONSTRAINT fixpunktekatgrie3_lfp3pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3pos ADD CONSTRAINT fixpunktekatgrie3_lfp3pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3pos ADD CONSTRAINT fixpunktekatgrie3_lfp3pos_lfp3pos_von_fkey FOREIGN KEY ( lfp3pos_von ) REFERENCES live_dm01avso24.fixpunktekatgrie3_lfp3 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3symbol ADD CONSTRAINT fixpunktekatgr3_lfp3symbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3symbol ADD CONSTRAINT fixpunktektgr3_lfp3symbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_lfp3symbol ADD CONSTRAINT fixpunktekatgr3_lfp3symbol_lfp3symbol_von_fkey FOREIGN KEY ( lfp3symbol_von ) REFERENCES live_dm01avso24.fixpunktekatgrie3_lfp3 DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktknchfhrung_nbident_identifikator_key5 ON live_dm01avso24.fixpunktekatgrie3_hilfsfpnachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfpnachfuehrung ADD CONSTRAINT fixpnktktgr3_fsfpnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktklfsfxpnkt_nummer_nbident_key ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt (nummer,nbident)
;
CREATE UNIQUE INDEX fixpunktekatgr3_hlfsfxpnkt_geometrie_key ON live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt (ST_AsBinary(geometrie))
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt ADD CONSTRAINT fixpunktekatgr3_hlfsfxpnkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt ADD CONSTRAINT fixpunktektgr3_hlfsfxpnkt_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 1600.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt ADD CONSTRAINT fixpunktektgr3_hlfsfxpnkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt ADD CONSTRAINT fixpunktektgr3_hlfsfxpnkt_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt ADD CONSTRAINT fixpunktekatgr3_hlfsfxpnkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.fixpunktekatgrie3_hilfsfpnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktpos ADD CONSTRAINT fixpnktktgr3_hlfsfxpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktpos ADD CONSTRAINT fixpnktktgr3hlfsfxpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktpos ADD CONSTRAINT fixpnktktgr3_hlfsfxpnktpos_hilfsfixpunktpos_von_fkey FOREIGN KEY ( hilfsfixpunktpos_von ) REFERENCES live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktsymbol ADD CONSTRAINT fixpnktktgr3_sfxpnktsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktsymbol ADD CONSTRAINT fixpnktktgr3sfxpnktsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hilfsfixpunktsymbol ADD CONSTRAINT fixpnktktgr3_sfxpnktsymbol_hilfsfixpunktsymbol_von_fkey FOREIGN KEY ( hilfsfixpunktsymbol_von ) REFERENCES live_dm01avso24.fixpunktekatgrie3_hilfsfixpunkt DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktknchfhrung_nbident_identifikator_key6 ON live_dm01avso24.fixpunktekatgrie3_hfp3nachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hfp3nachfuehrung ADD CONSTRAINT fixpnktktgr3_hfp3nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX fixpnktktgr3_hfp3_nbident_nummer_key ON live_dm01avso24.fixpunktekatgrie3_hfp3 (nbident,nummer)
;
CREATE UNIQUE INDEX fixpunktekatgrie3_hfp3_geometrie_key ON live_dm01avso24.fixpunktekatgrie3_hfp3 (ST_AsBinary(geometrie))
;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hfp3 ADD CONSTRAINT fixpunktekatgrie3_hfp3_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hfp3 ADD CONSTRAINT fixpunktekatgrie3_hfp3_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 1600.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hfp3 ADD CONSTRAINT fixpunktekatgrie3_hfp3_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hfp3 ADD CONSTRAINT fixpunktekatgrie3_hfp3_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hfp3 ADD CONSTRAINT fixpunktekatgrie3_hfp3_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.fixpunktekatgrie3_hfp3nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hfp3pos ADD CONSTRAINT fixpunktekatgrie3_hfp3pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hfp3pos ADD CONSTRAINT fixpunktekatgrie3_hfp3pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.fixpunktekatgrie3_hfp3pos ADD CONSTRAINT fixpunktekatgrie3_hfp3pos_hfp3pos_von_fkey FOREIGN KEY ( hfp3pos_von ) REFERENCES live_dm01avso24.fixpunktekatgrie3_hfp3 DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX bodnbdcknchfhrung_identifikator_nbident_key ON live_dm01avso24.bodenbedeckung_bbnachfuehrung (identifikator,nbident)
;
ALTER TABLE live_dm01avso24.bodenbedeckung_bbnachfuehrung ADD CONSTRAINT bodenbedeckung_bbnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projboflaeche ADD CONSTRAINT bodenbedeckung_projboflche_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projboflaeche ADD CONSTRAINT bodenbedeckung_projboflche_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.bodenbedeckung_bbnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projgebaeudenummer ADD CONSTRAINT bodenbedeckung_prjgbdnmmer_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projgebaeudenummer ADD CONSTRAINT bodenbedeckng_prjgbdnmmer_gwr_egid_check CHECK( gwr_egid BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.bodenbedeckung_projgebaeudenummer ADD CONSTRAINT bodenbedeckung_prjgbdnmmer_projgebaeudenummer_von_fkey FOREIGN KEY ( projgebaeudenummer_von ) REFERENCES live_dm01avso24.bodenbedeckung_projboflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projgebaeudenummerpos ADD CONSTRAINT bodenbedckng_prjgbdnmmrpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projgebaeudenummerpos ADD CONSTRAINT bodenbdckng_prjgbdnmmrpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.bodenbedeckung_projgebaeudenummerpos ADD CONSTRAINT bodenbedckng_prjgbdnmmrpos_projgebaeudenummerpos_von_fkey FOREIGN KEY ( projgebaeudenummerpos_von ) REFERENCES live_dm01avso24.bodenbedeckung_projgebaeudenummer DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projobjektname ADD CONSTRAINT bodenbedeckung_prjbjktname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projobjektname ADD CONSTRAINT bodenbedeckung_prjbjktname_projobjektname_von_fkey FOREIGN KEY ( projobjektname_von ) REFERENCES live_dm01avso24.bodenbedeckung_projboflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projobjektnamepos ADD CONSTRAINT bodenbedeckng_prjbjktnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projobjektnamepos ADD CONSTRAINT bodenbedckng_prjbjktnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.bodenbedeckung_projobjektnamepos ADD CONSTRAINT bodenbedeckng_prjbjktnmpos_projobjektnamepos_von_fkey FOREIGN KEY ( projobjektnamepos_von ) REFERENCES live_dm01avso24.bodenbedeckung_projobjektname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projboflaechesymbol ADD CONSTRAINT bodenbdckng_prjbflchsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_projboflaechesymbol ADD CONSTRAINT bodnbdckng_prjbflchsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.bodenbedeckung_projboflaechesymbol ADD CONSTRAINT bodenbdckng_prjbflchsymbol_projboflaechesymbol_von_fkey FOREIGN KEY ( projboflaechesymbol_von ) REFERENCES live_dm01avso24.bodenbedeckung_projboflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_boflaeche ADD CONSTRAINT bodenbedeckung_boflaeche_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_boflaeche ADD CONSTRAINT bodenbedeckung_boflaeche_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.bodenbedeckung_bbnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_gebaeudenummer ADD CONSTRAINT bodenbedeckung_gebaednmmer_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_gebaeudenummer ADD CONSTRAINT bodenbedeckung_gebadnmmer_gwr_egid_check CHECK( gwr_egid BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.bodenbedeckung_gebaeudenummer ADD CONSTRAINT bodenbedeckung_gebaednmmer_gebaeudenummer_von_fkey FOREIGN KEY ( gebaeudenummer_von ) REFERENCES live_dm01avso24.bodenbedeckung_boflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_gebaeudenummerpos ADD CONSTRAINT bodenbedeckung_gebdnmmrpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_gebaeudenummerpos ADD CONSTRAINT bodenbedeckung_gbdnmmrpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.bodenbedeckung_gebaeudenummerpos ADD CONSTRAINT bodenbedeckung_gebdnmmrpos_gebaeudenummerpos_von_fkey FOREIGN KEY ( gebaeudenummerpos_von ) REFERENCES live_dm01avso24.bodenbedeckung_gebaeudenummer DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_objektname ADD CONSTRAINT bodenbedeckung_objektname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_objektname ADD CONSTRAINT bodenbedeckung_objektname_objektname_von_fkey FOREIGN KEY ( objektname_von ) REFERENCES live_dm01avso24.bodenbedeckung_boflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_objektnamepos ADD CONSTRAINT bodenbedeckung_objektnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_objektnamepos ADD CONSTRAINT bodenbedeckung_objktnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.bodenbedeckung_objektnamepos ADD CONSTRAINT bodenbedeckung_objektnmpos_objektnamepos_von_fkey FOREIGN KEY ( objektnamepos_von ) REFERENCES live_dm01avso24.bodenbedeckung_objektname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_boflaechesymbol ADD CONSTRAINT bodenbedeckung_bflchsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_boflaechesymbol ADD CONSTRAINT bodenbedeckng_bflchsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.bodenbedeckung_boflaechesymbol ADD CONSTRAINT bodenbedeckung_bflchsymbol_boflaechesymbol_von_fkey FOREIGN KEY ( boflaechesymbol_von ) REFERENCES live_dm01avso24.bodenbedeckung_boflaeche DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX bodenbedeckung_einzelpunkt_geometrie_key ON live_dm01avso24.bodenbedeckung_einzelpunkt (ST_AsBinary(geometrie))
;
ALTER TABLE live_dm01avso24.bodenbedeckung_einzelpunkt ADD CONSTRAINT bodenbedeckung_einzelpunkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_einzelpunkt ADD CONSTRAINT bodenbedeckung_einzelpnkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.bodenbedeckung_einzelpunkt ADD CONSTRAINT bodenbedeckung_einzelpunkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.bodenbedeckung_bbnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_einzelpunktpos ADD CONSTRAINT bodenbedeckung_enzlpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bodenbedeckung_einzelpunktpos ADD CONSTRAINT bodenbedeckung_nzlpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.bodenbedeckung_einzelpunktpos ADD CONSTRAINT bodenbedeckung_enzlpnktpos_einzelpunktpos_von_fkey FOREIGN KEY ( einzelpunktpos_von ) REFERENCES live_dm01avso24.bodenbedeckung_einzelpunkt DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX einzlbjknchfhrung_identifikator_nbident_key ON live_dm01avso24.einzelobjekte_eonachfuehrung (identifikator,nbident)
;
ALTER TABLE live_dm01avso24.einzelobjekte_eonachfuehrung ADD CONSTRAINT einzelobjekte_eonachfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_einzelobjekt ADD CONSTRAINT einzelobjekte_einzelobjekt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_einzelobjekt ADD CONSTRAINT einzelobjekte_einzelobjekt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.einzelobjekte_eonachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_flaechenelement ADD CONSTRAINT einzelobjekte_flaechnlment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_flaechenelement ADD CONSTRAINT einzelobjekte_flaechnlment_flaechenelement_von_fkey FOREIGN KEY ( flaechenelement_von ) REFERENCES live_dm01avso24.einzelobjekte_einzelobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_flaechenelementsymbol ADD CONSTRAINT einzelbjkt_flchnlmntsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_flaechenelementsymbol ADD CONSTRAINT einzlbjkt_flchnlmntsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.einzelobjekte_flaechenelementsymbol ADD CONSTRAINT einzelbjkt_flchnlmntsymbol_flaechenelementsymbol_von_fkey FOREIGN KEY ( flaechenelementsymbol_von ) REFERENCES live_dm01avso24.einzelobjekte_flaechenelement DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_linienelement ADD CONSTRAINT einzelobjekte_linienelment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_linienelement ADD CONSTRAINT einzelobjekte_linienelment_linienelement_von_fkey FOREIGN KEY ( linienelement_von ) REFERENCES live_dm01avso24.einzelobjekte_einzelobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_linienelementsymbol ADD CONSTRAINT einzelobjekt_lnnlmntsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_linienelementsymbol ADD CONSTRAINT einzelobjkt_lnnlmntsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.einzelobjekte_linienelementsymbol ADD CONSTRAINT einzelobjekt_lnnlmntsymbol_linienelementsymbol_von_fkey FOREIGN KEY ( linienelementsymbol_von ) REFERENCES live_dm01avso24.einzelobjekte_linienelement DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_punktelement ADD CONSTRAINT einzelobjekte_punktelement_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_punktelement ADD CONSTRAINT einzelobjekte_punktelment_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.einzelobjekte_punktelement ADD CONSTRAINT einzelobjekte_punktelement_punktelement_von_fkey FOREIGN KEY ( punktelement_von ) REFERENCES live_dm01avso24.einzelobjekte_einzelobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_objektname ADD CONSTRAINT einzelobjekte_objektname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_objektname ADD CONSTRAINT einzelobjekte_objektname_objektname_von_fkey FOREIGN KEY ( objektname_von ) REFERENCES live_dm01avso24.einzelobjekte_einzelobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_objektnamepos ADD CONSTRAINT einzelobjekte_objektnampos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_objektnamepos ADD CONSTRAINT einzelobjekte_objektnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.einzelobjekte_objektnamepos ADD CONSTRAINT einzelobjekte_objektnampos_objektnamepos_von_fkey FOREIGN KEY ( objektnamepos_von ) REFERENCES live_dm01avso24.einzelobjekte_objektname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_objektnummer ADD CONSTRAINT einzelobjekte_objektnummer_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_objektnummer ADD CONSTRAINT einzelobjekte_objektnmmer_gwr_egid_check CHECK( gwr_egid BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.einzelobjekte_objektnummer ADD CONSTRAINT einzelobjekte_objektnummer_objektnummer_von_fkey FOREIGN KEY ( objektnummer_von ) REFERENCES live_dm01avso24.einzelobjekte_einzelobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_objektnummerpos ADD CONSTRAINT einzelobjekte_objktnmmrpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_objektnummerpos ADD CONSTRAINT einzelobjekte_bjktnmmrpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.einzelobjekte_objektnummerpos ADD CONSTRAINT einzelobjekte_objktnmmrpos_objektnummerpos_von_fkey FOREIGN KEY ( objektnummerpos_von ) REFERENCES live_dm01avso24.einzelobjekte_objektnummer DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX einzelobjekte_einzelpunkt_geometrie_key ON live_dm01avso24.einzelobjekte_einzelpunkt (ST_AsBinary(geometrie))
;
ALTER TABLE live_dm01avso24.einzelobjekte_einzelpunkt ADD CONSTRAINT einzelobjekte_einzelpunkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_einzelpunkt ADD CONSTRAINT einzelobjekte_einzelpunkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.einzelobjekte_einzelpunkt ADD CONSTRAINT einzelobjekte_einzelpunkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.einzelobjekte_eonachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_einzelpunktpos ADD CONSTRAINT einzelobjekte_einzlpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.einzelobjekte_einzelpunktpos ADD CONSTRAINT einzelobjekte_enzlpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.einzelobjekte_einzelpunktpos ADD CONSTRAINT einzelobjekte_einzlpnktpos_einzelpunktpos_von_fkey FOREIGN KEY ( einzelpunktpos_von ) REFERENCES live_dm01avso24.einzelobjekte_einzelpunkt DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX hoehen_hnchfhrung_nbident_identifikator_key ON live_dm01avso24.hoehen_honachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.hoehen_honachfuehrung ADD CONSTRAINT hoehen_honachfuehrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX hoehen_hoehenpunkt_geometrie_key ON live_dm01avso24.hoehen_hoehenpunkt (ST_AsBinary(geometrie))
;
ALTER TABLE live_dm01avso24.hoehen_hoehenpunkt ADD CONSTRAINT hoehen_hoehenpunkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.hoehen_hoehenpunkt ADD CONSTRAINT hoehen_hoehenpunkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.hoehen_honachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.hoehen_hoehenpunktpos ADD CONSTRAINT hoehen_hoehenpunktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.hoehen_hoehenpunktpos ADD CONSTRAINT hoehen_hoehenpunktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.hoehen_hoehenpunktpos ADD CONSTRAINT hoehen_hoehenpunktpos_hoehenpunktpos_von_fkey FOREIGN KEY ( hoehenpunktpos_von ) REFERENCES live_dm01avso24.hoehen_hoehenpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.hoehen_gelaendekante ADD CONSTRAINT hoehen_gelaendekante_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.hoehen_gelaendekante ADD CONSTRAINT hoehen_gelaendekante_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.hoehen_honachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.hoehen_aussparung ADD CONSTRAINT hoehen_aussparung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.hoehen_aussparung ADD CONSTRAINT hoehen_aussparung_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.hoehen_honachfuehrung DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX nomnkltrnchfhrung_identifikator_nbident_key ON live_dm01avso24.nomenklatur_nknachfuehrung (identifikator,nbident)
;
ALTER TABLE live_dm01avso24.nomenklatur_nknachfuehrung ADD CONSTRAINT nomenklatur_nknachfuehrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_flurname ADD CONSTRAINT nomenklatur_flurname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_flurname ADD CONSTRAINT nomenklatur_flurname_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.nomenklatur_nknachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_flurnamepos ADD CONSTRAINT nomenklatur_flurnamepos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_flurnamepos ADD CONSTRAINT nomenklatur_flurnamepos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.nomenklatur_flurnamepos ADD CONSTRAINT nomenklatur_flurnamepos_flurnamepos_von_fkey FOREIGN KEY ( flurnamepos_von ) REFERENCES live_dm01avso24.nomenklatur_flurname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_ortsname ADD CONSTRAINT nomenklatur_ortsname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_ortsname ADD CONSTRAINT nomenklatur_ortsname_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.nomenklatur_nknachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_ortsnamepos ADD CONSTRAINT nomenklatur_ortsnamepos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_ortsnamepos ADD CONSTRAINT nomenklatur_ortsnamepos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.nomenklatur_ortsnamepos ADD CONSTRAINT nomenklatur_ortsnamepos_ortsnamepos_von_fkey FOREIGN KEY ( ortsnamepos_von ) REFERENCES live_dm01avso24.nomenklatur_ortsname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_gelaendename ADD CONSTRAINT nomenklatur_gelaendename_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_gelaendename ADD CONSTRAINT nomenklatur_gelaendename_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.nomenklatur_nknachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_gelaendenamepos ADD CONSTRAINT nomenklatur_gelaendenampos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nomenklatur_gelaendenamepos ADD CONSTRAINT nomenklatur_gelaendenmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.nomenklatur_gelaendenamepos ADD CONSTRAINT nomenklatur_gelaendenampos_gelaendenamepos_von_fkey FOREIGN KEY ( gelaendenamepos_von ) REFERENCES live_dm01avso24.nomenklatur_gelaendename DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX liegnschnchfhrung_nbident_identifikator_key ON live_dm01avso24.liegenschaften_lsnachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.liegenschaften_lsnachfuehrung ADD CONSTRAINT liegenschaften_lsnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX liegenschaften_grenzpunkt_geometrie_key ON live_dm01avso24.liegenschaften_grenzpunkt (ST_AsBinary(geometrie))
;
ALTER TABLE live_dm01avso24.liegenschaften_grenzpunkt ADD CONSTRAINT liegenschaften_grenzpunkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_grenzpunkt ADD CONSTRAINT liegenschaften_grenzpunkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.liegenschaften_grenzpunkt ADD CONSTRAINT liegenschaften_grenzpunkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.liegenschaften_lsnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_grenzpunktpos ADD CONSTRAINT liegenschaften_grnzpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_grenzpunktpos ADD CONSTRAINT liegenschaftn_grnzpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.liegenschaften_grenzpunktpos ADD CONSTRAINT liegenschaften_grnzpnktpos_grenzpunktpos_von_fkey FOREIGN KEY ( grenzpunktpos_von ) REFERENCES live_dm01avso24.liegenschaften_grenzpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_grenzpunktsymbol ADD CONSTRAINT liegnschftn_grnzpnktsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_grenzpunktsymbol ADD CONSTRAINT liegnschftn_rnzpnktsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.liegenschaften_grenzpunktsymbol ADD CONSTRAINT liegnschftn_grnzpnktsymbol_grenzpunktsymbol_von_fkey FOREIGN KEY ( grenzpunktsymbol_von ) REFERENCES live_dm01avso24.liegenschaften_grenzpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_projgrundstueck ADD CONSTRAINT liegenschaftn_prjgrndsteck_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_projgrundstueck ADD CONSTRAINT liegenschftn_prjgrndsteck_gesamteflaechenmass_check CHECK( gesamteflaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.liegenschaften_projgrundstueck ADD CONSTRAINT liegenschaftn_prjgrndsteck_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.liegenschaften_lsnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_projgrundstueckpos ADD CONSTRAINT liegnschftn_prjgrndstckpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_projgrundstueckpos ADD CONSTRAINT liegnschftn_rjgrndstckpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.liegenschaften_projgrundstueckpos ADD CONSTRAINT liegnschftn_prjgrndstckpos_projgrundstueckpos_von_fkey FOREIGN KEY ( projgrundstueckpos_von ) REFERENCES live_dm01avso24.liegenschaften_projgrundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_projliegenschaft ADD CONSTRAINT liegenschaftn_prjlgnschaft_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_projliegenschaft ADD CONSTRAINT liegenschftn_prjlgnschaft_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.liegenschaften_projliegenschaft ADD CONSTRAINT liegenschaftn_prjlgnschaft_projliegenschaft_von_fkey FOREIGN KEY ( projliegenschaft_von ) REFERENCES live_dm01avso24.liegenschaften_projgrundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_projselbstrecht ADD CONSTRAINT liegenschaftn_prjslbstrcht_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_projselbstrecht ADD CONSTRAINT liegenschftn_prjslbstrcht_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.liegenschaften_projselbstrecht ADD CONSTRAINT liegenschaftn_prjslbstrcht_projselbstrecht_von_fkey FOREIGN KEY ( projselbstrecht_von ) REFERENCES live_dm01avso24.liegenschaften_projgrundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_projbergwerk ADD CONSTRAINT liegenschaften_projbrgwerk_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_projbergwerk ADD CONSTRAINT liegenschaften_prjbrgwerk_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.liegenschaften_projbergwerk ADD CONSTRAINT liegenschaften_projbrgwerk_projbergwerk_von_fkey FOREIGN KEY ( projbergwerk_von ) REFERENCES live_dm01avso24.liegenschaften_projgrundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_grundstueck ADD CONSTRAINT liegenschaften_grundstueck_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_grundstueck ADD CONSTRAINT liegenschaften_grundsteck_gesamteflaechenmass_check CHECK( gesamteflaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.liegenschaften_grundstueck ADD CONSTRAINT liegenschaften_grundstueck_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.liegenschaften_lsnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_grundstueckpos ADD CONSTRAINT liegenschaften_grndstckpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_grundstueckpos ADD CONSTRAINT liegenschaftn_grndstckpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.liegenschaften_grundstueckpos ADD CONSTRAINT liegenschaften_grndstckpos_grundstueckpos_von_fkey FOREIGN KEY ( grundstueckpos_von ) REFERENCES live_dm01avso24.liegenschaften_grundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_liegenschaft ADD CONSTRAINT liegenschaften_liegnschaft_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_liegenschaft ADD CONSTRAINT liegenschaften_lignschaft_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.liegenschaften_liegenschaft ADD CONSTRAINT liegenschaften_liegnschaft_liegenschaft_von_fkey FOREIGN KEY ( liegenschaft_von ) REFERENCES live_dm01avso24.liegenschaften_grundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_selbstrecht ADD CONSTRAINT liegenschaften_selbstrecht_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_selbstrecht ADD CONSTRAINT liegenschaften_selbstrcht_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.liegenschaften_selbstrecht ADD CONSTRAINT liegenschaften_selbstrecht_selbstrecht_von_fkey FOREIGN KEY ( selbstrecht_von ) REFERENCES live_dm01avso24.liegenschaften_grundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_bergwerk ADD CONSTRAINT liegenschaften_bergwerk_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.liegenschaften_bergwerk ADD CONSTRAINT liegenschaften_bergwerk_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.liegenschaften_bergwerk ADD CONSTRAINT liegenschaften_bergwerk_bergwerk_von_fkey FOREIGN KEY ( bergwerk_von ) REFERENCES live_dm01avso24.liegenschaften_grundstueck DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX rohrltngnchfhrung_nbident_identifikator_key ON live_dm01avso24.rohrleitungen_rlnachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.rohrleitungen_rlnachfuehrung ADD CONSTRAINT rohrleitungen_rlnachfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_leitungsobjekt ADD CONSTRAINT rohrleitungen_leitngsbjekt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_leitungsobjekt ADD CONSTRAINT rohrleitungen_leitngsbjekt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.rohrleitungen_rlnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_leitungsobjektpos ADD CONSTRAINT rohrleitungen_ltngsbjktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_leitungsobjektpos ADD CONSTRAINT rohrleitungn_ltngsbjktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.rohrleitungen_leitungsobjektpos ADD CONSTRAINT rohrleitungen_ltngsbjktpos_leitungsobjektpos_von_fkey FOREIGN KEY ( leitungsobjektpos_von ) REFERENCES live_dm01avso24.rohrleitungen_leitungsobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_flaechenelement ADD CONSTRAINT rohrleitungen_flaechnlment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_flaechenelement ADD CONSTRAINT rohrleitungen_flaechnlment_flaechenelement_von_fkey FOREIGN KEY ( flaechenelement_von ) REFERENCES live_dm01avso24.rohrleitungen_leitungsobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_linienelement ADD CONSTRAINT rohrleitungen_linienelment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_linienelement ADD CONSTRAINT rohrleitungen_linienelment_linienelement_von_fkey FOREIGN KEY ( linienelement_von ) REFERENCES live_dm01avso24.rohrleitungen_leitungsobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_punktelement ADD CONSTRAINT rohrleitungen_punktelement_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_punktelement ADD CONSTRAINT rohrleitungen_punktelment_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 1600.0);
ALTER TABLE live_dm01avso24.rohrleitungen_punktelement ADD CONSTRAINT rohrleitungen_punktelment_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.rohrleitungen_punktelement ADD CONSTRAINT rohrleitungen_punktelement_punktelement_von_fkey FOREIGN KEY ( punktelement_von ) REFERENCES live_dm01avso24.rohrleitungen_leitungsobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_signalpunkt ADD CONSTRAINT rohrleitungen_signalpunkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_signalpunkt ADD CONSTRAINT rohrleitungen_signalpunkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.rohrleitungen_rlnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_signalpunktpos ADD CONSTRAINT rohrleitungen_signlpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_signalpunktpos ADD CONSTRAINT rohrleitungen_sgnlpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.rohrleitungen_signalpunktpos ADD CONSTRAINT rohrleitungen_signlpnktpos_signalpunktpos_von_fkey FOREIGN KEY ( signalpunktpos_von ) REFERENCES live_dm01avso24.rohrleitungen_signalpunkt DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX rohrleitungen_einzelpunkt_geometrie_key ON live_dm01avso24.rohrleitungen_einzelpunkt (ST_AsBinary(geometrie))
;
ALTER TABLE live_dm01avso24.rohrleitungen_einzelpunkt ADD CONSTRAINT rohrleitungen_einzelpunkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_einzelpunkt ADD CONSTRAINT rohrleitungen_einzelpunkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.rohrleitungen_einzelpunkt ADD CONSTRAINT rohrleitungen_einzelpunkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.rohrleitungen_rlnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_einzelpunktpos ADD CONSTRAINT rohrleitungen_einzlpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rohrleitungen_einzelpunktpos ADD CONSTRAINT rohrleitungen_enzlpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.rohrleitungen_einzelpunktpos ADD CONSTRAINT rohrleitungen_einzlpnktpos_einzelpunktpos_von_fkey FOREIGN KEY ( einzelpunktpos_von ) REFERENCES live_dm01avso24.rohrleitungen_einzelpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nummerierngsbrche_nummerierungsbereich ADD CONSTRAINT nummrrngsbrchnmmrrngsbrich_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nummerierngsbrche_nbgeometrie ADD CONSTRAINT nummerierngsbrche_nbgmtrie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nummerierngsbrche_nbgeometrie ADD CONSTRAINT nummerierngsbrche_nbgmtrie_nbgeometrie_von_fkey FOREIGN KEY ( nbgeometrie_von ) REFERENCES live_dm01avso24.nummerierngsbrche_nummerierungsbereich DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT nummrrngsbrchmrrngsbrchpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.nummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT nummrrngsbrcmrrngsbrchpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.nummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT nummrrngsbrchmrrngsbrchpos_nummerierungsbereichps_von_fkey FOREIGN KEY ( nummerierungsbereichpos_von ) REFERENCES live_dm01avso24.nummerierngsbrche_nummerierungsbereich DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX gemndgrnnchfhrung_nbident_identifikator_key ON live_dm01avso24.gemeindegrenzen_gemnachfuehrung (nbident,identifikator)
;
ALTER TABLE live_dm01avso24.gemeindegrenzen_gemnachfuehrung ADD CONSTRAINT gemeindegrenzn_gmnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX gemeindegrnzn_hhtsgrnzpnkt_geometrie_key ON live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt (ST_AsBinary(geometrie))
;
ALTER TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt ADD CONSTRAINT gemeindegrnzn_hhtsgrnzpnkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt ADD CONSTRAINT gemeindgrnzn_hhtsgrnzpnkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt ADD CONSTRAINT gemeindegrnzn_hhtsgrnzpnkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.gemeindegrenzen_gemnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktpos ADD CONSTRAINT gemndgrnzn_hhtsgrnzpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktpos ADD CONSTRAINT gemndgrnzn_htsgrnzpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktpos ADD CONSTRAINT gemndgrnzn_hhtsgrnzpnktpos_hoheitsgrenzpunktpos_von_fkey FOREIGN KEY ( hoheitsgrenzpunktpos_von ) REFERENCES live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktsymbol ADD CONSTRAINT gemndgrnzn_hhrnzpnktsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktsymbol ADD CONSTRAINT gemndgrnzn_hrnzpnktsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunktsymbol ADD CONSTRAINT gemndgrnzn_hhrnzpnktsymbol_hoheitsgrenzpunktsymbl_von_fkey FOREIGN KEY ( hoheitsgrenzpunktsymbol_von ) REFERENCES live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_gemeinde ADD CONSTRAINT gemeindegrenzen_gemeinde_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_gemeinde ADD CONSTRAINT gemeindegrenzen_gemeinde_bfsnr_check CHECK( bfsnr BETWEEN 1 AND 9999);
ALTER TABLE live_dm01avso24.gemeindegrenzen_projgemeindegrenze ADD CONSTRAINT gemeindegrnzn_prjgmndgrnze_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_projgemeindegrenze ADD CONSTRAINT gemeindegrnzn_prjgmndgrnze_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.gemeindegrenzen_gemnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_projgemeindegrenze ADD CONSTRAINT gemeindegrnzn_prjgmndgrnze_projgemeindegrenze_von_fkey FOREIGN KEY ( projgemeindegrenze_von ) REFERENCES live_dm01avso24.gemeindegrenzen_gemeinde DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_gemeindegrenze ADD CONSTRAINT gemeindegrenzen_gemndgrnze_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_gemeindegrenze ADD CONSTRAINT gemeindegrenzen_gemndgrnze_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.gemeindegrenzen_gemnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gemeindegrenzen_gemeindegrenze ADD CONSTRAINT gemeindegrenzen_gemndgrnze_gemeindegrenze_von_fkey FOREIGN KEY ( gemeindegrenze_von ) REFERENCES live_dm01avso24.gemeindegrenzen_gemeinde DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.bezirksgrenzen_bezirksgrenzabschnitt ADD CONSTRAINT bezrksgrnzn_bsgrnzbschnitt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.kantonsgrenzen_kantonsgrenzabschnitt ADD CONSTRAINT kantnsgrnzn_ksgrnzbschnitt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.landesgrenzen_landesgrenzabschnitt ADD CONSTRAINT landsgrnzn_lnsgrnzbschnitt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planeinteilungen_plan ADD CONSTRAINT planeinteilungen_plan_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planeinteilungen_plangeometrie ADD CONSTRAINT planeinteilungen_plngmtrie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planeinteilungen_plangeometrie ADD CONSTRAINT planeinteilungen_plngmtrie_plangeometrie_von_fkey FOREIGN KEY ( plangeometrie_von ) REFERENCES live_dm01avso24.planeinteilungen_plan DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planeinteilungen_planpos ADD CONSTRAINT planeinteilungen_planpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planeinteilungen_planpos ADD CONSTRAINT planeinteilungen_planpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.planeinteilungen_planpos ADD CONSTRAINT planeinteilungen_planpos_planpos_von_fkey FOREIGN KEY ( planpos_von ) REFERENCES live_dm01avso24.planeinteilungen_plan DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX tsentlnglrnzstufe_identifikator_nbident_key ON live_dm01avso24.tseinteilung_toleranzstufe (identifikator,nbident)
;
ALTER TABLE live_dm01avso24.tseinteilung_toleranzstufe ADD CONSTRAINT tseinteilung_toleranzstufe_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.tseinteilung_toleranzstufepos ADD CONSTRAINT tseinteilung_tolernzstfpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.tseinteilung_toleranzstufepos ADD CONSTRAINT tseinteilung_tolrnzstfpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.tseinteilung_toleranzstufepos ADD CONSTRAINT tseinteilung_tolernzstfpos_toleranzstufepos_von_fkey FOREIGN KEY ( toleranzstufepos_von ) REFERENCES live_dm01avso24.tseinteilung_toleranzstufe DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX rutschgb_rtschung_identifikator_nbident_key ON live_dm01avso24.rutschgebiete_rutschung (identifikator,nbident)
;
ALTER TABLE live_dm01avso24.rutschgebiete_rutschung ADD CONSTRAINT rutschgebiete_rutschung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rutschgebiete_rutschungpos ADD CONSTRAINT rutschgebiete_rutschungpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.rutschgebiete_rutschungpos ADD CONSTRAINT rutschgebiete_rutschngpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.rutschgebiete_rutschungpos ADD CONSTRAINT rutschgebiete_rutschungpos_rutschungpos_von_fkey FOREIGN KEY ( rutschungpos_von ) REFERENCES live_dm01avso24.rutschgebiete_rutschung DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX plzrtschnchfhrung_identifikator_nbident_key ON live_dm01avso24.plzortschaft_osnachfuehrung (identifikator,nbident)
;
ALTER TABLE live_dm01avso24.plzortschaft_osnachfuehrung ADD CONSTRAINT plzortschaft_osnachfuhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_ortschaftsverbund ADD CONSTRAINT plzortschft_rtschftsvrbund_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_ortschaftsverbundtext ADD CONSTRAINT plzrtschft_rthftsvrbndtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_ortschaftsverbundtext ADD CONSTRAINT plzrtschft_rthftsvrbndtext_ortschaftsverbundtext_von_fkey FOREIGN KEY ( ortschaftsverbundtext_von ) REFERENCES live_dm01avso24.plzortschaft_ortschaftsverbund DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_ortschaft ADD CONSTRAINT plzortschaft_ortschaft_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_ortschaft ADD CONSTRAINT plzortschaft_ortschaft_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.plzortschaft_osnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_ortschaft ADD CONSTRAINT plzortschaft_ortschaft_ortschaft_von_fkey FOREIGN KEY ( ortschaft_von ) REFERENCES live_dm01avso24.plzortschaft_ortschaftsverbund DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_ortschaftsname ADD CONSTRAINT plzortschaft_ortschftsname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_ortschaftsname ADD CONSTRAINT plzortschaft_ortschftsname_ortschaftsname_von_fkey FOREIGN KEY ( ortschaftsname_von ) REFERENCES live_dm01avso24.plzortschaft_ortschaft DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_ortschaftsname_pos ADD CONSTRAINT plzortschft_rtschftsnm_pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_ortschaftsname_pos ADD CONSTRAINT plzrtschft_rtschftsnm_pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.plzortschaft_ortschaftsname_pos ADD CONSTRAINT plzortschft_rtschftsnm_pos_ortschaftsname_pos_von_fkey FOREIGN KEY ( ortschaftsname_pos_von ) REFERENCES live_dm01avso24.plzortschaft_ortschaftsname DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX plzrtschnchfhrung_identifikator_nbident_key1 ON live_dm01avso24.plzortschaft_plz6nachfuehrung (identifikator,nbident)
;
ALTER TABLE live_dm01avso24.plzortschaft_plz6nachfuehrung ADD CONSTRAINT plzortschaft_plz6nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX plzortschaft_plz6_zusatzziffern_plz_key ON live_dm01avso24.plzortschaft_plz6 (zusatzziffern,plz)
;
ALTER TABLE live_dm01avso24.plzortschaft_plz6 ADD CONSTRAINT plzortschaft_plz6_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_plz6 ADD CONSTRAINT plzortschaft_plz6_plz_check CHECK( plz BETWEEN 1000 AND 9999);
ALTER TABLE live_dm01avso24.plzortschaft_plz6 ADD CONSTRAINT plzortschaft_plz6_zusatzziffern_check CHECK( zusatzziffern BETWEEN 0 AND 99);
ALTER TABLE live_dm01avso24.plzortschaft_plz6 ADD CONSTRAINT plzortschaft_plz6_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.plzortschaft_plz6nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.plzortschaft_plz6 ADD CONSTRAINT plzortschaft_plz6_plz6_von_fkey FOREIGN KEY ( plz6_von ) REFERENCES live_dm01avso24.plzortschaft_ortschaft DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX gebddrssnchfhrung_identifikator_nbident_key ON live_dm01avso24.gebaeudeadressen_gebnachfuehrung (identifikator,nbident)
;
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebnachfuehrung ADD CONSTRAINT gebaeudeadrssn_gbnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_lokalisation ADD CONSTRAINT gebaeudeadressen_loklstion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_lokalisation ADD CONSTRAINT gebaeudeadressen_loklstion_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.gebaeudeadressen_gebnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_lokalisationsname ADD CONSTRAINT gebaeudeadrssn_lklstnsname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_lokalisationsname ADD CONSTRAINT gebaeudeadrssn_lklstnsname_benannte_fkey FOREIGN KEY ( benannte ) REFERENCES live_dm01avso24.gebaeudeadressen_lokalisation DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_lokalisationsnamepos ADD CONSTRAINT gebaeudedrssn_lklstnsnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_lokalisationsnamepos ADD CONSTRAINT gebaeuddrssn_lklstnsnmpos_anfindex_check CHECK( anfindex BETWEEN 1 AND 60);
ALTER TABLE live_dm01avso24.gebaeudeadressen_lokalisationsnamepos ADD CONSTRAINT gebaeuddrssn_lklstnsnmpos_endindex_check CHECK( endindex BETWEEN 1 AND 60);
ALTER TABLE live_dm01avso24.gebaeudeadressen_lokalisationsnamepos ADD CONSTRAINT gebaeuddrssn_lklstnsnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.gebaeudeadressen_lokalisationsnamepos ADD CONSTRAINT gebaeudedrssn_lklstnsnmpos_lokalisationsnamepos_von_fkey FOREIGN KEY ( lokalisationsnamepos_von ) REFERENCES live_dm01avso24.gebaeudeadressen_lokalisationsname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_benanntesgebiet ADD CONSTRAINT gebaeudeadrssn_bnnntsgbiet_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_benanntesgebiet ADD CONSTRAINT gebaeudeadrssn_bnnntsgbiet_benanntesgebiet_von_fkey FOREIGN KEY ( benanntesgebiet_von ) REFERENCES live_dm01avso24.gebaeudeadressen_lokalisation DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_strassenstueck ADD CONSTRAINT gebaeudeadrssn_strssnsteck_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_strassenstueck ADD CONSTRAINT gebaeudedrssn_strssnsteck_ordnung_check CHECK( ordnung BETWEEN 1 AND 999);
ALTER TABLE live_dm01avso24.gebaeudeadressen_strassenstueck ADD CONSTRAINT gebaeudeadrssn_strssnsteck_strassenstueck_von_fkey FOREIGN KEY ( strassenstueck_von ) REFERENCES live_dm01avso24.gebaeudeadressen_lokalisation DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudeeingang ADD CONSTRAINT gebaeudeadressen_gebdngang_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudeeingang ADD CONSTRAINT gebaeudeadressen_gbdngang_hoehenlage_check CHECK( hoehenlage BETWEEN -99 AND 99);
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudeeingang ADD CONSTRAINT gebaeudeadressen_gbdngang_gwr_egid_check CHECK( gwr_egid BETWEEN 1 AND 999999999);
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudeeingang ADD CONSTRAINT gebaeudeadressen_gbdngang_gwr_edid_check CHECK( gwr_edid BETWEEN 0 AND 99);
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudeeingang ADD CONSTRAINT gebaeudeadressen_gebdngang_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live_dm01avso24.gebaeudeadressen_gebnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudeeingang ADD CONSTRAINT gebaeudeadressen_gebdngang_gebaeudeeingang_von_fkey FOREIGN KEY ( gebaeudeeingang_von ) REFERENCES live_dm01avso24.gebaeudeadressen_lokalisation DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_hausnummerpos ADD CONSTRAINT gebaeudeadressen_hsnmmrpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_hausnummerpos ADD CONSTRAINT gebaeudeadressn_hsnmmrpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.gebaeudeadressen_hausnummerpos ADD CONSTRAINT gebaeudeadressen_hsnmmrpos_hausnummerpos_von_fkey FOREIGN KEY ( hausnummerpos_von ) REFERENCES live_dm01avso24.gebaeudeadressen_gebaeudeeingang DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudename ADD CONSTRAINT gebaeudeadressen_gebadname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudename ADD CONSTRAINT gebaeudeadressen_gebadname_gebaeudename_von_fkey FOREIGN KEY ( gebaeudename_von ) REFERENCES live_dm01avso24.gebaeudeadressen_gebaeudeeingang DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudenamepos ADD CONSTRAINT gebaeudeadressen_gebdnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudenamepos ADD CONSTRAINT gebaeudeadressen_gbdnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudenamepos ADD CONSTRAINT gebaeudeadressen_gebdnmpos_gebaeudenamepos_von_fkey FOREIGN KEY ( gebaeudenamepos_von ) REFERENCES live_dm01avso24.gebaeudeadressen_gebaeudename DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudebeschreibung ADD CONSTRAINT gebaeudedrssn_gbdbschrbung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.gebaeudeadressen_gebaeudebeschreibung ADD CONSTRAINT gebaeudedrssn_gbdbschrbung_gebaeudebeschreibung_von_fkey FOREIGN KEY ( gebaeudebeschreibung_von ) REFERENCES live_dm01avso24.gebaeudeadressen_gebaeudeeingang DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX planrhmn_plnlyout_identifikator_nbident_key ON live_dm01avso24.planrahmen_planlayout (identifikator,nbident)
;
ALTER TABLE live_dm01avso24.planrahmen_planlayout ADD CONSTRAINT planrahmen_planlayout_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_planlayout ADD CONSTRAINT planrahmen_planlayout_massstabszahl_check CHECK( massstabszahl BETWEEN 1 AND 1000000);
ALTER TABLE live_dm01avso24.planrahmen_planlayout ADD CONSTRAINT planrahmen_planlayout_e_azimut_check CHECK( e_azimut BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.planrahmen_planlayout ADD CONSTRAINT planrahmen_planlayout_uebersichtmassstabszahl_check CHECK( uebersichtmassstabszahl BETWEEN 1 AND 1000000);
ALTER TABLE live_dm01avso24.planrahmen_planbeschriftung ADD CONSTRAINT planrahmen_planbeschrftung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_planbeschriftung ADD CONSTRAINT planrahmen_planbeschrftung_planbeschriftung_von_fkey FOREIGN KEY ( planbeschriftung_von ) REFERENCES live_dm01avso24.planrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_planbeschriftungpos ADD CONSTRAINT planrahmen_plnbschrftngpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_planbeschriftungpos ADD CONSTRAINT planrahmn_plnbschrftngpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.planrahmen_planbeschriftungpos ADD CONSTRAINT planrahmen_plnbschrftngpos_planbeschriftungpos_von_fkey FOREIGN KEY ( planbeschriftungpos_von ) REFERENCES live_dm01avso24.planrahmen_planbeschriftung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_koordinatenanschrift ADD CONSTRAINT planrahmen_kordntnnschrift_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_koordinatenanschrift ADD CONSTRAINT planrahmen_kordntnnschrift_koordinatenanschrift_von_fkey FOREIGN KEY ( koordinatenanschrift_von ) REFERENCES live_dm01avso24.planrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_koordinatenanschriftpos ADD CONSTRAINT planrahmn_krdntnnschrftpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_koordinatenanschriftpos ADD CONSTRAINT planrhmn_krdntnnschrftpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.planrahmen_koordinatenanschriftpos ADD CONSTRAINT planrahmn_krdntnnschrftpos_koordinatenanschriftps_von_fkey FOREIGN KEY ( koordinatenanschriftpos_von ) REFERENCES live_dm01avso24.planrahmen_koordinatenanschrift DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_linienobjekt ADD CONSTRAINT planrahmen_linienobjekt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_linienobjekt ADD CONSTRAINT planrahmen_linienobjekt_linienobjekt_von_fkey FOREIGN KEY ( linienobjekt_von ) REFERENCES live_dm01avso24.planrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_koordinatenlinie ADD CONSTRAINT planrahmen_koordinatenlnie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_koordinatenlinie ADD CONSTRAINT planrahmen_koordinatenlnie_koordinatenlinie_von_fkey FOREIGN KEY ( koordinatenlinie_von ) REFERENCES live_dm01avso24.planrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_darstellungsflaeche ADD CONSTRAINT planrahmen_darstllngsflche_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_darstellungsflaeche ADD CONSTRAINT planrahmen_darstllngsflche_darstellungsflaeche_von_fkey FOREIGN KEY ( darstellungsflaeche_von ) REFERENCES live_dm01avso24.planrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_planlayoutsymbol ADD CONSTRAINT planrahmen_planlayotsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_planlayoutsymbol ADD CONSTRAINT planrahmen_planlaytsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.planrahmen_planlayoutsymbol ADD CONSTRAINT planrahmen_planlayotsymbol_planlayoutsymbol_von_fkey FOREIGN KEY ( planlayoutsymbol_von ) REFERENCES live_dm01avso24.planrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_netzkreuz ADD CONSTRAINT planrahmen_netzkreuz_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.planrahmen_netzkreuz ADD CONSTRAINT planrahmen_netzkreuz_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live_dm01avso24.planrahmen_netzkreuz ADD CONSTRAINT planrahmen_netzkreuz_netzkreuz_von_fkey FOREIGN KEY ( netzkreuz_von ) REFERENCES live_dm01avso24.planrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES live_dm01avso24.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON live_dm01avso24.T_ILI2DB_DATASET (datasetName)
;
ALTER TABLE live_dm01avso24.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_importrun_fkey FOREIGN KEY ( importrun ) REFERENCES live_dm01avso24.T_ILI2DB_IMPORT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live_dm01avso24.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_basket_fkey FOREIGN KEY ( basket ) REFERENCES live_dm01avso24.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_modelName_iliversion_key ON live_dm01avso24.T_ILI2DB_MODEL (modelName,iliversion)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_ColOwner_SqlName_key ON live_dm01avso24.T_ILI2DB_ATTRNAME (ColOwner,SqlName)
;
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.Gelaendekante','hoehen_gelaendekante');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.SelbstRechtSelbstRecht_von','liegenschaften_selbstrechtselbstrecht_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.Linientyp','planrahmen_linientyp');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung','liegenschaften_lsnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rutschgebiete.Rutschung','rutschgebiete_rutschung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.Darstellungsflaeche.Auswahlart','planrahmen_darstellungsflaeche_auswahlart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Nachfuehrung','fixpunktekatgrie2_hfp2nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.Leitungsobjekt','rohrleitungen_leitungsobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstuecksart','liegenschaften_grundstuecksart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.LinienelementLinienelement_von','rohrleitungen_linienelementlinienelement_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plan','planeinteilungen_plan');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Entstehung','fixpunktekatgrie2_hfp2entstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheSymbolProjBoFlaecheSymbol_von','bodenbedeckung_projboflaechesymbolprojboflaechesymbol_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Status','astatus');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktSymbol','gemeindegrenzen_hoheitsgrenzpunktsymbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GemeindegrenzeEntstehung','gemeindegrenzen_gemeindegrenzeentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib3.Linienart','liegenschaften_lineattrib3_linienart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.NKNachfuehrung','nomenklatur_nknachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.Im_Gebaeude','gebaeudeadrssen_gebaeudeeingang_im_gebaeude');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Pos','fixpunktekatgrie2_lfp2pos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.LineAttrib7','rohrleitungen_lineattrib7');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnameObjektname_von','bodenbedeckung_objektnameobjektname_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Nachfuehrung','plzortschaft_plz6nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2','fixpunktekatgrie2_hfp2');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.Nummerierungsprinzip','gebaeudeadrssen_lokalisation_nummerierungsprinzip');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPosHilfsfixpunktPos_von','fixpunktekatgrie3_hilfsfixpunktposhilfsfixpunktpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktEntstehung','rohrleitungen_einzelpunktentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Landesgrenzen.Landesgrenzabschnitt.Gueltigkeit','landesgrenzen_landesgrenzabschnitt_gueltigkeit');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementFlaechenelement_von','einzelobjekte_flaechenelementflaechenelement_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbund','plzortschaft_ortschaftsverbund');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Gemeindegrenze','gemeindegrenzen_gemeindegrenze');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerProjGebaeudenummer_von','bodenbedeckung_projgebaeudenummerprojgebaeudenummer_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.BenanntesGebietBenanntesGebiet_von','gebaeudeadressen_benanntesgebietbenanntesgebiet_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib4.Linienart','liegenschaften_lineattrib4_linienart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6PLZ6_von','plzortschaft_plz6plz6_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPosObjektnummerPos_von','einzelobjekte_objektnummerposobjektnummerpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.Hoehenpunkt','hoehen_hoehenpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Kantonsgrenzen.Kantonsgrenzabschnitt.Gueltigkeit','kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummer','bodenbedeckung_projgebaeudenummer');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePosObjektnamePos_von','bodenbedeckung_objektnameposobjektnamepos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Zuverlaessigkeit','zuverlaessigkeit');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Entstehung','fixpunktekatgrie3_hfp3entstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPos','bodenbedeckung_gebaeudenummerpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.Signalpunkt','rohrleitungen_signalpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktEntstehung','rohrleitungen_signalpunktentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NBGeometrieNBGeometrie_von','nummerierngsbrche_nbgeometrienbgeometrie_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.InAenderung','gebaeudeadrssen_lokalisation_inaenderung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt','fixpunktekatgrie3_hilfsfixpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib1.Linienart','liegenschaften_lineattrib1_linienart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.Planbeschriftung','planrahmen_planbeschriftung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsFPNachfuehrung','fixpunktekatgrie3_hilfsfpnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt','gemeindegrenzen_hoheitsgrenzpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenzeProjGemeindegrenze_von','gemeindegrenzen_projgemeindegrenzeprojgemeindegrenze_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenze','gemeindegrenzen_projgemeindegrenze');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPos','gebaeudeadressen_hausnummerpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.BergwerkBergwerk_von','liegenschaften_bergwerkbergwerk_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.Objektname','einzelobjekte_objektname');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.Nummerierungsbereich','nummerierngsbrche_nummerierungsbereich');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Pos','fixpunktekatgrie3_hfp3pos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjSelbstRecht','liegenschaften_projselbstrecht');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePos','bodenbedeckung_objektnamepos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPos','einzelobjekte_objektnummerpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.Linienelement','einzelobjekte_linienelement');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.Einzelpunkt.ExaktDefiniert','rohrleitungen_einzelpunkt_exaktdefiniert');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPosProjGrundstueckPos_von','liegenschaften_projgrundstueckposprojgrundstueckpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementSymbolLinienelementSymbol_von','einzelobjekte_linienelementsymbollinienelementsymbol_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.Kreuzart','planrahmen_kreuzart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePosGebaeudeNamePos_von','gebaeudeadressen_gebaeudenameposgebaeudenamepos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck','liegenschaften_grundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPosGrenzpunktPos_von','liegenschaften_grenzpunktposgrenzpunktpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1','fixpunktekatgrie1_lfp1');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1SymbolLFP1Symbol_von','fixpunktekatgrie1_lfp1symbollfp1symbol_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.Koordinatenanschrift','planrahmen_koordinatenanschrift');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerObjektnummer_von','einzelobjekte_objektnummerobjektnummer_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPos','rohrleitungen_einzelpunktpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.GelaendekanteEntstehung','hoehen_gelaendekanteentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckEntstehung','liegenschaften_grundstueckentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.Symbolart','planrahmen_symbolart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPosRutschungPos_von','rutschgebiete_rutschungposrutschungpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftOrtschaft_von','plzortschaft_ortschaftortschaft_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenLinieKoordinatenLinie_von','planrahmen_koordinatenliniekoordinatenlinie_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPos','planrahmen_planbeschriftungpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Symbol','fixpunktekatgrie2_lfp2symbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.AttributeProvisorisch','gebaeudeadrssen_lokalisation_attributeprovisorisch');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Sprachtyp','sprachtyp');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheEntstehung','bodenbedeckung_boflaecheentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Pos','fixpunktekatgrie1_hfp1pos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib6.Linienart','liegenschaften_lineattrib6_linienart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPosGebaeudenummerPos_von','bodenbedeckung_gebaeudenummerposgebaeudenummerpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.Medium','rohrleitungen_medium');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheSymbolBoFlaecheSymbol_von','bodenbedeckung_boflaechesymbolboflaechesymbol_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_Pos','plzortschaft_ortschaftsname_pos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPosPlanPos_von','planeinteilungen_planposplanpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBArt','bodenbedeckung_bbart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.Signalpunkt.Punktart','rohrleitungen_signalpunkt_punktart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3PosLFP3Pos_von','fixpunktekatgrie3_lfp3poslfp3pos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktEntstehung','einzelobjekte_einzelpunktentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.PunktelementPunktelement_von','einzelobjekte_punktelementpunktelement_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.Einzelpunkt','rohrleitungen_einzelpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPosSignalpunktPos_von','rohrleitungen_signalpunktpossignalpunktpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPosEinzelpunktPos_von','rohrleitungen_einzelpunktposeinzelpunktpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektname','bodenbedeckung_projobjektname');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.Aussparung','hoehen_aussparung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenzeEntstehung','gemeindegrenzen_projgemeindegrenzeentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePosGelaendenamePos_von','nomenklatur_gelaendenameposgelaendenamepos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPos','planeinteilungen_planpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaeche','bodenbedeckung_projboflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2SymbolLFP2Symbol_von','fixpunktekatgrie2_lfp2symbollfp2symbol_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPosEinzelpunktPos_von','einzelobjekte_einzelpunktposeinzelpunktpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeBeschreibungGebaeudeBeschreibung_von','gebaeudeadressen_gebaeudebeschreibunggebaeudebeschreibng_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.TSEinteilung.Toleranzstufe.Art','tseinteilung_toleranzstufe_art');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjLiegenschaft','liegenschaften_projliegenschaft');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von','plzortschaft_ortschaftsnameortschaftsname_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNameGebaeudeName_von','gebaeudeadressen_gebaeudenamegebaeudename_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Gemeinde','gemeindegrenzen_gemeinde');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6','plzortschaft_plz6');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePosProjObjektnamePos_von','bodenbedeckung_projobjektnameposprojobjektnamepos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung','rohrleitungen_rlnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPos','bodenbedeckung_projgebaeudenummerpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftKoordinatenanschrift_von','planrahmen_koordinatenanschriftkoordinatenanschrift_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3','fixpunktekatgrie3_lfp3');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName','plzortschaft_ortschaftsname');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck.Vollstaendigkeit','liegenschaften_grundstueck_vollstaendigkeit');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Versicherungsart','versicherungsart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.LineAttrib8.Linienart','gemeindegrenzen_lineattrib8_linienart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib5.Linienart','liegenschaften_lineattrib5_linienart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.Ortsname','nomenklatur_ortsname');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.Punktelement','rohrleitungen_punktelement');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheSymbol','bodenbedeckung_boflaechesymbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPos','liegenschaften_grundstueckpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.Liegenschaft','liegenschaften_liegenschaft');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.PunktelementPunktelement_von','rohrleitungen_punktelementpunktelement_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Strassenstueck.IstAchse','gebaeudeadrssen_strassenstueck_istachse');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPos','liegenschaften_grenzpunktpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Einzelpunkt','bodenbedeckung_einzelpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2','fixpunktekatgrie2_lfp2');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktSymbol','fixpunktekatgrie3_hilfsfixpunktsymbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPosProjGebaeudenummerPos_von','bodenbedeckung_projgebaeudenummerposprojgebaeudenummerps_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung','gemeindegrenzen_gemnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPosHoehenpunktPos_von','hoehen_hoehenpunktposhoehenpunktpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.LinienobjektLinienobjekt_von','planrahmen_linienobjektlinienobjekt_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPosHausnummerPos_von','gebaeudeadressen_hausnummerposhausnummerpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.Aussparung.Art','hoehen_aussparung_art');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos','gebaeudeadressen_lokalisationsnamepos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Strassenstueck','gebaeudeadressen_strassenstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktSymbolGrenzpunktSymbol_von','liegenschaften_grenzpunktsymbolgrenzpunktsymbol_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2PosHFP2Pos_von','fixpunktekatgrie2_hfp2poshfp2pos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt','liegenschaften_grenzpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plangeometrie','planeinteilungen_plangeometrie');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation','gebaeudeadressen_lokalisation');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayoutSymbolPlanLayoutSymbol_von','planrahmen_planlayoutsymbolplanlayoutsymbol_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.Kantonskuerzel','nummerierngsbrche_kantonskuerzel');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1','fixpunktekatgrie1_hfp1');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckEntstehung','liegenschaften_projgrundstueckentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelpunkt','einzelobjekte_einzelpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjSelbstRechtProjSelbstRecht_von','liegenschaften_projselbstrechtprojselbstrecht_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktSymbol','liegenschaften_grenzpunktsymbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Pos','fixpunktekatgrie2_hfp2pos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaeche','bodenbedeckung_boflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.Gelaendename','nomenklatur_gelaendename');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayoutSymbol','planrahmen_planlayoutsymbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnameEntstehung','nomenklatur_flurnameentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.AttributeProvisorisch','gebaeudeadrssen_gebaeudeeingang_attributeprovisorisch');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Pos','fixpunktekatgrie1_lfp1pos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('INTERLIS.VALIGNMENT','valignment');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.Flaechenelement','rohrleitungen_flaechenelement');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt.HoheitsgrenzsteinAlt','liegenschaften_grenzpunkt_hoheitsgrenzsteinalt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.Ortschaft.InAenderung','plzortschaft_ortschaft_inaenderung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnameObjektname_von','einzelobjekte_objektnameobjektname_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjBergwerkProjBergwerk_von','liegenschaften_projbergwerkprojbergwerk_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnameEntstehung','nomenklatur_ortsnameentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung','bodenbedeckung_bbnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.Darstellungsflaeche','planrahmen_darstellungsflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePos','tseinteilung_toleranzstufepos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsName','gebaeudeadressen_lokalisationsname');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Entstehung','fixpunktekatgrie2_lfp2entstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPos','rohrleitungen_leitungsobjektpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenLinie','planrahmen_koordinatenlinie');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.Flaechenelement','einzelobjekte_flaechenelement');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeBeschreibung','gebaeudeadressen_gebaeudebeschreibung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.BenanntesGebiet','gebaeudeadressen_benanntesgebiet');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.Bergwerk','liegenschaften_bergwerk');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Einzelpunkt.ExaktDefiniert','bodenbedeckung_einzelpunkt_exaktdefiniert');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlangeometriePlangeometrie_von','planeinteilungen_plangeometrieplangeometrie_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.EONachfuehrung','einzelobjekte_eonachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerGebaeudenummer_von','bodenbedeckung_gebaeudenummergebaeudenummer_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPos','bodenbedeckung_einzelpunktpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPlanbeschriftung_von','planrahmen_planbeschriftungplanbeschriftung_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.IstOffizielleBezeichnung','gebaeudeadrssen_lokalisation_istoffiziellebezeichnung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePos','nomenklatur_ortsnamepos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktSymbolHoheitsgrenzpunktSymbol_von','gemeindegrenzen_hoheitsgrenzpunktsymbolhhtsgrnzpnktsymbl_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Pos','fixpunktekatgrie3_lfp3pos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPosKoordinatenanschriftPos_von','planrahmen_koordinatenanschriftposkoordinatenanschriftps_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von','plzortschaft_ortschaftsverbundtextortschaftsverbundtext_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePos','nomenklatur_gelaendenamepos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2PosLFP2Pos_von','fixpunktekatgrie2_lfp2poslfp2pos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.FlaechenelementFlaechenelement_von','rohrleitungen_flaechenelementflaechenelement_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePosLokalisationsNamePos_von','gebaeudeadressen_lokalisationsnameposlokalisationsnameps_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePos','gebaeudeadressen_gebaeudenamepos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationEntstehung','gebaeudeadressen_lokalisationentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck.Gueltigkeit','liegenschaften_projgrundstueck_gueltigkeit');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3','fixpunktekatgrie3_hfp3');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck.Vollstaendigkeit','liegenschaften_projgrundstueck_vollstaendigkeit');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.Begehbarkeit','fixpunktktgrie2_lfp2_begehbarkeit');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.SelbstRecht','liegenschaften_selbstrecht');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.Ortschaft','plzortschaft_ortschaft');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPos','fixpunktekatgrie3_hilfsfixpunktpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPosGrundstueckPos_von','liegenschaften_grundstueckposgrundstueckpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Gebaeudenummer','bodenbedeckung_gebaeudenummer');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPos','gemeindegrenzen_hoheitsgrenzpunktpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Landesgrenzen.Landesgrenzabschnitt','landesgrenzen_landesgrenzabschnitt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.DarstellungsflaecheDarstellungsflaeche_von','planrahmen_darstellungsflaechedarstellungsflaeche_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Schriftgroesse','schriftgroesse');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbundText','plzortschaft_ortschaftsverbundtext');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPos','rutschgebiete_rutschungpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck.Gueltigkeit','liegenschaften_grundstueck_gueltigkeit');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePos','einzelobjekte_objektnamepos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Entstehung','plzortschaft_plz6entstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.Beschriftungsart','planrahmen_beschriftungsart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktEntstehung','liegenschaften_grenzpunktentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt.Hoheitsgrenzstein','gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1PosLFP1Pos_von','fixpunktekatgrie1_lfp1poslfp1pos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.Begehbarkeit','fixpunktktgrie1_lfp1_begehbarkeit');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.Protokoll','fixpunktktgrie3_lfp3_protokoll');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von','nummerierngsbrche_nummerierungsbereichposnummrrngsbrchps_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktEntstehung','hoehen_hoehenpunktentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftEntstehung','plzortschaft_ortschaftentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePos','nomenklatur_flurnamepos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Status_GA','status_ga');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNameBenannte','gebaeudeadressen_lokalisationsnamebenannte');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPos','rohrleitungen_signalpunktpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPos','planrahmen_koordinatenanschriftpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.LineAttrib8','gemeindegrenzen_lineattrib8');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementSymbolFlaechenelementSymbol_von','einzelobjekte_flaechenelementsymbolflaechenelementsymbol_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePosFlurnamePos_von','nomenklatur_flurnameposflurnamepos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.InAenderung','gebaeudeadrssen_gebaeudeeingang_inaenderung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.Netzkreuz','planrahmen_netzkreuz');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePosToleranzstufePos_von','tseinteilung_toleranzstufepostoleranzstufepos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Nachfuehrung','fixpunktekatgrie3_lfp3nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Symbol','fixpunktekatgrie3_lfp3symbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktSymbolHilfsfixpunktSymbol_von','fixpunktekatgrie3_hilfsfixpunktsymbolhilfsfixpunktsymbol_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Objektname','bodenbedeckung_objektname');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnameProjObjektname_von','bodenbedeckung_projobjektnameprojobjektname_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPosLeitungsobjektPos_von','rohrleitungen_leitungsobjektposleitungsobjektpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Mit_Koordinatennetz','planrahmen_planlayout_mit_koordinatennetz');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt.ExaktDefiniert','gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.Art','gebaeudeadrssen_lokalisation_art');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Nachfuehrung','fixpunktekatgrie1_hfp1nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NBGeometrie','nummerierngsbrche_nbgeometrie');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang','gebaeudeadressen_gebaeudeeingang');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt.ExaktDefiniert','liegenschaften_grenzpunkt_exaktdefiniert');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1PosHFP1Pos_von','fixpunktekatgrie1_hfp1poshfp1pos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bezirksgrenzen.Bezirksgrenzabschnitt.Gueltigkeit','bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6.InAenderung','plzortschaft_plz6_inaenderung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OSNachfuehrung','plzortschaft_osnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelobjektEntstehung','einzelobjekte_einzelobjektentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktEntstehung','fixpunktekatgrie3_hilfsfixpunktentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktEntstehung','gemeindegrenzen_hoheitsgrenzpunktentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktEntstehung','bodenbedeckung_einzelpunktentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.Gelaendekante.Art','hoehen_gelaendekante_art');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementSymbol','einzelobjekte_linienelementsymbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektEntstehung','rohrleitungen_leitungsobjektentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bezirksgrenzen.Bezirksgrenzabschnitt','bezirksgrenzen_bezirksgrenzabschnitt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPosEinzelpunktPos_von','bodenbedeckung_einzelpunktposeinzelpunktpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.StrassenstueckStrassenstueck_von','gebaeudeadressen_strassenstueckstrassenstueck_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GEBNachfuehrung','gebaeudeadressen_gebnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.LineAttrib7.Linienart','rohrleitungen_lineattrib7_linienart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.Protokoll','fixpunktktgrie3_hilfsfixpunkt_protokoll');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.Objektnummer','einzelobjekte_objektnummer');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.Linienelement','rohrleitungen_linienelement');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Nachfuehrung','fixpunktekatgrie3_hfp3nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3SymbolLFP3Symbol_von','fixpunktekatgrie3_lfp3symbollfp3symbol_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Schriftstil','schriftstil');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelpunkt.ExaktDefiniert','einzelobjekte_einzelpunkt_exaktdefiniert');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Entstehung','fixpunktekatgrie3_lfp3entstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheEntstehung','bodenbedeckung_projboflaecheentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Rohrleitungen.Linienelement.Linienart','rohrleitungen_linienelement_linienart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementLinienelement_von','einzelobjekte_linienelementlinienelement_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjLiegenschaftProjLiegenschaft_von','liegenschaften_projliegenschaftprojliegenschaft_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPos','nummerierngsbrche_nummerierungsbereichpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Kantonsgrenzen.Kantonsgrenzabschnitt','kantonsgrenzen_kantonsgrenzabschnitt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Nachfuehrung','fixpunktekatgrie2_lfp2nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3PosHFP3Pos_von','fixpunktekatgrie3_hfp3poshfp3pos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.IstOffizielleBezeichnung','gebaeudeadrssen_gebaeudeeingang_istoffiziellebezeichnung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('INTERLIS.HALIGNMENT','halignment');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.Punktelement','einzelobjekte_punktelement');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.HONachfuehrung','hoehen_honachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPos','hoehen_hoehenpunktpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck','liegenschaften_projgrundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Nachfuehrung','fixpunktekatgrie1_lfp1nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LiegenschaftLiegenschaft_von','liegenschaften_liegenschaftliegenschaft_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenameEntstehung','nomenklatur_gelaendenameentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Hoehen.AussparungEntstehung','hoehen_aussparungentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjBergwerk','liegenschaften_projbergwerk');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePos','bodenbedeckung_projobjektnamepos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheSymbol','bodenbedeckung_projboflaechesymbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeeingangGebaeudeeingang_von','gebaeudeadressen_gebaeudeeinganggebaeudeeingang_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.TSEinteilung.Toleranzstufe','tseinteilung_toleranzstufe');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPos','liegenschaften_projgrundstueckpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.EOArt','einzelobjekte_eoart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeName','gebaeudeadressen_gebaeudename');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.Linienobjekt','planrahmen_linienobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.NetzkreuzNetzkreuz_von','planrahmen_netzkreuznetzkreuz_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Entstehung','fixpunktekatgrie1_hfp1entstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePosOrtsnamePos_von','nomenklatur_ortsnameposortsnamepos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelobjekt','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Nomenklatur.Flurname','nomenklatur_flurname');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Entstehung','fixpunktekatgrie1_lfp1entstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementSymbol','einzelobjekte_flaechenelementsymbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von','plzortschaft_ortschaftsname_posortschaftsname_pos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePosObjektnamePos_von','einzelobjekte_objektnameposobjektnamepos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPosPlanbeschriftungPos_von','planrahmen_planbeschriftungposplanbeschriftungpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Qualitaetsstandard','qualitaetsstandard');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Symbol','fixpunktekatgrie1_lfp1symbol');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPos','einzelobjekte_einzelpunktpos');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GemeindegrenzeGemeindegrenze_von','gemeindegrenzen_gemeindegrenzegemeindegrenze_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib5','liegenschaften_lineattrib5');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib6','liegenschaften_lineattrib6');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib3','liegenschaften_lineattrib3');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib2.Linienart','liegenschaften_lineattrib2_linienart');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib4','liegenschaften_lineattrib4');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPosHoheitsgrenzpunktPos_von','gemeindegrenzen_hoheitsgrenzpunktposhoheitsgrenzpunktpos_von');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib1','liegenschaften_lineattrib1');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeeingangEntstehung','gebaeudeadressen_gebaeudeeingangentstehung');
INSERT INTO live_dm01avso24.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib2','liegenschaften_lineattrib2');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Nachfuehrung.NBIdent','nbident','fixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.NKNachfuehrung.NBIdent','nbident','nomenklatur_nknachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung.Gueltigkeit','gueltigkeit','gemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Pos.VAli','vali','fixpunktekatgrie1_lfp1pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Leitungsobjekt.Betreiber','betreiber','rohrleitungen_leitungsobjekt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung.Perimeter','perimeter','liegenschaften_lsnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayoutSymbol.Ori','ori','planrahmen_planlayoutsymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.HoeheGen','hoehegen','fixpunktekatgrie1_lfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GEBNachfuehrung.GueltigerEintrag','gueltigereintrag','gebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePos.Ori','ori','gebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos.Hilfslinie','hilfslinie','gebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsFPNachfuehrung.NBIdent','nbident','fixpunktekatgrie3_hilfsfpnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.Nummer','nummer','fixpunktekatgrie3_hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaeche.Geometrie','geometrie','bodenbedeckung_projboflaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OSNachfuehrung.GueltigerEintrag','gueltigereintrag','plzortschaft_osnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Objektnummer.GWR_EGID','gwr_egid','einzelobjekte_objektnummer',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plan.NBIdent','nbident','planeinteilungen_plan',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Pos.Ori','ori','fixpunktekatgrie1_hfp1pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Erstellungsdatum','erstellungsdatum','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPos.HAli','hali','rohrleitungen_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayoutSymbolPlanLayoutSymbol_von.PlanLayoutSymbol_von','planlayoutsymbol_von','planrahmen_planlayoutsymbol','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Nachfuehrung.NBIdent','nbident','fixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Pos.HAli','hali','fixpunktekatgrie3_lfp3pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.NKNachfuehrung.Identifikator','identifikator','nomenklatur_nknachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePos.HAli','hali','nomenklatur_gelaendenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePos.VAli','vali','tseinteilung_toleranzstufepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationEntstehung.Entstehung','entstehung','gebaeudeadressen_lokalisation','gebaeudeadressen_gebnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Pos.Ori','ori','fixpunktekatgrie1_lfp1pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3.LageGen','lagegen','fixpunktekatgrie3_hfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePos.VAli','vali','bodenbedeckung_projobjektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.Protokoll','protokoll','fixpunktekatgrie3_lfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePosLokalisationsNamePos_von.LokalisationsNamePos_von','lokalisationsnamepos_von','gebaeudeadressen_lokalisationsnamepos','gebaeudeadressen_lokalisationsname');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayoutSymbol.Pos','pos','planrahmen_planlayoutsymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktEntstehung.Entstehung','entstehung','rohrleitungen_signalpunkt','rohrleitungen_rlnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Linienelement.Linienart','linienart','rohrleitungen_linienelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1.Nummer','nummer','fixpunktekatgrie1_hfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EONachfuehrung.Gueltigkeit','gueltigkeit','einzelobjekte_eonachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Strassenstueck.Anfangspunkt','anfangspunkt','gebaeudeadressen_strassenstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EONachfuehrung.Identifikator','identifikator','einzelobjekte_eonachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPos.HAli','hali','planrahmen_koordinatenanschriftpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPos.VAli','vali','planrahmen_planbeschriftungpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung.Perimeter','perimeter','gemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.Rutschung.Geometrie','geometrie','rutschgebiete_rutschung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Pos.HAli','hali','fixpunktekatgrie1_hfp1pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeeingangGebaeudeeingang_von.Gebaeudeeingang_von','gebaeudeeingang_von','gebaeudeadressen_gebaeudeeingang','gebaeudeadressen_lokalisation');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GEBNachfuehrung.NBIdent','nbident','gebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.InAenderung','inaenderung','gebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Bergwerk.Flaechenmass','flaechenmass','liegenschaften_bergwerk',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1.Geometrie','geometrie','fixpunktekatgrie1_hfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.Linienobjekt.Art','art','planrahmen_linienobjekt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePos.Groesse','groesse','bodenbedeckung_objektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3.Geometrie','geometrie','fixpunktekatgrie3_hfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt.LageZuv','lagezuv','liegenschaften_grenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPosLeitungsobjektPos_von.LeitungsobjektPos_von','leitungsobjektpos_von','rohrleitungen_leitungsobjektpos','rohrleitungen_leitungsobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.Im_Gebaeude','im_gebaeude','gebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2.Geometrie','geometrie','fixpunktekatgrie2_hfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.Geometrie','geometrie','fixpunktekatgrie3_hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Leitungsobjekt.Art','art','rohrleitungen_leitungsobjekt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OSNachfuehrung.Perimeter','perimeter','plzortschaft_osnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePos.Groesse','groesse','gebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Liegenschaft.Flaechenmass','flaechenmass','liegenschaften_liegenschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Einzelpunkt.ExaktDefiniert','exaktdefiniert','rohrleitungen_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheSymbolProjBoFlaecheSymbol_von.ProjBoFlaecheSymbol_von','projboflaechesymbol_von','bodenbedeckung_projboflaechesymbol','bodenbedeckung_projboflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPos.VAli','vali','gebaeudeadressen_hausnummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.HoeheZuv','hoehezuv','fixpunktekatgrie3_lfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.Rutschung.GueltigerEintrag','gueltigereintrag','rutschgebiete_rutschung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPos.Ori','ori','nummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.Punktzeichen','punktzeichen','fixpunktekatgrie3_hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.LiegenschaftLiegenschaft_von.Liegenschaft_von','liegenschaft_von','liegenschaften_liegenschaft','liegenschaften_grundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1.LageZuv','lagezuv','fixpunktekatgrie1_hfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummer.Nummer','nummer','bodenbedeckung_projgebaeudenummer',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktEntstehung.Entstehung','entstehung','hoehen_hoehenpunkt','hoehen_honachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.NKNachfuehrung.Beschreibung','beschreibung','nomenklatur_nknachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPos.VAli','vali','bodenbedeckung_projgebaeudenummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Nachfuehrungsdatum','nachfuehrungsdatum','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.LageGen','lagegen','fixpunktekatgrie2_lfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6.Zusatzziffern','zusatzziffern','plzortschaft_plz6',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.NBIdent','nbident','fixpunktekatgrie3_hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.SelbstRecht.NummerTeilGrundstueck','nummerteilgrundstueck','liegenschaften_selbstrecht',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeBeschreibung.Text','atext','gebaeudeadressen_gebaeudebeschreibung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.UebersichtMassstabszahl','uebersichtmassstabszahl','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPos.Pos','pos','nummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_Pos.HAli','hali','plzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Gemeindename','gemeindename','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NBGeometrie.Geometrie','geometrie','nummerierngsbrche_nbgeometrie',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaeche.Art','art','bodenbedeckung_boflaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt.Identifikator','identifikator','gemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePos.Ori','ori','tseinteilung_toleranzstufepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2.LageGen','lagegen','fixpunktekatgrie2_hfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.Hoehenpunkt.Geometrie','geometrie','hoehen_hoehenpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelpunkt.Identifikator','identifikator','einzelobjekte_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPos.Groesse','groesse','gebaeudeadressen_hausnummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung.GueltigerEintrag','gueltigereintrag','liegenschaften_lsnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3.HoeheGen','hoehegen','fixpunktekatgrie3_hfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Entstehung.Entstehung','entstehung','fixpunktekatgrie1_hfp1','fixpunktekatgrie1_hfp1nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPosProjGrundstueckPos_von.ProjGrundstueckPos_von','projgrundstueckpos_von','liegenschaften_projgrundstueckpos','liegenschaften_projgrundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Punktelement.Ori','ori','rohrleitungen_punktelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummer.GWR_EGID','gwr_egid','bodenbedeckung_projgebaeudenummer',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePos.Pos','pos','tseinteilung_toleranzstufepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjLiegenschaft.Geometrie','geometrie','liegenschaften_projliegenschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Objektnummer.Nummer','nummer','einzelobjekte_objektnummer',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1.HoeheGen','hoehegen','fixpunktekatgrie1_hfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPos.HAli','hali','planrahmen_planbeschriftungpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.AttributeProvisorisch','attributeprovisorisch','gebaeudeadressen_lokalisation',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsFPNachfuehrung.GueltigerEintrag','gueltigereintrag','fixpunktekatgrie3_hilfsfpnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementFlaechenelement_von.Flaechenelement_von','flaechenelement_von','einzelobjekte_flaechenelement','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Nachfuehrung.Gueltigkeit','gueltigkeit','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePos.Groesse','groesse','bodenbedeckung_projobjektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPos.Pos','pos','hoehen_hoehenpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePos.Stil','stil','nomenklatur_flurnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Nachfuehrung.Datum1','datum1','fixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Nachfuehrung.Beschreibung','beschreibung','fixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPos.VAli','vali','bodenbedeckung_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPos.Ori','ori','einzelobjekte_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerProjGebaeudenummer_von.ProjGebaeudenummer_von','projgebaeudenummer_von','bodenbedeckung_projgebaeudenummer','bodenbedeckung_projboflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPosHoehenpunktPos_von.HoehenpunktPos_von','hoehenpunktpos_von','hoehen_hoehenpunktpos','hoehen_hoehenpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Nachfuehrung.Datum1','datum1','fixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2.HoeheZuv','hoehezuv','fixpunktekatgrie2_hfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPos.HAli','hali','fixpunktekatgrie3_hilfsfixpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsFPNachfuehrung.Datum1','datum1','fixpunktekatgrie3_hilfsfpnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.HoeheGen','hoehegen','fixpunktekatgrie3_hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPos.Ori','ori','hoehen_hoehenpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt.Punktzeichen','punktzeichen','gemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktSymbolGrenzpunktSymbol_von.GrenzpunktSymbol_von','grenzpunktsymbol_von','liegenschaften_grenzpunktsymbol','liegenschaften_grenzpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Punktelement.Geometrie','geometrie','einzelobjekte_punktelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung.Identifikator','identifikator','liegenschaften_lsnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Nachfuehrung.Datum1','datum1','fixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OSNachfuehrung.Beschreibung','beschreibung','plzortschaft_osnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPos.Pos','pos','bodenbedeckung_gebaeudenummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GemeindegrenzeGemeindegrenze_von.Gemeindegrenze_von','gemeindegrenze_von','gemeindegrenzen_gemeindegrenze','gemeindegrenzen_gemeinde');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsFPNachfuehrung.Identifikator','identifikator','fixpunktekatgrie3_hilfsfpnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.Ortsname.Typ','typ','nomenklatur_ortsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePos.VAli','vali','nomenklatur_ortsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPos.Pos','pos','fixpunktekatgrie3_hilfsfixpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPos.Ori','ori','bodenbedeckung_gebaeudenummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Pos.Pos','pos','fixpunktekatgrie1_hfp1pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPos.Pos','pos','bodenbedeckung_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPos.Groesse','groesse','rohrleitungen_leitungsobjektpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos.AnfIndex','anfindex','gebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.SelbstRecht.Geometrie','geometrie','liegenschaften_selbstrecht',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPos.Ori','ori','bodenbedeckung_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.IstOffizielleBezeichnung','istoffiziellebezeichnung','gebaeudeadressen_lokalisation',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePos.Ori','ori','einzelobjekte_objektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.Toleranzstufe.Identifikator','identifikator','tseinteilung_toleranzstufe',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPos.HAli','hali','liegenschaften_projgrundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt.Hoheitsgrenzstein','hoheitsgrenzstein','gemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Landesgrenzen.Landesgrenzabschnitt.Gueltigkeit','gueltigkeit','landesgrenzen_landesgrenzabschnitt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePos.Pos','pos','einzelobjekte_objektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung.Gueltigkeit','gueltigkeit','rohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePosToleranzstufePos_von.ToleranzstufePos_von','toleranzstufepos_von','tseinteilung_toleranzstufepos','tseinteilung_toleranzstufe');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjLiegenschaft.Flaechenmass','flaechenmass','liegenschaften_projliegenschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Nachfuehrung.GueltigerEintrag','gueltigereintrag','fixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnameObjektname_von.Objektname_von','objektname_von','einzelobjekte_objektname','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.NKNachfuehrung.Perimeter','perimeter','nomenklatur_nknachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Signalpunkt.Qualitaet','qualitaet','rohrleitungen_signalpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Punktelement.HoeheGeom','hoehegeom','rohrleitungen_punktelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePos.Pos','pos','gebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2SymbolLFP2Symbol_von.LFP2Symbol_von','lfp2symbol_von','fixpunktekatgrie2_lfp2symbol','fixpunktekatgrie2_lfp2');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Nachfuehrung.Datum1','datum1','fixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.Gelaendename.Name','aname','nomenklatur_gelaendename',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OSNachfuehrung.Gueltigkeit','gueltigkeit','plzortschaft_osnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.SelbstRecht.Flaechenmass','flaechenmass','liegenschaften_selbstrecht',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck.EGRIS_EGRID','egris_egrid','liegenschaften_projgrundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Nachfuehrung.Identifikator','identifikator','fixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Nachfuehrung.Beschreibung','beschreibung','fixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPosRutschungPos_von.RutschungPos_von','rutschungpos_von','rutschgebiete_rutschungpos','rutschgebiete_rutschung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos.EndIndex','endindex','gebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Geometername','geometername','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.E_Azimut','e_azimut','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.DarstellungsflaecheDarstellungsflaeche_von.Darstellungsflaeche_von','darstellungsflaeche_von','planrahmen_darstellungsflaeche','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktSymbol.Ori','ori','fixpunktekatgrie3_hilfsfixpunktsymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.Rutschung.Identifikator','identifikator','rutschgebiete_rutschung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck.Art','art','liegenschaften_projgrundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPos.HAli','hali','rutschgebiete_rutschungpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelobjekt.Art','art','einzelobjekte_einzelobjekt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung.NBIdent','nbident','liegenschaften_lsnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Flaechenelement.Geometrie','geometrie','einzelobjekte_flaechenelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.Netzkreuz.Ori','ori','planrahmen_netzkreuz',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePos.Groesse','groesse','nomenklatur_gelaendenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPos.Hilfslinie','hilfslinie','liegenschaften_grundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Layouttyp','layouttyp','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPos.HAli','hali','bodenbedeckung_projgebaeudenummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung.Identifikator','identifikator','bodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheSymbol.Ori','ori','bodenbedeckung_projboflaechesymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Pos.Ori','ori','fixpunktekatgrie3_hfp3pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2.LageZuv','lagezuv','fixpunktekatgrie2_hfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjSelbstRecht.Flaechenmass','flaechenmass','liegenschaften_projselbstrecht',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung.GueltigerEintrag','gueltigereintrag','gemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.HoeheGen','hoehegen','fixpunktekatgrie3_lfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPos.Ori','ori','fixpunktekatgrie3_hilfsfixpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt.ExaktDefiniert','exaktdefiniert','gemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayoutSymbol.Art','art','planrahmen_planlayoutsymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.LageGen','lagegen','fixpunktekatgrie3_lfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Nachfuehrung.NBIdent','nbident','fixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Nachfuehrung.Datum1','datum1','fixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plan.TechDossier','techdossier','planeinteilungen_plan',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNameBenannte.Benannte','benannte','gebaeudeadressen_lokalisationsname','gebaeudeadressen_lokalisation');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Pos.Ori','ori','fixpunktekatgrie3_lfp3pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.Netzkreuz.Pos','pos','planrahmen_netzkreuz',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.LageZuv','lagezuv','fixpunktekatgrie3_hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckEntstehung.Entstehung','entstehung','liegenschaften_grundstueck','liegenschaften_lsnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.Rutschung.Name','aname','rutschgebiete_rutschung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.Flurname.Name','aname','nomenklatur_flurname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung.Beschreibung','beschreibung','liegenschaften_lsnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePos.Pos','pos','nomenklatur_flurnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GemeindegrenzeEntstehung.Entstehung','entstehung','gemeindegrenzen_gemeindegrenze','gemeindegrenzen_gemnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPos.VAli','vali','einzelobjekte_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Pos.VAli','vali','fixpunktekatgrie3_lfp3pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.LinienelementLinienelement_von.Linienelement_von','linienelement_von','rohrleitungen_linienelement','rohrleitungen_leitungsobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung.Perimeter','perimeter','bodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Liegenschaft.NummerTeilGrundstueck','nummerteilgrundstueck','liegenschaften_liegenschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheSymbol.Pos','pos','bodenbedeckung_projboflaechesymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GEBNachfuehrung.Perimeter','perimeter','gebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaeche.Geometrie','geometrie','bodenbedeckung_boflaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6.Flaeche','flaeche','plzortschaft_plz6',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.LokalisationNummer','lokalisationnummer','gebaeudeadressen_lokalisation',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Gemeinde.Name','aname','gemeindegrenzen_gemeinde',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.Koordinatenanschrift.Beschriftung','beschriftung','planrahmen_koordinatenanschrift',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPos.Groesse','groesse','planrahmen_koordinatenanschriftpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePos.Groesse','groesse','nomenklatur_ortsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung.Datum1','datum1','gemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3.HoeheZuv','hoehezuv','fixpunktekatgrie3_hfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsFPNachfuehrung.Beschreibung','beschreibung','fixpunktekatgrie3_hilfsfpnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung.Beschreibung','beschreibung','rohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPos.VAli','vali','planrahmen_koordinatenanschriftpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePos.Ori','ori','nomenklatur_flurnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePos.Groesse','groesse','nomenklatur_flurnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Pos.Pos','pos','fixpunktekatgrie2_lfp2pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EONachfuehrung.GueltigerEintrag','gueltigereintrag','einzelobjekte_eonachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.NachfuehrungsGeometername','nachfuehrungsgeometername','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPos.VAli','vali','nummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt.Identifikator','identifikator','liegenschaften_grenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName.IndexText','indextext','plzortschaft_ortschaftsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Entstehung.Entstehung','entstehung','fixpunktekatgrie3_hfp3','fixpunktekatgrie3_hfp3nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktEntstehung.Entstehung','entstehung','gemeindegrenzen_hoheitsgrenzpunkt','gemeindegrenzen_gemnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.Geometrie','geometrie','fixpunktekatgrie1_lfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementSymbolLinienelementSymbol_von.LinienelementSymbol_von','linienelementsymbol_von','einzelobjekte_linienelementsymbol','einzelobjekte_linienelement');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.Geometrie','geometrie','fixpunktekatgrie3_lfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Punktelement.Geometrie','geometrie','rohrleitungen_punktelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Entstehung.Entstehung','entstehung','fixpunktekatgrie1_lfp1','fixpunktekatgrie1_lfp1nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.Geometrie','geometrie','fixpunktekatgrie2_lfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Gemeindegrenze.Geometrie','geometrie','gemeindegrenzen_gemeindegrenze',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPos.Ori','ori','planeinteilungen_planpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftEntstehung.Entstehung','entstehung','plzortschaft_ortschaft','plzortschaft_osnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePos.Groesse','groesse','einzelobjekte_objektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPos.VAli','vali','planeinteilungen_planpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.Gelaendekante.Geometrie','geometrie','hoehen_gelaendekante',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.HoeheZuv','hoehezuv','fixpunktekatgrie1_lfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPos.Ori','ori','rohrleitungen_signalpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.HoeheZuv','hoehezuv','fixpunktekatgrie2_lfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPos.VAli','vali','rohrleitungen_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt.ExaktDefiniert','exaktdefiniert','liegenschaften_grenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung.GBEintrag','gbeintrag','liegenschaften_lsnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktEntstehung.Entstehung','entstehung','rohrleitungen_einzelpunkt','rohrleitungen_rlnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HONachfuehrung.Beschreibung','beschreibung','hoehen_honachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Einzelpunkt.Geometrie','geometrie','bodenbedeckung_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementSymbolFlaechenelementSymbol_von.FlaechenelementSymbol_von','flaechenelementsymbol_von','einzelobjekte_flaechenelementsymbol','einzelobjekte_flaechenelement');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HONachfuehrung.Gueltigkeit','gueltigkeit','hoehen_honachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektname.Name','aname','bodenbedeckung_projobjektname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Nachfuehrung.NBIdent','nbident','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName.Text','atext','plzortschaft_ortschaftsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.Flurname.Geometrie','geometrie','nomenklatur_flurname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPos.Pos','pos','planeinteilungen_planpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.LageGen','lagegen','fixpunktekatgrie3_hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.Rutschung.NBIdent','nbident','rutschgebiete_rutschung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPos.Pos','pos','rutschgebiete_rutschungpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeBeschreibung.Sprache','sprache','gebaeudeadressen_gebaeudebeschreibung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPos.HAli','hali','nummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Nachfuehrung.Identifikator','identifikator','fixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjBergwerk.Flaechenmass','flaechenmass','liegenschaften_projbergwerk',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName.Sprache','sprache','plzortschaft_ortschaftsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.Status','astatus','gebaeudeadressen_lokalisation',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPos.HAli','hali','bodenbedeckung_gebaeudenummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.InAenderung','inaenderung','gebaeudeadressen_lokalisation',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Nachfuehrung.Perimeter','perimeter','fixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPos.Groesse','groesse','liegenschaften_projgrundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1PosHFP1Pos_von.HFP1Pos_von','hfp1pos_von','fixpunktekatgrie1_hfp1pos','fixpunktekatgrie1_hfp1');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.HoeheGen','hoehegen','fixpunktekatgrie2_lfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3PosLFP3Pos_von.LFP3Pos_von','lfp3pos_von','fixpunktekatgrie3_lfp3pos','fixpunktekatgrie3_lfp3');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.Lage','lage','gebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPos.VAli','vali','rohrleitungen_leitungsobjektpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Nachfuehrung.Identifikator','identifikator','fixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPos.VAli','vali','fixpunktekatgrie3_hilfsfixpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.NKNachfuehrung.Datum1','datum1','nomenklatur_nknachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.Nummer','nummer','fixpunktekatgrie2_lfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Punktelement.Ori','ori','einzelobjekte_punktelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Symbol.Ori','ori','fixpunktekatgrie3_lfp3symbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPos.HAli','hali','bodenbedeckung_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPos.Ori','ori','rutschgebiete_rutschungpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelpunkt.ExaktDefiniert','exaktdefiniert','einzelobjekte_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.UebersichtPlannullpunkt','uebersichtplannullpunkt','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaeche.Art','art','bodenbedeckung_projboflaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt.LageGen','lagegen','liegenschaften_grenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von.OrtschaftsName_von','ortschaftsname_von','plzortschaft_ortschaftsname','plzortschaft_ortschaft');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.Darstellungsflaeche.Geometrie','geometrie','planrahmen_darstellungsflaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Nachfuehrung.GueltigerEintrag','gueltigereintrag','fixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Entstehung.Entstehung','entstehung','fixpunktekatgrie2_lfp2','fixpunktekatgrie2_lfp2nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1SymbolLFP1Symbol_von.LFP1Symbol_von','lfp1symbol_von','fixpunktekatgrie1_lfp1symbol','fixpunktekatgrie1_lfp1');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPos.HAli','hali','einzelobjekte_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNameGebaeudeName_von.GebaeudeName_von','gebaeudename_von','gebaeudeadressen_gebaeudename','gebaeudeadressen_gebaeudeeingang');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Identifikator','identifikator','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPosSignalpunktPos_von.SignalpunktPos_von','signalpunktpos_von','rohrleitungen_signalpunktpos','rohrleitungen_signalpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsName.KurzText','kurztext','gebaeudeadressen_lokalisationsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPos.Pos','pos','einzelobjekte_objektnummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Objektname.Name','aname','bodenbedeckung_objektname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPos.Ori','ori','einzelobjekte_objektnummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.Begehbarkeit','begehbarkeit','fixpunktekatgrie2_lfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3.LageZuv','lagezuv','fixpunktekatgrie3_hfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPos.VAli','vali','gemeindegrenzen_hoheitsgrenzpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Signalpunkt.Betreiber','betreiber','rohrleitungen_signalpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Einzelpunkt.LageGen','lagegen','rohrleitungen_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenze.Geometrie','geometrie','gemeindegrenzen_projgemeindegrenze',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Landesgrenzen.Landesgrenzabschnitt.Geometrie','geometrie','landesgrenzen_landesgrenzabschnitt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Plannummer','plannummer','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenLinieKoordinatenLinie_von.KoordinatenLinie_von','koordinatenlinie_von','planrahmen_koordinatenlinie','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPos.Groesse','groesse','planeinteilungen_planpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjBergwerk.NummerTeilGrundstueck','nummerteilgrundstueck','liegenschaften_projbergwerk',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjBergwerkProjBergwerk_von.ProjBergwerk_von','projbergwerk_von','liegenschaften_projbergwerk','liegenschaften_projgrundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePos.HAli','hali','nomenklatur_ortsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.AussparungEntstehung.Entstehung','entstehung','hoehen_aussparung','hoehen_honachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktEntstehung.Entstehung','entstehung','einzelobjekte_einzelpunkt','einzelobjekte_eonachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Nachfuehrung.Perimeter','perimeter','fixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.AttributeProvisorisch','attributeprovisorisch','gebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.Hoehenpunkt.Qualitaet','qualitaet','hoehen_hoehenpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos.VAli','vali','gebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck.Vollstaendigkeit','vollstaendigkeit','liegenschaften_projgrundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung.GueltigerEintrag','gueltigereintrag','bodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjLiegenschaftProjLiegenschaft_von.ProjLiegenschaft_von','projliegenschaft_von','liegenschaften_projliegenschaft','liegenschaften_projgrundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPos.HAli','hali','gebaeudeadressen_hausnummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.Aussparung.Art','art','hoehen_aussparung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName.KurzText','kurztext','plzortschaft_ortschaftsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3.Nummer','nummer','fixpunktekatgrie3_hfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnameEntstehung.Entstehung','entstehung','nomenklatur_ortsname','nomenklatur_nknachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPosGrundstueckPos_von.GrundstueckPos_von','grundstueckpos_von','liegenschaften_grundstueckpos','liegenschaften_grundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePos.HAli','hali','bodenbedeckung_projobjektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.Nummerierungsprinzip','nummerierungsprinzip','gebaeudeadressen_lokalisation',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.StrassenstueckStrassenstueck_von.Strassenstueck_von','strassenstueck_von','gebaeudeadressen_strassenstueck','gebaeudeadressen_lokalisation');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPos.VAli','vali','rutschgebiete_rutschungpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.Ortschaft.Status','astatus','plzortschaft_ortschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von.OrtschaftsVerbundText_von','ortschaftsverbundtext_von','plzortschaft_ortschaftsverbundtext','plzortschaft_ortschaftsverbund');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.GelaendekanteEntstehung.Entstehung','entstehung','hoehen_gelaendekante','hoehen_honachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.Gelaendekante.Qualitaet','qualitaet','hoehen_gelaendekante',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Pos.Pos','pos','fixpunktekatgrie3_hfp3pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsName.Sprache','sprache','gebaeudeadressen_lokalisationsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Nachfuehrung.GueltigerEintrag','gueltigereintrag','fixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Nachfuehrung.Perimeter','perimeter','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeeingangEntstehung.Entstehung','entstehung','gebaeudeadressen_gebaeudeeingang','gebaeudeadressen_gebnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_Pos.VAli','vali','plzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPosEinzelpunktPos_von.EinzelpunktPos_von','einzelpunktpos_von','bodenbedeckung_einzelpunktpos','bodenbedeckung_einzelpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbundText.Text','atext','plzortschaft_ortschaftsverbundtext',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Nachfuehrung.Beschreibung','beschreibung','fixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Entstehung.Entstehung','entstehung','fixpunktekatgrie2_hfp2','fixpunktekatgrie2_hfp2nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HONachfuehrung.Datum1','datum1','hoehen_honachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPos.HAli','hali','planeinteilungen_planpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelpunkt.Geometrie','geometrie','einzelobjekte_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheEntstehung.Entstehung','entstehung','bodenbedeckung_boflaeche','bodenbedeckung_bbnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPosEinzelpunktPos_von.EinzelpunktPos_von','einzelpunktpos_von','einzelobjekte_einzelpunktpos','einzelobjekte_einzelpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnameProjObjektname_von.ProjObjektname_von','projobjektname_von','bodenbedeckung_projobjektname','bodenbedeckung_projboflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Strassenstueck.Ordnung','ordnung','gebaeudeadressen_strassenstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPosHilfsfixpunktPos_von.HilfsfixpunktPos_von','hilfsfixpunktpos_von','fixpunktekatgrie3_hilfsfixpunktpos','fixpunktekatgrie3_hilfsfixpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt.Geometrie','geometrie','gemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.Ortschaft.Flaeche','flaeche','plzortschaft_ortschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2.NBIdent','nbident','fixpunktekatgrie2_hfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.Punktzeichen','punktzeichen','fixpunktekatgrie3_lfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPos.Ori','ori','bodenbedeckung_projgebaeudenummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPosGebaeudenummerPos_von.GebaeudenummerPos_von','gebaeudenummerpos_von','bodenbedeckung_gebaeudenummerpos','bodenbedeckung_gebaeudenummer');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktEntstehung.Entstehung','entstehung','liegenschaften_grenzpunkt','liegenschaften_lsnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPosHausnummerPos_von.HausnummerPos_von','hausnummerpos_von','gebaeudeadressen_hausnummerpos','gebaeudeadressen_gebaeudeeingang');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheEntstehung.Entstehung','entstehung','bodenbedeckung_projboflaeche','bodenbedeckung_bbnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsName.IndexText','indextext','gebaeudeadressen_lokalisationsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2.HoeheGen','hoehegen','fixpunktekatgrie2_hfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePos.VAli','vali','nomenklatur_flurnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePos.HAli','hali','gebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Symbol.Ori','ori','fixpunktekatgrie2_lfp2symbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.Toleranzstufe.Geometrie','geometrie','tseinteilung_toleranzstufe',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.Netzkreuz.Art','art','planrahmen_netzkreuz',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Liegenschaft.Geometrie','geometrie','liegenschaften_liegenschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6.InAenderung','inaenderung','plzortschaft_plz6',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Plannullpunkt','plannullpunkt','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckEntstehung.Entstehung','entstehung','liegenschaften_projgrundstueck','liegenschaften_lsnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Bergwerk.NummerTeilGrundstueck','nummerteilgrundstueck','liegenschaften_bergwerk',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Bergwerk.Geometrie','geometrie','liegenschaften_bergwerk',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Nachfuehrung.GueltigerEintrag','gueltigereintrag','fixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6.PLZ','plz','plzortschaft_plz6',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Einzelpunkt.LageZuv','lagezuv','rohrleitungen_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPos.Ori','ori','liegenschaften_grenzpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPos.Pos','pos','bodenbedeckung_projgebaeudenummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheSymbol.Pos','pos','bodenbedeckung_boflaechesymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerObjektnummer_von.Objektnummer_von','objektnummer_von','einzelobjekte_objektnummer','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementSymbol.Pos','pos','einzelobjekte_linienelementsymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Nachfuehrung.Perimeter','perimeter','fixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheSymbol.Ori','ori','bodenbedeckung_boflaechesymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.BenanntesGebietBenanntesGebiet_von.BenanntesGebiet_von','benanntesgebiet_von','gebaeudeadressen_benanntesgebiet','gebaeudeadressen_lokalisation');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementSymbol.Ori','ori','einzelobjekte_linienelementsymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Nachfuehrung.Perimeter','perimeter','fixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementSymbol.Pos','pos','einzelobjekte_flaechenelementsymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Pos.VAli','vali','fixpunktekatgrie3_hfp3pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementSymbol.Ori','ori','einzelobjekte_flaechenelementsymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1.HoeheZuv','hoehezuv','fixpunktekatgrie1_hfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbundText.Sprache','sprache','plzortschaft_ortschaftsverbundtext',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Nachfuehrung.Identifikator','identifikator','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePos.Hilfslinie','hilfslinie','gebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjSelbstRechtProjSelbstRecht_von.ProjSelbstRecht_von','projselbstrecht_von','liegenschaften_projselbstrecht','liegenschaften_projgrundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.Nummer','nummer','fixpunktekatgrie1_lfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck.Nummer','nummer','liegenschaften_grundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.NetzkreuzNetzkreuz_von.Netzkreuz_von','netzkreuz_von','planrahmen_netzkreuz','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.HoeheZuv','hoehezuv','fixpunktekatgrie3_hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Linienelement.Geometrie','geometrie','einzelobjekte_linienelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePos.Pos','pos','bodenbedeckung_projobjektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EONachfuehrung.NBIdent','nbident','einzelobjekte_eonachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung.Gueltigkeit','gueltigkeit','bodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPosProjGebaeudenummerPos_von.ProjGebaeudenummerPos_von','projgebaeudenummerpos_von','bodenbedeckung_projgebaeudenummerpos','bodenbedeckung_projgebaeudenummer');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Flaechenelement.Geometrie','geometrie','rohrleitungen_flaechenelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Nachfuehrung.Perimeter','perimeter','fixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.Ortsname.Name','aname','nomenklatur_ortsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.HoehenLage','hoehenlage','gebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Nachfuehrung.Perimeter','perimeter','fixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePos.Ori','ori','bodenbedeckung_projobjektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GEBNachfuehrung.Gueltigkeit','gueltigkeit','gebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.LageZuv','lagezuv','fixpunktekatgrie3_lfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Pos.HAli','hali','fixpunktekatgrie2_lfp2pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPos.HAli','hali','rohrleitungen_signalpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktEntstehung.Entstehung','entstehung','fixpunktekatgrie3_hilfsfixpunkt','fixpunktekatgrie3_hilfsfpnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPos.Pos','pos','rohrleitungen_signalpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6PLZ6_von.PLZ6_von','plz6_von','plzortschaft_plz6','plzortschaft_ortschaft');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Entstehung.Entstehung','entstehung','plzortschaft_plz6','plzortschaft_plz6nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Nachfuehrung.Datum1','datum1','fixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Einzelpunkt.LageZuv','lagezuv','bodenbedeckung_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck.EGRIS_EGRID','egris_egrid','liegenschaften_grundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Linienelement.Geometrie','geometrie','rohrleitungen_linienelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePosProjObjektnamePos_von.ProjObjektnamePos_von','projobjektnamepos_von','bodenbedeckung_projobjektnamepos','bodenbedeckung_projobjektname');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePos.Stil','stil','nomenklatur_ortsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck.Vollstaendigkeit','vollstaendigkeit','liegenschaften_grundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung.NBIdent','nbident','rohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung.NBIdent','nbident','bodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPos.Ori','ori','planrahmen_koordinatenanschriftpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Entstehung.Entstehung','entstehung','fixpunktekatgrie3_lfp3','fixpunktekatgrie3_lfp3nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerGebaeudenummer_von.Gebaeudenummer_von','gebaeudenummer_von','bodenbedeckung_gebaeudenummer','bodenbedeckung_boflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Nachfuehrung.Identifikator','identifikator','fixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnameObjektname_von.Objektname_von','objektname_von','bodenbedeckung_objektname','bodenbedeckung_boflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPos.VAli','vali','hoehen_hoehenpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPos.VAli','vali','liegenschaften_projgrundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPos.VAli','vali','liegenschaften_grenzpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenzeProjGemeindegrenze_von.ProjGemeindegrenze_von','projgemeindegrenze_von','gemeindegrenzen_projgemeindegrenze','gemeindegrenzen_gemeinde');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Nachfuehrung.Beschreibung','beschreibung','fixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.LinienobjektLinienobjekt_von.Linienobjekt_von','linienobjekt_von','planrahmen_linienobjekt','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbund.Leer','leer','plzortschaft_ortschaftsverbund',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Pos.VAli','vali','fixpunktekatgrie2_lfp2pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NBGeometrieNBGeometrie_von.NBGeometrie_von','nbgeometrie_von','nummerierngsbrche_nbgeometrie','nummerierngsbrche_nummerierungsbereich');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Pos.Ori','ori','fixpunktekatgrie2_lfp2pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPos.Groesse','groesse','bodenbedeckung_gebaeudenummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPos.Ori','ori','rohrleitungen_leitungsobjektpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPos.HAli','hali','rohrleitungen_leitungsobjektpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPos.HAli','hali','gemeindegrenzen_hoheitsgrenzpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPos.Pos','pos','planrahmen_koordinatenanschriftpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Nachfuehrung.NBIdent','nbident','fixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjSelbstRecht.NummerTeilGrundstueck','nummerteilgrundstueck','liegenschaften_projselbstrecht',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OSNachfuehrung.Identifikator','identifikator','plzortschaft_osnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GEBNachfuehrung.Identifikator','identifikator','gebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung.GueltigerEintrag','gueltigereintrag','rohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenzeEntstehung.Entstehung','entstehung','gemeindegrenzen_projgemeindegrenze','gemeindegrenzen_gemnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos.HAli','hali','gebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt.Geometrie','geometrie','liegenschaften_grenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt.LageZuv','lagezuv','gemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenLinie.Geometrie','geometrie','planrahmen_koordinatenlinie',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjSelbstRecht.Geometrie','geometrie','liegenschaften_projselbstrecht',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjLiegenschaft.NummerTeilGrundstueck','nummerteilgrundstueck','liegenschaften_projliegenschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPos.Groesse','groesse','einzelobjekte_objektnummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPos.VAli','vali','bodenbedeckung_gebaeudenummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck.Gueltigkeit','gueltigkeit','liegenschaften_grundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPosHoheitsgrenzpunktPos_von.HoheitsgrenzpunktPos_von','hoheitsgrenzpunktpos_von','gemeindegrenzen_hoheitsgrenzpunktpos','gemeindegrenzen_hoheitsgrenzpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.Hausnummer','hausnummer','gebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.Punktzeichen','punktzeichen','fixpunktekatgrie2_lfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung.NBIdent','nbident','gemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von.NummerierungsbereichPos_von','nummerierungsbereichpos_von','nummerierngsbrche_nummerierungsbereichpos','nummerierngsbrche_nummerierungsbereich');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.NBIdent','nbident','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.SelbstRechtSelbstRecht_von.SelbstRecht_von','selbstrecht_von','liegenschaften_selbstrecht','liegenschaften_grundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Nachfuehrung.GueltigerEintrag','gueltigereintrag','fixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.LageZuv','lagezuv','fixpunktekatgrie2_lfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.HoeheGeom','hoehegeom','fixpunktekatgrie3_hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Einzelpunkt.Identifikator','identifikator','rohrleitungen_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPos.Pos','pos','liegenschaften_grenzpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPos.Pos','pos','rohrleitungen_leitungsobjektpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2PosHFP2Pos_von.HFP2Pos_von','hfp2pos_von','fixpunktekatgrie2_hfp2pos','fixpunktekatgrie2_hfp2');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Objektname.Name','aname','einzelobjekte_objektname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeBeschreibungGebaeudeBeschreibung_von.GebaeudeBeschreibung_von','gebaeudebeschreibung_von','gebaeudeadressen_gebaeudebeschreibung','gebaeudeadressen_gebaeudeeingang');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPos.Pos','pos','liegenschaften_projgrundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.BergwerkBergwerk_von.Bergwerk_von','bergwerk_von','liegenschaften_bergwerk','liegenschaften_grundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.Ortsname.Geometrie','geometrie','nomenklatur_ortsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung.Beschreibung','beschreibung','bodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPos.Ori','ori','liegenschaften_projgrundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeName.KurzText','kurztext','gebaeudeadressen_gebaeudename',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.NBIdent','nbident','fixpunktekatgrie1_lfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.Nummerierungsbereich.NBNummer','nbnummer','nummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HONachfuehrung.Identifikator','identifikator','hoehen_honachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Pos.Pos','pos','fixpunktekatgrie3_lfp3pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePos.Stil','stil','nomenklatur_gelaendenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktSymbol.Ori','ori','gemeindegrenzen_hoheitsgrenzpunktsymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck.Art','art','liegenschaften_grundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Nachfuehrung.GueltigerEintrag','gueltigereintrag','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1.NBIdent','nbident','fixpunktekatgrie1_hfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.Linienobjekt.Geometrie','geometrie','planrahmen_linienobjekt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftKoordinatenanschrift_von.Koordinatenanschrift_von','koordinatenanschrift_von','planrahmen_koordinatenanschrift','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaeche.Qualitaet','qualitaet','bodenbedeckung_projboflaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck.GesamteFlaechenmass','gesamteflaechenmass','liegenschaften_projgrundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.Nummerierungsbereich.GueltigerEintrag','gueltigereintrag','nummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HONachfuehrung.NBIdent','nbident','hoehen_honachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPos.HAli','hali','einzelobjekte_objektnummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Nachfuehrung.Identifikator','identifikator','fixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePosObjektnamePos_von.ObjektnamePos_von','objektnamepos_von','einzelobjekte_objektnamepos','einzelobjekte_objektname');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung.Gueltigkeit','gueltigkeit','liegenschaften_lsnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Einzelpunkt.Geometrie','geometrie','rohrleitungen_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPos.VAli','vali','rohrleitungen_signalpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Nachfuehrung.Beschreibung','beschreibung','fixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HONachfuehrung.GueltigerEintrag','gueltigereintrag','hoehen_honachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelobjekt.Qualitaet','qualitaet','einzelobjekte_einzelobjekt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheSymbolBoFlaecheSymbol_von.BoFlaecheSymbol_von','boflaechesymbol_von','bodenbedeckung_boflaechesymbol','bodenbedeckung_boflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePos.Ori','ori','nomenklatur_gelaendenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.GWR_EDID','gwr_edid','gebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePos.Pos','pos','nomenklatur_gelaendenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePos.VAli','vali','einzelobjekte_objektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GEBNachfuehrung.Beschreibung','beschreibung','gebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Einzelpunkt.LageGen','lagegen','bodenbedeckung_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Pos.VAli','vali','fixpunktekatgrie1_hfp1pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EONachfuehrung.Perimeter','perimeter','einzelobjekte_eonachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Mit_Koordinatennetz','mit_koordinatennetz','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPos.Groesse','groesse','bodenbedeckung_projgebaeudenummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnameEntstehung.Entstehung','entstehung','nomenklatur_flurname','nomenklatur_nknachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.LageZuv','lagezuv','fixpunktekatgrie1_lfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.Nummer','nummer','fixpunktekatgrie3_lfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePos.VAli','vali','nomenklatur_gelaendenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Pos.HAli','hali','fixpunktekatgrie3_hfp3pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3SymbolLFP3Symbol_von.LFP3Symbol_von','lfp3symbol_von','fixpunktekatgrie3_lfp3symbol','fixpunktekatgrie3_lfp3');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlangeometriePlangeometrie_von.Plangeometrie_von','plangeometrie_von','planeinteilungen_plangeometrie','planeinteilungen_plan');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck.Nummer','nummer','liegenschaften_projgrundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.NKNachfuehrung.GueltigerEintrag','gueltigereintrag','nomenklatur_nknachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePos.VAli','vali','gebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaeche.Qualitaet','qualitaet','bodenbedeckung_boflaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.Aussparung.Geometrie','geometrie','hoehen_aussparung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck.NBIdent','nbident','liegenschaften_grundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EONachfuehrung.Datum1','datum1','einzelobjekte_eonachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.Aussparung.Qualitaet','qualitaet','hoehen_aussparung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.PunktelementPunktelement_von.Punktelement_von','punktelement_von','rohrleitungen_punktelement','rohrleitungen_leitungsobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Strassenstueck.Geometrie','geometrie','gebaeudeadressen_strassenstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Strassenstueck.IstAchse','istachse','gebaeudeadressen_strassenstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung.Datum2','datum2','liegenschaften_lsnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt.LageGen','lagegen','gemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt.Punktzeichen','punktzeichen','liegenschaften_grenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck.NBIdent','nbident','liegenschaften_projgrundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1PosLFP1Pos_von.LFP1Pos_von','lfp1pos_von','fixpunktekatgrie1_lfp1pos','fixpunktekatgrie1_lfp1');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck.Gueltigkeit','gueltigkeit','liegenschaften_projgrundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Einzelpunkt.ExaktDefiniert','exaktdefiniert','bodenbedeckung_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPos.Pos','pos','gemeindegrenzen_hoheitsgrenzpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.Toleranzstufe.NBIdent','nbident','tseinteilung_toleranzstufe',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_Pos.Ori','ori','plzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPos.Pos','pos','gebaeudeadressen_hausnummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPos.VAli','vali','einzelobjekte_objektnummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPos.Groesse','groesse','liegenschaften_grundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bezirksgrenzen.Bezirksgrenzabschnitt.Geometrie','geometrie','bezirksgrenzen_bezirksgrenzabschnitt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPos.Pos','pos','einzelobjekte_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plangeometrie.Geometrie','geometrie','planeinteilungen_plangeometrie',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Pos.HAli','hali','fixpunktekatgrie2_hfp2pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPos.Groesse','groesse','nummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2PosLFP2Pos_von.LFP2Pos_von','lfp2pos_von','fixpunktekatgrie2_lfp2pos','fixpunktekatgrie2_lfp2');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.GWR_EGID','gwr_egid','gebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.Nummerierungsbereich.Kt','kt','nummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePos.VAli','vali','bodenbedeckung_objektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenameEntstehung.Entstehung','entstehung','nomenklatur_gelaendename','nomenklatur_nknachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeName.Text','atext','gebaeudeadressen_gebaeudename',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Signalpunkt.Geometrie','geometrie','rohrleitungen_signalpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPos.Ori','ori','gemeindegrenzen_hoheitsgrenzpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plan.GueltigerEintrag','gueltigereintrag','planeinteilungen_plan',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Leitungsobjekt.Qualitaet','qualitaet','rohrleitungen_leitungsobjekt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Kantonsgrenzen.Kantonsgrenzabschnitt.Geometrie','geometrie','kantonsgrenzen_kantonsgrenzabschnitt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.Toleranzstufe.GueltigerEintrag','gueltigereintrag','tseinteilung_toleranzstufe',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos.Groesse','groesse','gebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.BenanntesGebiet.Flaeche','flaeche','gebaeudeadressen_benanntesgebiet',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Symbol.Ori','ori','fixpunktekatgrie1_lfp1symbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung.Datum1','datum1','rohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.Punktzeichen','punktzeichen','fixpunktekatgrie1_lfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Signalpunkt.Nummer','nummer','rohrleitungen_signalpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EONachfuehrung.Beschreibung','beschreibung','einzelobjekte_eonachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Nachfuehrung.Beschreibung','beschreibung','plzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Pos.Pos','pos','fixpunktekatgrie2_hfp2pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HONachfuehrung.Perimeter','perimeter','hoehen_honachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung.Datum1','datum1','liegenschaften_lsnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Gebaeudenummer.Nummer','nummer','bodenbedeckung_gebaeudenummer',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.Gelaendekante.Art','art','hoehen_gelaendekante',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.NBIdent','nbident','fixpunktekatgrie2_lfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung.Beschreibung','beschreibung','gemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePosOrtsnamePos_von.OrtsnamePos_von','ortsnamepos_von','nomenklatur_ortsnamepos','nomenklatur_ortsname');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPos.HAli','hali','liegenschaften_grundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Pos.HAli','hali','fixpunktekatgrie1_lfp1pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt.HoheitsgrenzsteinAlt','hoheitsgrenzsteinalt','liegenschaften_grenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeName.Sprache','sprache','gebaeudeadressen_gebaeudename',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plan.Nummer','nummer','planeinteilungen_plan',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPosKoordinatenanschriftPos_von.KoordinatenanschriftPos_von','koordinatenanschriftpos_von','planrahmen_koordinatenanschriftpos','planrahmen_koordinatenanschrift');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsName.Text','atext','gebaeudeadressen_lokalisationsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektEntstehung.Entstehung','entstehung','rohrleitungen_leitungsobjekt','rohrleitungen_rlnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftOrtschaft_von.Ortschaft_von','ortschaft_von','plzortschaft_ortschaft','plzortschaft_ortschaftsverbund');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPos.VAli','vali','liegenschaften_grundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Nachfuehrung.NBIdent','nbident','fixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Nachfuehrung.NBIdent','nbident','fixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Gebaeudenummer.GWR_EGID','gwr_egid','bodenbedeckung_gebaeudenummer',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePosGelaendenamePos_von.GelaendenamePos_von','gelaendenamepos_von','nomenklatur_gelaendenamepos','nomenklatur_gelaendename');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt.Protokoll','protokoll','fixpunktekatgrie3_hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelobjektEntstehung.Entstehung','entstehung','einzelobjekte_einzelobjekt','einzelobjekte_eonachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Pos.VAli','vali','fixpunktekatgrie2_hfp2pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung.Datum1','datum1','bodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_Pos.Groesse','groesse','plzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPos.Ori','ori','planrahmen_planbeschriftungpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Pos.Ori','ori','fixpunktekatgrie2_hfp2pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePosFlurnamePos_von.FlurnamePos_von','flurnamepos_von','nomenklatur_flurnamepos','nomenklatur_flurname');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPos.Pos','pos','planrahmen_planbeschriftungpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.Planbeschriftung.Beschriftung','beschriftung','planrahmen_planbeschriftung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.NBIdent','nbident','fixpunktekatgrie3_lfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Einzelpunkt.Identifikator','identifikator','bodenbedeckung_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung.Identifikator','identifikator','gemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Signalpunkt.Punktart','punktart','rohrleitungen_signalpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Nachfuehrung.Identifikator','identifikator','fixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelpunkt.LageZuv','lagezuv','einzelobjekte_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPos.Groesse','groesse','rutschgebiete_rutschungpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPos.Hilfslinie','hilfslinie','liegenschaften_projgrundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6.Status','astatus','plzortschaft_plz6',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3.NBIdent','nbident','fixpunktekatgrie3_hfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPos.Ori','ori','gebaeudeadressen_hausnummerpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_Pos.Pos','pos','plzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePos.HAli','hali','bodenbedeckung_objektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt.NBIdent','nbident','gemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.PunktelementPunktelement_von.Punktelement_von','punktelement_von','einzelobjekte_punktelement','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePosGebaeudeNamePos_von.GebaeudeNamePos_von','gebaeudenamepos_von','gebaeudeadressen_gebaeudenamepos','gebaeudeadressen_gebaeudename');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjBergwerk.Geometrie','geometrie','liegenschaften_projbergwerk',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePos.Groesse','groesse','tseinteilung_toleranzstufepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPosGrenzpunktPos_von.GrenzpunktPos_von','grenzpunktpos_von','liegenschaften_grenzpunktpos','liegenschaften_grenzpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktSymbolHilfsfixpunktSymbol_von.HilfsfixpunktSymbol_von','hilfsfixpunktsymbol_von','fixpunktekatgrie3_hilfsfixpunktsymbol','fixpunktekatgrie3_hilfsfixpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePos.HAli','hali','nomenklatur_flurnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePos.Pos','pos','nomenklatur_ortsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPos.Pos','pos','liegenschaften_grundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.Toleranzstufe.Art','art','tseinteilung_toleranzstufe',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPos.HAli','hali','hoehen_hoehenpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Pos.Pos','pos','fixpunktekatgrie1_lfp1pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.IstOffizielleBezeichnung','istoffiziellebezeichnung','gebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout.Massstabszahl','massstabszahl','planrahmen_planlayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktSymbol.Ori','ori','liegenschaften_grenzpunktsymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.Begehbarkeit','begehbarkeit','fixpunktekatgrie1_lfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePosObjektnamePos_von.ObjektnamePos_von','objektnamepos_von','bodenbedeckung_objektnamepos','bodenbedeckung_objektname');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPos.HAli','hali','liegenschaften_grenzpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Nachfuehrung.Beschreibung','beschreibung','fixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Nachfuehrung.GueltigerEintrag','gueltigereintrag','fixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.Ortschaft.InAenderung','inaenderung','plzortschaft_ortschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.Darstellungsflaeche.Auswahlart','auswahlart','planrahmen_darstellungsflaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck.GesamteFlaechenmass','gesamteflaechenmass','liegenschaften_grundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Gemeinde.BFSNr','bfsnr','gemeindegrenzen_gemeinde',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPlanbeschriftung_von.Planbeschriftung_von','planbeschriftung_von','planrahmen_planbeschriftung','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von.OrtschaftsName_Pos_von','ortschaftsname_pos_von','plzortschaft_ortschaftsname_pos','plzortschaft_ortschaftsname');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePos.HAli','hali','einzelobjekte_objektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.HoeheGeom','hoehegeom','fixpunktekatgrie1_lfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Kantonsgrenzen.Kantonsgrenzabschnitt.Gueltigkeit','gueltigkeit','kantonsgrenzen_kantonsgrenzabschnitt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1.HoeheGeom','hoehegeom','fixpunktekatgrie1_hfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePos.HAli','hali','tseinteilung_toleranzstufepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2.HoeheGeom','hoehegeom','fixpunktekatgrie2_lfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2.HoeheGeom','hoehegeom','fixpunktekatgrie2_hfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktSymbolHoheitsgrenzpunktSymbol_von.HoheitsgrenzpunktSymbol_von','hoheitsgrenzpunktsymbol_von','gemeindegrenzen_hoheitsgrenzpunktsymbol','gemeindegrenzen_hoheitsgrenzpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OSNachfuehrung.NBIdent','nbident','plzortschaft_osnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3.HoeheGeom','hoehegeom','fixpunktekatgrie3_lfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3.HoeheGeom','hoehegeom','fixpunktekatgrie3_hfp3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1.LageGen','lagegen','fixpunktekatgrie1_lfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung.Perimeter','perimeter','rohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.FlaechenelementFlaechenelement_von.Flaechenelement_von','flaechenelement_von','rohrleitungen_flaechenelement','rohrleitungen_leitungsobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktEntstehung.Entstehung','entstehung','bodenbedeckung_einzelpunkt','bodenbedeckung_bbnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeName.IndexText','indextext','gebaeudeadressen_gebaeudename',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePos.Ori','ori','nomenklatur_ortsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation.Art','art','gebaeudeadressen_lokalisation',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung.Identifikator','identifikator','rohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementLinienelement_von.Linienelement_von','linienelement_von','einzelobjekte_linienelement','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelpunkt.LageGen','lagegen','einzelobjekte_einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPos.Ori','ori','liegenschaften_grundstueckpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPosPlanbeschriftungPos_von.PlanbeschriftungPos_von','planbeschriftungpos_von','planrahmen_planbeschriftungpos','planrahmen_planbeschriftung');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2.Nummer','nummer','fixpunktekatgrie2_hfp2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPos.Ori','ori','rohrleitungen_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1.LageGen','lagegen','fixpunktekatgrie1_hfp1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPosObjektnummerPos_von.ObjektnummerPos_von','objektnummerpos_von','einzelobjekte_objektnummerpos','einzelobjekte_objektnummer');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.Nummerierungsbereich.TechDossier','techdossier','nummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPosPlanPos_von.PlanPos_von','planpos_von','planeinteilungen_planpos','planeinteilungen_plan');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsFPNachfuehrung.Perimeter','perimeter','fixpunktekatgrie3_hilfsfpnachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPos.Pos','pos','rohrleitungen_einzelpunktpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPosEinzelpunktPos_von.EinzelpunktPos_von','einzelpunktpos_von','rohrleitungen_einzelpunktpos','rohrleitungen_einzelpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang.Status','astatus','gebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPos.Groesse','groesse','planrahmen_planbeschriftungpos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos.Pos','pos','gebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bezirksgrenzen.Bezirksgrenzabschnitt.Gueltigkeit','gueltigkeit','bezirksgrenzen_bezirksgrenzabschnitt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePos.Pos','pos','bodenbedeckung_objektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Planrahmen.Planbeschriftung.Art','art','planrahmen_planbeschriftung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePos.Ori','ori','bodenbedeckung_objektnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Rohrleitungen.Signalpunkt.Art','art','rohrleitungen_signalpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3PosHFP3Pos_von.HFP3Pos_von','hfp3pos_von','fixpunktekatgrie3_hfp3pos','fixpunktekatgrie3_hfp3');
INSERT INTO live_dm01avso24.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos.Ori','ori','gebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Hoehen.Gelaendekante','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.SelbstRechtSelbstRecht_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rutschgebiete.Rutschung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.Leitungsobjekt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.LinienelementLinienelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plan','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheSymbolProjBoFlaecheSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GemeindegrenzeEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.NKNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.LineAttrib7','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnameObjektname_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPosHilfsfixpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementFlaechenelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbund','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Gemeindegrenze','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerProjGebaeudenummer_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.BenanntesGebietBenanntesGebiet_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6PLZ6_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPosObjektnummerPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Hoehen.Hoehenpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummer','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePosObjektnamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.Signalpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NBGeometrieNBGeometrie_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.Planbeschriftung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsFPNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenzeProjGemeindegrenze_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenze','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.BergwerkBergwerk_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.Objektname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.Nummerierungsbereich','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjSelbstRecht','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.Linienelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPosProjGrundstueckPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementSymbolLinienelementSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePosGebaeudeNamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPosGrenzpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1SymbolLFP1Symbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.Koordinatenanschrift','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerObjektnummer_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Hoehen.GelaendekanteEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPosRutschungPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftOrtschaft_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenLinieKoordinatenLinie_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Symbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPosGebaeudenummerPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheSymbolBoFlaecheSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPosPlanPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3PosLFP3Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.PunktelementPunktelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.Einzelpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPosSignalpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPosEinzelpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Hoehen.Aussparung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenzeEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePosGelaendenamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaeche','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2SymbolLFP2Symbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPosEinzelpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeBeschreibungGebaeudeBeschreibung_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjLiegenschaft','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNameGebaeudeName_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Gemeinde','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePosProjObjektnamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftKoordinatenanschrift_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.Ortsname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.Punktelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.Liegenschaft','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.PunktelementPunktelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Einzelpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPosProjGebaeudenummerPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPosHoehenpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.LinienobjektLinienobjekt_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPosHausnummerPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Strassenstueck','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktSymbolGrenzpunktSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2PosHFP2Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plangeometrie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayoutSymbolPlanLayoutSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjSelbstRechtProjSelbstRecht_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaeche','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.Gelaendename','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayoutSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnameEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.Flaechenelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnameObjektname_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjBergwerkProjBergwerk_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnameEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.Darstellungsflaeche','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsName','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenLinie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.Flaechenelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeBeschreibung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.BenanntesGebiet','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.Bergwerk','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlangeometriePlangeometrie_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.EONachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerGebaeudenummer_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPlanbeschriftung_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktSymbolHoheitsgrenzpunktSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPosKoordinatenanschriftPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2PosLFP2Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.FlaechenelementFlaechenelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePosLokalisationsNamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.SelbstRecht','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.Ortschaft','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPosGrundstueckPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Gebaeudenummer','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Landesgrenzen.Landesgrenzabschnitt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.DarstellungsflaecheDarstellungsflaeche_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbundText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1PosLFP1Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNameBenannte','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.LineAttrib8','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementSymbolFlaechenelementSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePosFlurnamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.Netzkreuz','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePosToleranzstufePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Symbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktSymbolHilfsfixpunktSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Objektname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnameProjObjektname_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPosLeitungsobjektPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NBGeometrie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1PosHFP1Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OSNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelobjektEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bezirksgrenzen.Bezirksgrenzabschnitt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPosEinzelpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.StrassenstueckStrassenstueck_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GEBNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.Objektnummer','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Rohrleitungen.Linienelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3SymbolLFP3Symbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementLinienelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjLiegenschaftProjLiegenschaft_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Kantonsgrenzen.Kantonsgrenzabschnitt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3PosHFP3Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.Punktelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Hoehen.HONachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.LiegenschaftLiegenschaft_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenameEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Hoehen.AussparungEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjBergwerk','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeeingangGebaeudeeingang_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.TSEinteilung.Toleranzstufe','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeName','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.Linienobjekt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.NetzkreuzNetzkreuz_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePosOrtsnamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelobjekt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Nomenklatur.Flurname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePosObjektnamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPosPlanbeschriftungPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Symbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GemeindegrenzeGemeindegrenze_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib5','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib6','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib3','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib4','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPosHoheitsgrenzpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib1','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeeingangEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live_dm01avso24.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVSO24LV95.Liegenschaften.LineAttrib2','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_Pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePosProjObjektnamePos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2PosHFP2Pos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bezirksgrenzen.Bezirksgrenzabschnitt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPosHilfsfixpunktPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GEBNachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPosObjektnummerPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NBGeometrieNBGeometrie_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Gemeinde',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Hoehen.GelaendekanteEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeName',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Hoehen.Hoehenpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GemeindegrenzeEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.BergwerkBergwerk_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNameBenannte',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.Leitungsobjekt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPosEinzelpunktPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.Flaechenelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementSymbolFlaechenelementSymbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPlanbeschriftung_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Entstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Lokalisation',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsFPNachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Entstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenameEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2PosLFP2Pos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rutschgebiete.Rutschung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Entstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktSymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementLinienelement_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjSelbstRechtProjSelbstRecht_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Hoehen.HONachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePosLokalisationsNamePos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GemeindegrenzeGemeindegrenze_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.Planbeschriftung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnameProjObjektname_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPosPlanPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Entstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Entstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerGebaeudenummer_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OSNachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1PosHFP1Pos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPosEinzelpunktPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.Netzkreuz',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NBGeometrie',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Hoehen.AussparungEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheSymbolBoFlaecheSymbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeBeschreibungGebaeudeBeschreibung_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNamePosGebaeudeNamePos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.Hilfsfixpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPosProjGrundstueckPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.LinienobjektLinienobjekt_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2SymbolLFP2Symbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlanPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeNameGebaeudeName_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.Flaechenelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerProjGebaeudenummer_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelobjekt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePosToleranzstufePos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Entstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3PosHFP3Pos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnameEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.NetzkreuzNetzkreuz_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.Flurname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPosRutschungPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummerPosProjGebaeudenummerPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjBergwerk',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPosLeitungsobjektPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.Objektnummer',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.LSNachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPosEinzelpunktPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plangeometrie',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3Nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.StrassenstueckStrassenstueck_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.GEMNachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayoutSymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsNamePos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.EONachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktSymbolGrenzpunktSymbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6PLZ6_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftOrtschaft_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnameObjektname_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.LeitungsobjektPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerObjektnummer_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPosHoehenpunktPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.RLNachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Gebaeudenummer',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnameEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.LiegenschaftLiegenschaft_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.Einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementSymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjGebaeudenummer',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.BenanntesGebietBenanntesGebiet_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnameObjektname_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjLiegenschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelpunktPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.FlurnamePosFlurnamePos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktSymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenzeEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.EinzelpunktPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenzeProjGemeindegrenze_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktSymbolHilfsfixpunktSymbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.NKNachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.Punktelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheSymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Hoehen.HoehenpunktPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.Darstellungsflaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementSymbolLinienelementSymbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.Objektname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeeingangEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePosOrtsnamePos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.Koordinatenanschrift',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPosHoheitsgrenzpunktPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenLinie',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Strassenstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPosGebaeudenummerPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Gemeindegrenze',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeBeschreibung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.ProjGemeindegrenze',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaecheSymbolProjBoFlaecheSymbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.Signalpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.LinienelementLinienelement_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.Linienobjekt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.LFP2Symbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.Bergwerk',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.GebaeudenummerPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPosHausnummerPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPosGrenzpunktPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.Ortsname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.PunktelementPunktelement_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnummerPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BoFlaecheSymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.Punktelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.Einzelpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.Grenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.Ortschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.PLZ6Nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Hoehen.Aussparung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.FlaechenelementFlaechenelement_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.HausnummerPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.SignalpunktPosSignalpunktPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HFP3',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.Gelaendename',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenLinieKoordinatenLinie_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Kantonsgrenzen.Kantonsgrenzabschnitt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayoutSymbolPlanLayoutSymbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.OrtsnamePos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Entstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.BBNachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbund',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.Objektname',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rutschgebiete.RutschungPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.GebaeudeeingangGebaeudeeingang_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.Hoheitsgrenzpunkt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjBergwerkProjBergwerk_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftKoordinatenanschrift_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planeinteilungen.Plan',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.PlanLayout',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.SelbstRecht',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.TSEinteilung.Toleranzstufe',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie2.HFP2Nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3Symbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.FlaechenelementFlaechenelement_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktSymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nomenklatur.GelaendenamePosGelaendenamePos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.Gebaeudeeingang',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1Symbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.Grundstueck',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.Linienelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3SymbolLFP3Symbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.GrundstueckPosGrundstueckPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsVerbundText',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.TSEinteilung.ToleranzstufePos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.LokalisationsName',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.LinienelementSymbol',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjGrundstueckEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Landesgrenzen.Landesgrenzabschnitt',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.EinzelpunktPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsName',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Hoehen.Gelaendekante',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjBoFlaeche',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.PlanbeschriftungPosPlanbeschriftungPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.DarstellungsflaecheDarstellungsflaeche_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.LFP3PosLFP3Pos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjLiegenschaftProjLiegenschaft_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.EinzelobjektEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.ProjSelbstRecht',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.PunktelementPunktelement_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planeinteilungen.PlangeometriePlangeometrie_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Pos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1PosLFP1Pos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.Liegenschaft',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Planrahmen.KoordinatenanschriftPosKoordinatenanschriftPos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie3.HilfsfixpunktEntstehung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.SelbstRechtSelbstRecht_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gemeindegrenzen.HoheitsgrenzpunktSymbolHoheitsgrenzpunktSymbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ProjObjektnamePos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Nummerierungsbereiche.Nummerierungsbereich',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Rohrleitungen.Linienelement',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Bodenbedeckung.ObjektnamePosObjektnamePos_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.LFP1SymbolLFP1Symbol_von',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.FixpunkteKategorie1.HFP1Nachfuehrung',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Gebaeudeadressen.BenanntesGebiet',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Liegenschaften.GrenzpunktPos',NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVSO24LV95.Einzelobjekte.ObjektnamePosObjektnamePos_von',NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib4_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',0,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib4_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unvollstaendig',1,'unvollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.rohrleitungen_linienelement_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sichtbar',0,'sichtbar',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_projgrundstueck_vollstaendigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Vollstaendig',0,'Vollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_projgrundstueck_vollstaendigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unvollstaendig',1,'unvollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_projgrundstueck_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rechtskraeftig',0,'rechtskraeftig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_projgrundstueck_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',1,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_kreuzart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Koord_Kreuz',0,'Koord Kreuz',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_kreuzart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Netzkreuz',1,'Netzkreuz',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_kreuzart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Netzmarkierung',2,'Netzmarkierung',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_kreuzart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',3,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib6_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',0,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib6_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unvollstaendig',1,'unvollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_attributeprovisorisch (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_attributeprovisorisch (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.versicherungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Stein',0,'Stein',FALSE,NULL);
INSERT INTO live_dm01avso24.versicherungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Kunststoffzeichen',1,'Kunststoffzeichen',FALSE,NULL);
INSERT INTO live_dm01avso24.versicherungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Bolzen',2,'Bolzen',FALSE,NULL);
INSERT INTO live_dm01avso24.versicherungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Rohr',3,'Rohr',FALSE,NULL);
INSERT INTO live_dm01avso24.versicherungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Pfahl',4,'Pfahl',FALSE,NULL);
INSERT INTO live_dm01avso24.versicherungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Kreuz',5,'Kreuz',FALSE,NULL);
INSERT INTO live_dm01avso24.versicherungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unversichert',6,'unversichert',FALSE,NULL);
INSERT INTO live_dm01avso24.versicherungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',7,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ZH',0,'ZH',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BE',1,'BE',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'LU',2,'LU',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'UR',3,'UR',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SZ',4,'SZ',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'OW',5,'OW',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'NW',6,'NW',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GL',7,'GL',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ZG',8,'ZG',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'FR',9,'FR',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SO',10,'SO',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BS',11,'BS',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BL',12,'BL',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SH',13,'SH',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AR',14,'AR',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AI',15,'AI',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SG',16,'SG',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GR',17,'GR',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AG',18,'AG',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TG',19,'TG',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TI',20,'TI',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'VD',21,'VD',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'VS',22,'VS',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'NE',23,'NE',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GE',24,'GE',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'JU',25,'JU',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'FL',26,'FL',FALSE,NULL);
INSERT INTO live_dm01avso24.nummerierngsbrche_kantonskuerzel (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'CH',27,'CH',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_planlayout_mit_koordinatennetz (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_planlayout_mit_koordinatennetz (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grundstuecksart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Liegenschaft',0,'Liegenschaft',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grundstuecksart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SelbstRecht.Baurecht',1,'SelbstRecht.Baurecht',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grundstuecksart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SelbstRecht.Quellenrecht',2,'SelbstRecht.Quellenrecht',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grundstuecksart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SelbstRecht.Konzessionsrecht',3,'SelbstRecht.Konzessionsrecht',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grundstuecksart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SelbstRecht.weitere',4,'SelbstRecht.weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grundstuecksart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Bergwerk',5,'Bergwerk',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grenzpunkt_exaktdefiniert (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Ja',0,'Ja',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grenzpunkt_exaktdefiniert (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Nein',1,'Nein',FALSE,NULL);
INSERT INTO live_dm01avso24.rohrleitungen_lineattrib7_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sichtbar',0,'sichtbar',FALSE,NULL);
INSERT INTO live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_symbolart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Nordpfeil',0,'Nordpfeil',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_symbolart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',1,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rechtskraeftig',0,'rechtskraeftig',FALSE,NULL);
INSERT INTO live_dm01avso24.kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',1,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'provisorisch',2,'provisorisch',FALSE,NULL);
INSERT INTO live_dm01avso24.kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'undefiniert',3,'undefiniert',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_darstellungsflaeche_auswahlart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vollstaendig',0,'vollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_darstellungsflaeche_auswahlart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'teilweise',1,'teilweise',FALSE,NULL);
INSERT INTO live_dm01avso24.schriftgroesse (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'klein',0,'klein',FALSE,NULL);
INSERT INTO live_dm01avso24.schriftgroesse (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mittel',1,'mittel',FALSE,NULL);
INSERT INTO live_dm01avso24.schriftgroesse (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gross',2,'gross',FALSE,NULL);
INSERT INTO live_dm01avso24.gemeindegrenzen_lineattrib8_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rechtskraeftig',0,'rechtskraeftig',FALSE,NULL);
INSERT INTO live_dm01avso24.gemeindegrenzen_lineattrib8_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',1,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.gemeindegrenzen_lineattrib8_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'provisorisch',2,'provisorisch',FALSE,NULL);
INSERT INTO live_dm01avso24.gemeindegrenzen_lineattrib8_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'undefiniert',3,'undefiniert',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_beschriftungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Nachbarn',0,'Nachbarn',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_beschriftungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Nachbarplan',1,'Nachbarplan',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_beschriftungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'UebersichtNachbarn',2,'UebersichtNachbarn',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_beschriftungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Strassenrichtung',3,'Strassenrichtung',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_beschriftungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'LK_Nr',4,'LK Nr',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_beschriftungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BFSNr',5,'BFSNr',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_beschriftungsart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',6,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_einzelpunkt_exaktdefiniert (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Ja',0,'Ja',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_einzelpunkt_exaktdefiniert (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Nein',1,'Nein',FALSE,NULL);
INSERT INTO live_dm01avso24.plzortschaft_ortschaft_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.plzortschaft_ortschaft_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_nummerierungsprinzip (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'keineNummern',0,'keineNummern',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_nummerierungsprinzip (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'beliebig',1,'beliebig',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_nummerierungsprinzip (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'aufsteigend',2,'aufsteigend',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_nummerierungsprinzip (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ungeradelinks',3,'ungeradelinks',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_nummerierungsprinzip (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'geradelinks',4,'geradelinks',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_attributeprovisorisch (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_attributeprovisorisch (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.fixpunktktgrie3_hilfsfixpunkt_protokoll (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.fixpunktktgrie3_hilfsfixpunkt_protokoll (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.rohrleitungen_einzelpunkt_exaktdefiniert (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Ja',0,'Ja',FALSE,NULL);
INSERT INTO live_dm01avso24.rohrleitungen_einzelpunkt_exaktdefiniert (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Nein',1,'Nein',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib5_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',0,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib5_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unvollstaendig',1,'unvollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_linientyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'standard',0,'standard',FALSE,NULL);
INSERT INTO live_dm01avso24.planrahmen_linientyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',1,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (0,'Left',0,'Left',FALSE,NULL);
INSERT INTO live_dm01avso24.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (1,'Center',1,'Center',FALSE,NULL);
INSERT INTO live_dm01avso24.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (2,'Right',2,'Right',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_strassenstueck_istachse (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_strassenstueck_istachse (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_istoffiziellebezeichnung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_istoffiziellebezeichnung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.astatus (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'projektiert',0,'projektiert',FALSE,NULL);
INSERT INTO live_dm01avso24.astatus (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gueltig',1,'gueltig',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_istoffiziellebezeichnung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_istoffiziellebezeichnung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_im_gebaeude (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BB',0,'BB',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_gebaeudeeingang_im_gebaeude (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'EO',1,'EO',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BenanntesGebiet',0,'BenanntesGebiet',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Strasse',1,'Strasse',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Platz',2,'Platz',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grundstueck_vollstaendigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Vollstaendig',0,'Vollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grundstueck_vollstaendigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unvollstaendig',1,'unvollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grenzpunkt_hoheitsgrenzsteinalt (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grenzpunkt_hoheitsgrenzsteinalt (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Mauer.Mauer',0,'Mauer.Mauer',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Mauer.Laermschutzwand',1,'Mauer.Laermschutzwand',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unterirdisches_Gebaeude',2,'unterirdisches Gebaeude',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'uebriger_Gebaeudeteil',3,'uebriger Gebaeudeteil',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'eingedoltes_oeffentliches_Gewaesser',4,'eingedoltes oeffentliches Gewaesser',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'wichtige_Treppe',5,'wichtige Treppe',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Tunnel_Unterfuehrung_Galerie',6,'Tunnel Unterfuehrung Galerie',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Bruecke_Passerelle',7,'Bruecke Passerelle',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Bahnsteig',8,'Bahnsteig',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Brunnen',9,'Brunnen',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Reservoir',10,'Reservoir',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Pfeiler',11,'Pfeiler',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Unterstand',12,'Unterstand',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Silo_Turm_Gasometer',13,'Silo Turm Gasometer',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Hochkamin',14,'Hochkamin',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Denkmal',15,'Denkmal',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Mast_Antenne.Mast_Antenne',16,'Mast Antenne.Mast Antenne',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Mast_Antenne.Mast_Leitung',17,'Mast Antenne.Mast Leitung',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Aussichtsturm',18,'Aussichtsturm',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Uferverbauung',19,'Uferverbauung',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Schwelle',20,'Schwelle',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Lawinenverbauung',21,'Lawinenverbauung',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'massiver_Sockel',22,'massiver Sockel',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Ruine_archaeologisches_Objekt',23,'Ruine archaeologisches Objekt',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Landungssteg',24,'Landungssteg',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'einzelner_Fels',25,'einzelner Fels',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'schmale_bestockte_Flaeche',26,'schmale bestockte Flaeche',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Rinnsal',27,'Rinnsal',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'schmaler_Weg.schmaler_Weg',28,'schmaler Weg.schmaler Weg',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'schmaler_Weg.Fahrspur',29,'schmaler Weg.Fahrspur',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Hochspannungsfreileitung',30,'Hochspannungsfreileitung',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Druckleitung',31,'Druckleitung',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Bahngeleise.Bahngeleise',32,'Bahngeleise.Bahngeleise',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Bahngeleise.Bahngeleise_ueberdeckt',33,'Bahngeleise.Bahngeleise ueberdeckt',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Luftseilbahn',34,'Luftseilbahn',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Gondelbahn_Sesselbahn',35,'Gondelbahn Sesselbahn',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Materialseilbahn',36,'Materialseilbahn',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Skilift',37,'Skilift',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Faehre',38,'Faehre',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Grotte_Hoehleneingang',39,'Grotte Hoehleneingang',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Achse',40,'Achse',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'wichtiger_Einzelbaum',41,'wichtiger Einzelbaum',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Bildstock_Kruzifix',42,'Bildstock Kruzifix',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Quelle',43,'Quelle',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Bezugspunkt',44,'Bezugspunkt',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_eoart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',45,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.fixpunktktgrie1_lfp1_begehbarkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'begehbar',0,'begehbar',FALSE,NULL);
INSERT INTO live_dm01avso24.fixpunktktgrie1_lfp1_begehbarkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nicht_begehbar',1,'nicht begehbar',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grundstueck_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rechtskraeftig',0,'rechtskraeftig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_grundstueck_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',1,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Ja',0,'Ja',FALSE,NULL);
INSERT INTO live_dm01avso24.gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Nein',1,'Nein',FALSE,NULL);
INSERT INTO live_dm01avso24.qualitaetsstandard (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AV93',0,'AV93',FALSE,NULL);
INSERT INTO live_dm01avso24.qualitaetsstandard (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'PV74',1,'PV74',FALSE,NULL);
INSERT INTO live_dm01avso24.qualitaetsstandard (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'PN',2,'PN',FALSE,NULL);
INSERT INTO live_dm01avso24.qualitaetsstandard (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'PEP',3,'PEP',FALSE,NULL);
INSERT INTO live_dm01avso24.qualitaetsstandard (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',4,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.rohrleitungen_signalpunkt_punktart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Signal',0,'Signal',FALSE,NULL);
INSERT INTO live_dm01avso24.rohrleitungen_signalpunkt_punktart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Tafel_Stein',1,'Tafel Stein',FALSE,NULL);
INSERT INTO live_dm01avso24.rohrleitungen_signalpunkt_punktart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',2,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.status_ga (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'projektiert',0,'projektiert',FALSE,NULL);
INSERT INTO live_dm01avso24.status_ga (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'real',1,'real',FALSE,NULL);
INSERT INTO live_dm01avso24.status_ga (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vergangen',2,'vergangen',FALSE,NULL);
INSERT INTO live_dm01avso24.hoehen_gelaendekante_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Bruchkante',0,'Bruchkante',FALSE,NULL);
INSERT INTO live_dm01avso24.hoehen_gelaendekante_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Strukturlinie',1,'Strukturlinie',FALSE,NULL);
INSERT INTO live_dm01avso24.hoehen_gelaendekante_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',2,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.fixpunktktgrie3_lfp3_protokoll (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.fixpunktktgrie3_lfp3_protokoll (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.landesgrenzen_landesgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rechtskraeftig',0,'rechtskraeftig',FALSE,NULL);
INSERT INTO live_dm01avso24.landesgrenzen_landesgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',1,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.landesgrenzen_landesgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'provisorisch',2,'provisorisch',FALSE,NULL);
INSERT INTO live_dm01avso24.landesgrenzen_landesgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'undefiniert',3,'undefiniert',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.gebaeudeadrssen_lokalisation_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_einzelpunkt_exaktdefiniert (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Ja',0,'Ja',FALSE,NULL);
INSERT INTO live_dm01avso24.einzelobjekte_einzelpunkt_exaktdefiniert (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Nein',1,'Nein',FALSE,NULL);
INSERT INTO live_dm01avso24.hoehen_aussparung_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ToteFlaeche',0,'ToteFlaeche',FALSE,NULL);
INSERT INTO live_dm01avso24.hoehen_aussparung_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',1,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib3_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',0,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib3_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unvollstaendig',1,'unvollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib1_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',0,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib1_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unvollstaendig',1,'unvollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib2_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',0,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.liegenschaften_lineattrib2_linienart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unvollstaendig',1,'unvollstaendig',FALSE,NULL);
INSERT INTO live_dm01avso24.sprachtyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'de',0,'de',FALSE,NULL);
INSERT INTO live_dm01avso24.sprachtyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fr',1,'fr',FALSE,NULL);
INSERT INTO live_dm01avso24.sprachtyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'it',2,'it',FALSE,NULL);
INSERT INTO live_dm01avso24.sprachtyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rm',3,'rm',FALSE,NULL);
INSERT INTO live_dm01avso24.sprachtyp (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'en',4,'en',FALSE,NULL);
INSERT INTO live_dm01avso24.schriftstil (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'normal',0,'normal',FALSE,NULL);
INSERT INTO live_dm01avso24.schriftstil (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gesperrt',1,'gesperrt',FALSE,NULL);
INSERT INTO live_dm01avso24.schriftstil (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',2,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (0,'Top',0,'Top',FALSE,NULL);
INSERT INTO live_dm01avso24.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (1,'Cap',1,'Cap',FALSE,NULL);
INSERT INTO live_dm01avso24.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (2,'Half',2,'Half',FALSE,NULL);
INSERT INTO live_dm01avso24.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (3,'Base',3,'Base',FALSE,NULL);
INSERT INTO live_dm01avso24.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (4,'Bottom',4,'Bottom',FALSE,NULL);
INSERT INTO live_dm01avso24.plzortschaft_plz6_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.plzortschaft_plz6_inaenderung (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.zuverlaessigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',0,'ja',FALSE,NULL);
INSERT INTO live_dm01avso24.zuverlaessigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nein',1,'nein',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Gebaeude',0,'Gebaeude',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.Strasse_Weg',1,'befestigt.Strasse Weg',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.Trottoir',2,'befestigt.Trottoir',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.Verkehrsinsel',3,'befestigt.Verkehrsinsel',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.Bahn',4,'befestigt.Bahn',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.Flugplatz',5,'befestigt.Flugplatz',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.Wasserbecken',6,'befestigt.Wasserbecken',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.uebrige_befestigte.Sportanlage_befestigt',7,'befestigt.uebrige befestigte.Sportanlage befestigt',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.uebrige_befestigte.Lagerplatz',8,'befestigt.uebrige befestigte.Lagerplatz',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.uebrige_befestigte.Boeschungsbauwerk',9,'befestigt.uebrige befestigte.Boeschungsbauwerk',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.uebrige_befestigte.Gebaeudeerschliessung',10,'befestigt.uebrige befestigte.Gebaeudeerschliessung',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.uebrige_befestigte.Parkplatz',11,'befestigt.uebrige befestigte.Parkplatz',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'befestigt.uebrige_befestigte.uebrige_befestigte',12,'befestigt.uebrige befestigte.uebrige befestigte',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.Acker_Wiese_Weide.Acker_Wiese',13,'humusiert.Acker Wiese Weide.Acker Wiese',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.Acker_Wiese_Weide.Weide',14,'humusiert.Acker Wiese Weide.Weide',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.Intensivkultur.Reben',15,'humusiert.Intensivkultur.Reben',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.Intensivkultur.uebrige_Intensivkultur.Obstkultur',16,'humusiert.Intensivkultur.uebrige Intensivkultur.Obstkultur',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.Intensivkultur.uebrige_Intensivkultur.uebrige_Intensivkultur',17,'humusiert.Intensivkultur.uebrige Intensivkultur.uebrige Intensivkultur',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.Gartenanlage.Gartenanlage',18,'humusiert.Gartenanlage.Gartenanlage',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.Gartenanlage.Parkanlage_humusiert',19,'humusiert.Gartenanlage.Parkanlage humusiert',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.Gartenanlage.Sportanlage_humusiert',20,'humusiert.Gartenanlage.Sportanlage humusiert',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.Gartenanlage.Friedhof',21,'humusiert.Gartenanlage.Friedhof',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.Hoch_Flachmoor',22,'humusiert.Hoch Flachmoor',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'humusiert.uebrige_humusierte',23,'humusiert.uebrige humusierte',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Gewaesser.stehendes',24,'Gewaesser.stehendes',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Gewaesser.fliessendes',25,'Gewaesser.fliessendes',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Gewaesser.Schilfguertel',26,'Gewaesser.Schilfguertel',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bestockt.geschlossener_Wald',27,'bestockt.geschlossener Wald',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bestockt.Wytweide.Wytweide_dicht',28,'bestockt.Wytweide.Wytweide dicht',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bestockt.Wytweide.Wytweide_offen',29,'bestockt.Wytweide.Wytweide offen',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bestockt.uebrige_bestockte.Parkanlage_bestockt',30,'bestockt.uebrige bestockte.Parkanlage bestockt',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bestockt.uebrige_bestockte.Hecke',31,'bestockt.uebrige bestockte.Hecke',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bestockt.uebrige_bestockte.uebrige_bestockte',32,'bestockt.uebrige bestockte.uebrige bestockte',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vegetationslos.Fels',33,'vegetationslos.Fels',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vegetationslos.Gletscher_Firn',34,'vegetationslos.Gletscher Firn',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vegetationslos.Geroell_Sand',35,'vegetationslos.Geroell Sand',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vegetationslos.Abbau_Deponie.Steinbruch',36,'vegetationslos.Abbau Deponie.Steinbruch',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vegetationslos.Abbau_Deponie.Kiesgrube',37,'vegetationslos.Abbau Deponie.Kiesgrube',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vegetationslos.Abbau_Deponie.Deponie',38,'vegetationslos.Abbau Deponie.Deponie',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vegetationslos.Abbau_Deponie.uebriger_Abbau',39,'vegetationslos.Abbau Deponie.uebriger Abbau',FALSE,NULL);
INSERT INTO live_dm01avso24.bodenbedeckung_bbart (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vegetationslos.uebrige_vegetationslose',40,'vegetationslos.uebrige vegetationslose',FALSE,NULL);
INSERT INTO live_dm01avso24.bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rechtskraeftig',0,'rechtskraeftig',FALSE,NULL);
INSERT INTO live_dm01avso24.bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'streitig',1,'streitig',FALSE,NULL);
INSERT INTO live_dm01avso24.bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'provisorisch',2,'provisorisch',FALSE,NULL);
INSERT INTO live_dm01avso24.bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'undefiniert',3,'undefiniert',FALSE,NULL);
INSERT INTO live_dm01avso24.fixpunktktgrie2_lfp2_begehbarkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'begehbar',0,'begehbar',FALSE,NULL);
INSERT INTO live_dm01avso24.fixpunktktgrie2_lfp2_begehbarkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nicht_begehbar',1,'nicht begehbar',FALSE,NULL);
INSERT INTO live_dm01avso24.rohrleitungen_medium (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Oel',0,'Oel',FALSE,NULL);
INSERT INTO live_dm01avso24.rohrleitungen_medium (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Gas',1,'Gas',FALSE,NULL);
INSERT INTO live_dm01avso24.rohrleitungen_medium (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'weitere',2,'weitere',FALSE,NULL);
INSERT INTO live_dm01avso24.tseinteilung_toleranzstufe_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TS1',0,'TS1',FALSE,NULL);
INSERT INTO live_dm01avso24.tseinteilung_toleranzstufe_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TS2',1,'TS2',FALSE,NULL);
INSERT INTO live_dm01avso24.tseinteilung_toleranzstufe_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TS3',2,'TS3',FALSE,NULL);
INSERT INTO live_dm01avso24.tseinteilung_toleranzstufe_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TS4',3,'TS4',FALSE,NULL);
INSERT INTO live_dm01avso24.tseinteilung_toleranzstufe_art (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TS5',4,'TS5',FALSE,NULL);
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayoutsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktpos',NULL,'hilfsfixpunktpos_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie3_hilfsfixpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','liegenschaften_lsnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1pos',NULL,'lfp1pos_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie1_lfp1');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projliegenschaft',NULL,'projliegenschaft_von','ch.ehi.ili2db.foreignKey','liegenschaften_projgrundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_objektnamepos',NULL,'objektnamepos_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_objektname');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktsymbol',NULL,'hoheitsgrenzpunktsymbol_von','ch.ehi.ili2db.foreignKey','gemeindegrenzen_hoheitsgrenzpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_selbstrecht',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_gebaeudenummerpos',NULL,'gebaeudenummerpos_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_gebaeudenummer');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('landesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsname',NULL,'benannte','ch.ehi.ili2db.foreignKey','gebaeudeadressen_lokalisation');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudename',NULL,'gebaeudename_von','ch.ehi.ili2db.foreignKey','gebaeudeadressen_gebaeudeeingang');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planbeschriftungpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2pos',NULL,'lfp2pos_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie2_lfp2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_hausnummerpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_bergwerk',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('landesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.coordDimension','3');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunktpos',NULL,'einzelpunktpos_von','ch.ehi.ili2db.foreignKey','einzelobjekte_einzelpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunktpos',NULL,'hoehenpunktpos_von','ch.ehi.ili2db.foreignKey','hoehen_hoehenpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('landesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projselbstrecht',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsverbundtext',NULL,'ortschaftsverbundtext_von','ch.ehi.ili2db.foreignKey','plzortschaft_ortschaftsverbund');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2symbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudeeingang',NULL,'gebaeudeeingang_von','ch.ehi.ili2db.foreignKey','gebaeudeadressen_lokalisation');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_punktelement',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'gebaeudenamepos_von','ch.ehi.ili2db.foreignKey','gebaeudeadressen_gebaeudename');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_netzkreuz',NULL,'netzkreuz_von','ch.ehi.ili2db.foreignKey','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsnamepos',NULL,'ortsnamepos_von','ch.ehi.ili2db.foreignKey','nomenklatur_ortsname');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_leitungsobjekt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','rohrleitungen_rlnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaechesymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_projgemeindegrenze',NULL,'entstehung','ch.ehi.ili2db.foreignKey','gemeindegrenzen_gemnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_punktelement',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktsymbol',NULL,'hilfsfixpunktsymbol_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie3_hilfsfixpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaechesymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('landesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'projgrundstueckpos_von','ch.ehi.ili2db.foreignKey','liegenschaften_projgrundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'nummerierungsbereichpos_von','ch.ehi.ili2db.foreignKey','nummerierngsbrche_nummerierungsbereich');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','fixpunktekatgrie3_hilfsfpnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfpnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projobjektname',NULL,'projobjektname_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_projboflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaechesymbol',NULL,'boflaechesymbol_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_boflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c3Max','1600.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelementsymbol',NULL,'flaechenelementsymbol_von','ch.ehi.ili2db.foreignKey','einzelobjekte_flaechenelement');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemeindegrenze',NULL,'gemeindegrenze_von','ch.ehi.ili2db.foreignKey','gemeindegrenzen_gemeinde');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenanschriftpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisation',NULL,'entstehung','ch.ehi.ili2db.foreignKey','gebaeudeadressen_gebnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnummerpos',NULL,'objektnummerpos_von','ch.ehi.ili2db.foreignKey','einzelobjekte_objektnummer');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_plangeometrie',NULL,'plangeometrie_von','ch.ehi.ili2db.foreignKey','planeinteilungen_plan');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projliegenschaft',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'grundstueckpos_von','ch.ehi.ili2db.foreignKey','liegenschaften_grundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenanschrift',NULL,'koordinatenanschrift_von','ch.ehi.ili2db.foreignKey','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelement',NULL,'linienelement_von','ch.ehi.ili2db.foreignKey','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenlinie',NULL,'koordinatenlinie_von','ch.ehi.ili2db.foreignKey','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_darstellungsflaeche',NULL,'darstellungsflaeche_von','ch.ehi.ili2db.foreignKey','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelobjekt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','einzelobjekte_eonachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('landesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnummerpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelementsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_bergwerk',NULL,'bergwerk_von','ch.ehi.ili2db.foreignKey','liegenschaften_grundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayoutsymbol',NULL,'planlayoutsymbol_von','ch.ehi.ili2db.foreignKey','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaeche',NULL,'entstehung','ch.ehi.ili2db.foreignKey','bodenbedeckung_bbnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfpnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfpnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_hausnummerpos',NULL,'hausnummerpos_von','ch.ehi.ili2db.foreignKey','gebaeudeadressen_gebaeudeeingang');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'ortschaft_von','ch.ehi.ili2db.foreignKey','plzortschaft_ortschaftsverbund');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktpos',NULL,'hoheitsgrenzpunktpos_von','ch.ehi.ili2db.foreignKey','gemeindegrenzen_hoheitsgrenzpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_gelaendekante',NULL,'entstehung','ch.ehi.ili2db.foreignKey','hoehen_honachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projobjektnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('kantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_punktelement',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnummer',NULL,'objektnummer_von','ch.ehi.ili2db.foreignKey','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelementsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('kantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projselbstrecht',NULL,'projselbstrecht_von','ch.ehi.ili2db.foreignKey','liegenschaften_projgrundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projbergwerk',NULL,'projbergwerk_von','ch.ehi.ili2db.foreignKey','liegenschaften_projgrundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaeche',NULL,'entstehung','ch.ehi.ili2db.foreignKey','bodenbedeckung_bbnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1symbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunktpos',NULL,'einzelpunktpos_von','ch.ehi.ili2db.foreignKey','rohrleitungen_einzelpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktsymbol',NULL,'grenzpunktsymbol_von','ch.ehi.ili2db.foreignKey','liegenschaften_grenzpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunkt',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_flaechenelement',NULL,'flaechenelement_von','ch.ehi.ili2db.foreignKey','rohrleitungen_leitungsobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_objektnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'plz6_von','ch.ehi.ili2db.foreignKey','plzortschaft_ortschaft');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c3Max','1600.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2symbol',NULL,'lfp2symbol_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie2_lfp2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_liegenschaft',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektname',NULL,'objektname_von','ch.ehi.ili2db.foreignKey','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','rohrleitungen_rlnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('kantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projbergwerk',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('landesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3pos',NULL,'hfp3pos_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie3_hfp3');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1pos',NULL,'hfp1pos_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie1_hfp1');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelement',NULL,'flaechenelement_von','ch.ehi.ili2db.foreignKey','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufepos',NULL,'toleranzstufepos_von','ch.ehi.ili2db.foreignKey','tseinteilung_toleranzstufe');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_leitungsobjektpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planbeschriftung',NULL,'planbeschriftung_von','ch.ehi.ili2db.foreignKey','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_planpos',NULL,'planpos_von','ch.ehi.ili2db.foreignKey','planeinteilungen_plan');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_netzkreuz',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueck',NULL,'entstehung','ch.ehi.ili2db.foreignKey','liegenschaften_lsnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1',NULL,'entstehung','ch.ehi.ili2db.foreignKey','fixpunktekatgrie1_hfp1nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfpnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurname',NULL,'entstehung','ch.ehi.ili2db.foreignKey','nomenklatur_nknachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projgebaeudenummerpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_gebaeudenummerpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','gemeindegrenzen_gemnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenanschriftpos',NULL,'koordinatenanschriftpos_von','ch.ehi.ili2db.foreignKey','planrahmen_koordinatenanschrift');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('kantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_aussparung',NULL,'entstehung','ch.ehi.ili2db.foreignKey','hoehen_honachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname',NULL,'ortschaftsname_von','ch.ehi.ili2db.foreignKey','plzortschaft_ortschaft');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueck',NULL,'gesamteflaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaechesymbol',NULL,'projboflaechesymbol_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_projboflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_benanntesgebiet',NULL,'benanntesgebiet_von','ch.ehi.ili2db.foreignKey','gebaeudeadressen_lokalisation');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnamepos',NULL,'objektnamepos_von','ch.ehi.ili2db.foreignKey','einzelobjekte_objektname');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2pos',NULL,'hfp2pos_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie2_hfp2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_gebaeudenummer',NULL,'gebaeudenummer_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_boflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsname',NULL,'entstehung','ch.ehi.ili2db.foreignKey','nomenklatur_nknachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('landesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','hoehen_honachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3symbol',NULL,'lfp3symbol_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie3_lfp3');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','3');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueck',NULL,'gesamteflaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudeeingang',NULL,'entstehung','ch.ehi.ili2db.foreignKey','gebaeudeadressen_gebnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'strassenstueck_von','ch.ehi.ili2db.foreignKey','gebaeudeadressen_lokalisation');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueck',NULL,'entstehung','ch.ehi.ili2db.foreignKey','liegenschaften_lsnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projobjektnamepos',NULL,'projobjektnamepos_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_projobjektname');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfpnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2',NULL,'entstehung','ch.ehi.ili2db.foreignKey','fixpunktekatgrie2_lfp2nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemeindegrenze',NULL,'entstehung','ch.ehi.ili2db.foreignKey','gemeindegrenzen_gemnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunktpos',NULL,'einzelpunktpos_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_einzelpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2',NULL,'entstehung','ch.ehi.ili2db.foreignKey','fixpunktekatgrie2_hfp2nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschungpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurnamepos',NULL,'flurnamepos_von','ch.ehi.ili2db.foreignKey','nomenklatur_flurname');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_linienobjekt',NULL,'linienobjekt_von','ch.ehi.ili2db.foreignKey','planrahmen_planlayout');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_gelaendenamepos',NULL,'gelaendenamepos_von','ch.ehi.ili2db.foreignKey','nomenklatur_gelaendename');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_planpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_gelaendenamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_liegenschaft',NULL,'liegenschaft_von','ch.ehi.ili2db.foreignKey','liegenschaften_grundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('kantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('kantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelementsymbol',NULL,'linienelementsymbol_von','ch.ehi.ili2db.foreignKey','einzelobjekte_linienelement');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projgebaeudenummerpos',NULL,'projgebaeudenummerpos_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_projgebaeudenummer');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfpnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3',NULL,'entstehung','ch.ehi.ili2db.foreignKey','fixpunktekatgrie3_hfp3nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'e_azimut','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3',NULL,'entstehung','ch.ehi.ili2db.foreignKey','fixpunktekatgrie3_lfp3nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1symbol',NULL,'lfp1symbol_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie1_lfp1');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projgebaeudenummer',NULL,'projgebaeudenummer_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_projboflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c3Min','-200.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c3Min','-200.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfpnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_objektname',NULL,'objektname_von','ch.ehi.ili2db.foreignKey','bodenbedeckung_boflaeche');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudebeschreibung',NULL,'gebaeudebeschreibung_von','ch.ehi.ili2db.foreignKey','gebaeudeadressen_gebaeudeeingang');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_selbstrecht',NULL,'selbstrecht_von','ch.ehi.ili2db.foreignKey','liegenschaften_grundstueck');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktpos',NULL,'grenzpunktpos_von','ch.ehi.ili2db.foreignKey','liegenschaften_grenzpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1',NULL,'entstehung','ch.ehi.ili2db.foreignKey','fixpunktekatgrie1_lfp1nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_linienelement',NULL,'linienelement_von','ch.ehi.ili2db.foreignKey','rohrleitungen_leitungsobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_punktelement',NULL,'punktelement_von','ch.ehi.ili2db.foreignKey','rohrleitungen_leitungsobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_leitungsobjektpos',NULL,'leitungsobjektpos_von','ch.ehi.ili2db.foreignKey','rohrleitungen_leitungsobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunktpos',NULL,'signalpunktpos_von','ch.ehi.ili2db.foreignKey','rohrleitungen_signalpunkt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planeinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3pos',NULL,'lfp3pos_von','ch.ehi.ili2db.foreignKey','fixpunktekatgrie3_lfp3');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planbeschriftungpos',NULL,'planbeschriftungpos_von','ch.ehi.ili2db.foreignKey','planrahmen_planbeschriftung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('tseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'nbgeometrie_von','ch.ehi.ili2db.foreignKey','nummerierngsbrche_nummerierungsbereich');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_einzelpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','bodenbedeckung_bbnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rohrleitungen_signalpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','rohrleitungen_rlnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'lokalisationsnamepos_von','ch.ehi.ili2db.foreignKey','gebaeudeadressen_lokalisationsname');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_plz6',NULL,'entstehung','ch.ehi.ili2db.foreignKey','plzortschaft_plz6nachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('kantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'ortschaftsname_pos_von','ch.ehi.ili2db.foreignKey','plzortschaft_ortschaftsname');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3symbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_gelaendename',NULL,'entstehung','ch.ehi.ili2db.foreignKey','nomenklatur_nknachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_punktelement',NULL,'punktelement_von','ch.ehi.ili2db.foreignKey','einzelobjekte_einzelobjekt');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_projgemeindegrenze',NULL,'projgemeindegrenze_von','ch.ehi.ili2db.foreignKey','gemeindegrenzen_gemeinde');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'entstehung','ch.ehi.ili2db.foreignKey','plzortschaft_osnachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie2_lfp2',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschungpos',NULL,'rutschungpos_von','ch.ehi.ili2db.foreignKey','rutschgebiete_rutschung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('liegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie3_hilfsfixpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_einzelpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','einzelobjekte_eonachfuehrung');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1205000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('hoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('bodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('nomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('rutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('einzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.c2Max','1270000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('fixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Max','2660000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('gebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.c1Min','2580000.000');
INSERT INTO live_dm01avso24.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('planrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('fixpunktktgrie2_lfp2_begehbarkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gebaeudeadrssen_lokalisation_nummerierungsprinzip','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('planrahmen_kreuzart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_grundstueck_gueltigkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gebaeudeadrssen_gebaeudeeingang_inaenderung','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gebaeudeadrssen_gebaeudeeingang_istoffiziellebezeichnung','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gebaeudeadrssen_lokalisation_art','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('rohrleitungen_linienelement_linienart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('valignment','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('planrahmen_symbolart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_lineattrib4_linienart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('einzelobjekte_einzelpunkt_exaktdefiniert','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('astatus','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gebaeudeadrssen_gebaeudeeingang_im_gebaeude','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('rohrleitungen_lineattrib7_linienart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('qualitaetsstandard','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_grenzpunkt_hoheitsgrenzsteinalt','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('fixpunktktgrie1_lfp1_begehbarkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('rohrleitungen_signalpunkt_punktart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('bodenbedeckung_einzelpunkt_exaktdefiniert','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gebaeudeadrssen_strassenstueck_istachse','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gebaeudeadrssen_lokalisation_inaenderung','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_lineattrib3_linienart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('planrahmen_planlayout_mit_koordinatennetz','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_projgrundstueck_gueltigkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('rohrleitungen_medium','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gebaeudeadrssen_gebaeudeeingang_attributeprovisorisch','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('versicherungsart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gemeindegrenzen_lineattrib8_linienart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('tseinteilung_toleranzstufe_art','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_grundstueck_vollstaendigkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('hoehen_gelaendekante_art','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('plzortschaft_ortschaft_inaenderung','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gebaeudeadrssen_lokalisation_attributeprovisorisch','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('bodenbedeckung_bbart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('sprachtyp','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_grundstuecksart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_lineattrib2_linienart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('zuverlaessigkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('planrahmen_beschriftungsart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('halignment','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('fixpunktktgrie3_hilfsfixpunkt_protokoll','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('landesgrenzen_landesgrenzabschnitt_gueltigkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('einzelobjekte_eoart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('schriftgroesse','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_lineattrib1_linienart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_lineattrib6_linienart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('fixpunktktgrie3_lfp3_protokoll','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('status_ga','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('rohrleitungen_einzelpunkt_exaktdefiniert','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('plzortschaft_plz6_inaenderung','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('planrahmen_darstellungsflaeche_auswahlart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_grenzpunkt_exaktdefiniert','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_projgrundstueck_vollstaendigkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('gebaeudeadrssen_lokalisation_istoffiziellebezeichnung','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('hoehen_aussparung_art','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('schriftstil','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('planrahmen_linientyp','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('liegenschaften_lineattrib5_linienart','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('nummerierngsbrche_kantonskuerzel','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO live_dm01avso24.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('dm01avso24lv95.ili','1.0','DM01AVSO24LV95','TRANSFER INTERLIS1;
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!! Datenmodell 2001 der Amtlichen Vermessung "Solothurn" (DM.01-AV-SO-LV95)
!! beschrieben in INTERLIS Version 1 (SN 612030)
!! Version: 24 deutsch     (Datum: 4. Juni 2004)
!! Dateiname: DM01AVSO24LV95.ili (Letzte Aenderung am: 7. Oktober 2014)
!! DM01AVSO24LV95.ili basiert auf DM01AVSO24.ili
!! Geaendert: Alle Overlaps < 0.002 m
!!
!! Zusaetzliche NBIdent: 	nur fuer Hoheitsgrenzpunkte, optional fuer nummerierte
!! Kantons- und Landesgrenzsteine
!! Mehranforderungen TOPIC FixpunkteKategorie3:	Einfuehrung von Hilfsfixpunkten
!! Mehranforderungen BB:	siehe Domain
!! Mehranforderungen EO:	siehe Domain
!! Mehranforderungen Gebaeudeadressen: Anfangspunkt der Strassenstuecke sind obligatorisch
!! Gebaeudenummern nur in TOPIC Gebaeudeadressen (TABLE Gebaeudeeingang)
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
MODEL DM01AVSO24LV95
  DOMAIN
    LKoord = COORD2 2580000.000  1205000.000
                    2660000.000  1270000.000;
    HKoord = COORD3 2580000.000  1205000.000  -200.000
                    2660000.000  1270000.000  1600.000;
    Hoehe = DIM1 -200.000 1600.000;
    Genauigkeit = [0.0 .. 700.0];  !! in cm
    Zuverlaessigkeit = (
      ja,  !! genuegend
      nein);  !! ungenuegend
    Status = (
      projektiert,
      gueltig);
    Qualitaetsstandard = (
      AV93,
      PV74,
      PN,
      PEP, !! Provisorische Ersatzprodukte
      weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
    Rotation = GRADS 0.0 399.9;
    Schriftgroesse = (
      klein,
      mittel,
      gross);
    Schriftstil = (
      normal,
      gesperrt,
      weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
    Versicherungsart = (
      Stein,
      Kunststoffzeichen,
      Bolzen,
      Rohr,
      Pfahl,
      Kreuz,
      unversichert,
      weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
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
 
  TOPIC FixpunkteKategorie1 =
    TABLE LFP1Nachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! Vergabe durch swisstopo
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
      IDENT NBIdent, Identifikator;
    END LFP1Nachfuehrung;
    !! Ist der LFP1 auch Hoheitsgrenzpunkt, so muss Punktzeichen
    !! angegeben werden, da dieser Punkt in
    !! Gemeindegrenzen.Hoheitsgrenzpunkt kopiert wird. 
    TABLE LFP1 =  !! Triangulationspunkt I-IIIter Ordnung
      Entstehung: -> LFP1Nachfuehrung;  !! Beziehung 1-mc
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Nummer: TEXT*12;  !! Vergabe durch swisstopo
      Geometrie: LKoord;
      HoeheGeom: OPTIONAL Hoehe;
      LageGen: Genauigkeit;
      LageZuv: Zuverlaessigkeit;
      HoeheGen: OPTIONAL Genauigkeit;  !! abhaengig von HoeheGeom
      HoeheZuv: OPTIONAL Zuverlaessigkeit;  !! abhaengig von HoeheGeom
      Begehbarkeit: (
        begehbar,
        nicht_begehbar);
      Punktzeichen: OPTIONAL Versicherungsart;
    IDENT NBIdent, Nummer;
    END LFP1;
    TABLE LFP1Pos =
      LFP1Pos_von: -> LFP1;  !! Beziehung 1-1; beschriftet Nummer
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT LFP1Pos_von;
    END LFP1Pos;
    TABLE LFP1Symbol =
      LFP1Symbol_von: -> LFP1;  !! Beziehung 1-c
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
    IDENT LFP1Symbol_von;
    END LFP1Symbol;
    TABLE HFP1Nachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! Vergabe durch swisstopo
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;      
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
    IDENT NBIdent, Identifikator;
    END HFP1Nachfuehrung;
    TABLE HFP1 =  !! Landesnivellement
      Entstehung: -> HFP1Nachfuehrung;  !! Beziehung 1-mc
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Nummer: TEXT*12;  !! Vergabe durch swisstopo
      Geometrie: LKoord;
      HoeheGeom: Hoehe;
      LageGen: OPTIONAL Genauigkeit;
      LageZuv: OPTIONAL Zuverlaessigkeit;
      HoeheGen: Genauigkeit;
      HoeheZuv: Zuverlaessigkeit;
    IDENT NBIdent, Nummer; Geometrie;
    END HFP1;
    TABLE HFP1Pos =
      HFP1Pos_von: -> HFP1;  !! Beziehung 1-1; beschriftet Nummer
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT HFP1Pos_von;
    END HFP1Pos;
  END FixpunkteKategorie1.
 
  TOPIC FixpunkteKategorie2 =
    TABLE LFP2Nachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
    IDENT NBIdent, Identifikator;
    END LFP2Nachfuehrung;
     
    !! Ist der LFP2 auch Hoheitsgrenzpunkt, so muss Punktzeichen
    !! angegeben werden, da dieser Punkt in
    !! Gemeindegrenzen.Hoheitsgrenzpunkt kopiert wird. 
    TABLE LFP2 =  !! Triangulationspunkt IVter Ordnung
      Entstehung: -> LFP2Nachfuehrung;  !! Beziehung 1-mc
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Nummer: TEXT*12;  !! Vergabe durch swisstopo
      Geometrie: LKoord;
      HoeheGeom: OPTIONAL Hoehe;
      LageGen: Genauigkeit;
      LageZuv: Zuverlaessigkeit;
      HoeheGen: OPTIONAL Genauigkeit;  !! abhaengig von HoeheGeom
      HoeheZuv: OPTIONAL Zuverlaessigkeit;  !! abhaengig von HoeheGeom
      Begehbarkeit: (
        begehbar,
        nicht_begehbar);
      Punktzeichen: OPTIONAL Versicherungsart;
    IDENT NBIdent, Nummer;
    END LFP2;
    TABLE LFP2Pos =
      LFP2Pos_von: -> LFP2;  !! Beziehung 1-1; beschriftet Nummer
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT LFP2Pos_von;
    END LFP2Pos;
    TABLE LFP2Symbol =
      LFP2Symbol_von: -> LFP2;  !! Beziehung 1-c
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
    IDENT LFP2Symbol_von;
    END LFP2Symbol;
    TABLE HFP2Nachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
    IDENT NBIdent, Identifikator;
    END HFP2Nachfuehrung;
    TABLE HFP2 =  !! Kantonsnivellement
      Entstehung: -> HFP2Nachfuehrung;  !! Beziehung 1-mc
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Nummer: TEXT*12;  !! Vergabe durch Kanton
      Geometrie: LKoord;
      HoeheGeom: Hoehe;
      LageGen: OPTIONAL Genauigkeit;
      LageZuv: OPTIONAL Zuverlaessigkeit;
      HoeheGen: Genauigkeit;
      HoeheZuv: Zuverlaessigkeit;
    IDENT NBIdent, Nummer; Geometrie;
    END HFP2;
    TABLE HFP2Pos =
      HFP2Pos_von: -> HFP2;  !! Beziehung 1-1; beschriftet Nummer
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT HFP2Pos_von;
    END HFP2Pos;
  END FixpunkteKategorie2.
 
  TOPIC FixpunkteKategorie3 =
    TABLE LFP3Nachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
      IDENT NBIdent, Identifikator;
    END LFP3Nachfuehrung;
    TABLE LFP3 =
      !! Bisher Basispunkt, Verdichtungspunkt, Polygonpunkt, Passpunkt
      Entstehung: -> LFP3Nachfuehrung;  !! Beziehung 1-mc
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Nummer: TEXT*12;  !! Vergabe durch Kanton
      Geometrie: LKoord;
      HoeheGeom: OPTIONAL Hoehe;
      LageGen: Genauigkeit;
      LageZuv: Zuverlaessigkeit;
      HoeheGen: OPTIONAL Genauigkeit;  !! abhaengig von HoeheGeom
      HoeheZuv: OPTIONAL Zuverlaessigkeit;  !! abhaengig von HoeheGeom
      Punktzeichen: Versicherungsart;  !! nur unversichert nicht zugelassen
      Protokoll: (
        ja,
        nein);
    IDENT NBIdent, Nummer; Geometrie;
    END LFP3;
    TABLE LFP3Pos =
      LFP3Pos_von: -> LFP3;  !! Beziehung 1-1; beschriftet Nummer
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT LFP3Pos_von;
    END LFP3Pos;
    TABLE LFP3Symbol =
      LFP3Symbol_von: -> LFP3;  !! Beziehung 1-c
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
    IDENT LFP3Symbol_von;
    END LFP3Symbol;
 TABLE HilfsFPNachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das 
      !! Attribut Datum1 geloescht und das Attribut GueltigerEintrag wird 
      !! obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
      IDENT NBIdent, Identifikator;
    END HilfsFPNachfuehrung;
TABLE Hilfsfixpunkt =
      !! LFP4: Basispunkt, Verdichtungspunkt, Polygonpunkt oder Passpunkt
      !!       nach altem Recht, der Nachfuehrung nicht unterliegend
      !! LAP:  Lageaufnahmepunkt (Netzpunkte oder freie Stationierungen)
      !!       ohne dauerhafte Versicherung (Punktzeichen = unversichert)
      !! Genauigkeitsanforderungen wie LFP3
      !! Hilfsfixpunkte werden im Plan fuer das Grundbuch nicht dargestellt
      Entstehung: OPTIONAL -> HilfsFPNachfuehrung;  !! Beziehung c-mc
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Nummer: TEXT*12;
      Geometrie: LKoord;
      HoeheGeom: OPTIONAL Hoehe;
      LageGen: Genauigkeit;
      LageZuv: Zuverlaessigkeit;
      HoeheGen: OPTIONAL Genauigkeit;  !! abhaengig von HoeheGeom
      HoeheZuv: OPTIONAL Zuverlaessigkeit;  !! abhaengig von HoeheGeom
      Punktzeichen: Versicherungsart; !! nur unversichert zugelassen 
      Protokoll: (
        ja,
        nein);
      IDENT NBIdent, Nummer; Geometrie;
    END Hilfsfixpunkt;
    TABLE HilfsfixpunktPos =
      HilfsfixpunktPos_von: -> Hilfsfixpunkt;  !! Beziehung 1-c;
                                               !! beschriftet Nummer
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT HilfsfixpunktPos_von;
    END HilfsfixpunktPos;
    TABLE HilfsfixpunktSymbol =
      HilfsfixpunktSymbol_von: -> Hilfsfixpunkt;  !! Beziehung 1-c
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
    IDENT HilfsfixpunktSymbol_von;
    END HilfsfixpunktSymbol;
    TABLE HFP3Nachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;      
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
    IDENT NBIdent, Identifikator;
    END HFP3Nachfuehrung;
    TABLE HFP3 =  !! Gemeindenivellement, wenn keine Hoehe bei LFP3
      Entstehung: -> HFP3Nachfuehrung;  !! Beziehung 1-mc
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Nummer: TEXT*12;  !! Vergabe durch Kanton
      Geometrie: LKoord;
      HoeheGeom: Hoehe;
      LageGen: OPTIONAL Genauigkeit;
      LageZuv: OPTIONAL Zuverlaessigkeit;
      HoeheGen: Genauigkeit;
      HoeheZuv: Zuverlaessigkeit;
    IDENT NBIdent, Nummer; Geometrie;
    END HFP3;
    TABLE HFP3Pos =
      HFP3Pos_von: -> HFP3;  !! Beziehung 1-1; beschriftet Nummer
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT HFP3Pos_von;
    END HFP3Pos;
  END FixpunkteKategorie3.
 
  TOPIC Bodenbedeckung =
    DOMAIN
      BBArt = (
        Gebaeude,
        befestigt (
          Strasse_Weg,
          Trottoir,
          Verkehrsinsel,
          Bahn,
          Flugplatz,
          Wasserbecken,
        uebrige_befestigte (
          Sportanlage_befestigt, 			!! Mehranforderung
          Lagerplatz, 				!! Mehranforderung
          Boeschungsbauwerk, 			!! Mehranforderung
          Gebaeudeerschliessung, 		!! Mehranforderung
          Parkplatz, 				!! Mehranforderung
          uebrige_befestigte)),
        humusiert (Acker_Wiese_Weide ( 
          Acker_Wiese, 				!! Mehranforderung
          Weide), 				!! Mehranforderung
          Intensivkultur (
          Reben,
          uebrige_Intensivkultur(
             Obstkultur, 			!! Mehranforderung
             uebrige_Intensivkultur)),
          Gartenanlage (
          Gartenanlage, 
          Parkanlage_humusiert, 		!! Mehranforderung
          Sportanlage_humusiert, 		!! Mehranforderung
          Friedhof), 				!! Mehranforderung
          Hoch_Flachmoor,
          uebrige_humusierte),
        Gewaesser (
          stehendes,
          fliessendes,
          Schilfguertel),
        bestockt (
          geschlossener_Wald,
          Wytweide (  !! Wytweide = bestockte Weide, Erklaerungen Kap. 3.4
            Wytweide_dicht,
            Wytweide_offen),
          uebrige_bestockte (
          Parkanlage_bestockt, 		!! Mehranforderung
          Hecke, 					!! Mehranforderung
          uebrige_bestockte)),
        vegetationslos (
          Fels,
          Gletscher_Firn,
          Geroell_Sand,
          Abbau_Deponie (
          Steinbruch, 				!! Mehranforderung
          Kiesgrube, 				!! Mehranforderung
          Deponie, 
          uebriger_Abbau),
          uebrige_vegetationslose));
    TABLE BBNachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      Gueltigkeit: Status;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
    IDENT NBIdent, Identifikator;
    END BBNachfuehrung;
    TABLE ProjBoFlaeche =
      Entstehung: -> BBNachfuehrung
        // Gueltigkeit = projektiert //;  !! Beziehung 1-mc
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      Qualitaet: Qualitaetsstandard;
      Art: BBArt;
    NO IDENT
    END ProjBoFlaeche;
      !! Im Kt.SO existieren keine Gebaeudenummern (siehe TOPIC Gebaeudeadressen)
    TABLE ProjGebaeudenummer =
      ProjGebaeudenummer_von: -> ProjBoFlaeche // Art = Gebaeude //
                            ;!! Beziehung 1-mc
      Nummer: TEXT*12;  !! Vergabe durch Kanton (bzw. Gemeinde)
      !! GWR_EGID falls die Definition der Gebaeude mit jener des
      !! BFS uebereinstimmt
      GWR_EGID: OPTIONAL [1..999999999]; 
    NO IDENT
    END ProjGebaeudenummer;
    !! Im Kt.SO existieren keine Gebaeudenummern (siehe TOPIC Gebaeudeadressen)
    TABLE ProjGebaeudenummerPos =
      ProjGebaeudenummerPos_von: -> ProjGebaeudenummer; !! Beziehung 1-mc;
                          !! beschriftet Nummer
      Pos: LKoord;
      Ori: Rotation;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END ProjGebaeudenummerPos;
    TABLE ProjObjektname =
      ProjObjektname_von: -> ProjBoFlaeche;  !! Beziehung 1-mc
      Name: TEXT*30;
    NO IDENT
    END ProjObjektname;
    TABLE ProjObjektnamePos =
      ProjObjektnamePos_von: -> ProjObjektname;  !! Beziehung 1-mc;
                            !! beschriftet Name
      Pos: LKoord;
      Ori: Rotation;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END ProjObjektnamePos;
    !! siehe auch Bemerkungen zu BoFlaecheSymbol
    TABLE ProjBoFlaecheSymbol =
      ProjBoFlaecheSymbol_von: -> ProjBoFlaeche;  !! Beziehung 1-mc
      Pos: LKoord // Pos innerhalb ProjBoFlaeche //;
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
    NO IDENT
    END ProjBoFlaecheSymbol;
    TABLE BoFlaeche =
      Entstehung: -> BBNachfuehrung
        // Gueltigkeit = gueltig //;  !! Beziehung 1-mc
      Geometrie: AREA WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      Qualitaet: Qualitaetsstandard;
      Art: BBArt;
    NO IDENT
    END BoFlaeche;
    !! Im Kt.SO existieren keine Gebaeudenummern (siehe TOPIC Gebaeudeadressen)
    TABLE Gebaeudenummer =
      Gebaeudenummer_von: -> BoFlaeche // Art = Gebaeude //;  !! Beziehung 1-mc
      Nummer: TEXT*12;
      !! GWR_EGID falls die Definition der Gebaeude mit jener des
      !! BFS uebereinstimmt
      GWR_EGID: OPTIONAL [1..999999999];
    NO IDENT
    END Gebaeudenummer;
    !! Im Kt.SO existieren keine Gebaeudenummern (siehe TOPIC Gebaeudeadressen)
    TABLE GebaeudenummerPos =
      GebaeudenummerPos_von: -> Gebaeudenummer;  !! Beziehung 1-mc;
                           !! beschriftet Nummer
      Pos: LKoord;
      Ori: Rotation;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END GebaeudenummerPos;
    TABLE Objektname =
      Objektname_von: -> BoFlaeche;  !! Beziehung 1-mc
      Name: TEXT*30;
    NO IDENT
    END Objektname;
    TABLE ObjektnamePos =
      ObjektnamePos_von: -> Objektname;  !! Beziehung 1-mc; beschriftet Name
      Pos: LKoord;
      Ori: Rotation;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END ObjektnamePos;
    !! Im Plan fuer das Grundbuch werden Bodenbedeckungsflaechen
    !! entweder gerastert oder mit Symbolen gefuellt. Dabei sind in 
    !! Abhaengigkeit von Art nur folgende Symbole sinnvoll: 
    !! befestigt.Wasserbecken, Reben, Hoch_Flachmoor 
    !! (Symbol Moor), Gewaesser.stehendes (Symbol Wasserbecken),
    !! Gewaesser.fliessendes (Symbol Fliessrichtung), 
    !! Gewaesser.Schilfguertel (Symbol Schilfguertel).
    TABLE BoFlaecheSymbol =
      BoFlaecheSymbol_von: -> BoFlaeche;  !! Beziehung 1-mc
      Pos: LKoord // Pos innerhalb BoFlaeche //;
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
    NO IDENT
    END BoFlaecheSymbol;
    TABLE Einzelpunkt =
      Entstehung: OPTIONAL -> BBNachfuehrung;  !! Beziehung c-mc
Identifikator: OPTIONAL TEXT*12;
      Geometrie: LKoord
        // nicht zugleich LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //;
      LageGen: Genauigkeit;
      LageZuv: Zuverlaessigkeit;
      ExaktDefiniert: (    !! Toleranzvorschriften gemaess TVAV beachten
        Ja,
        Nein);
    IDENT Geometrie;
    END Einzelpunkt;
    TABLE EinzelpunktPos =
      EinzelpunktPos_von: -> Einzelpunkt;  !! Beziehung 1-c;
                        !! beschriftet Identifikator
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT EinzelpunktPos_von;
    END EinzelpunktPos;
  END Bodenbedeckung.
 
  TOPIC Einzelobjekte =
    DOMAIN
      EOArt = (
        Mauer (
             Mauer,
             Laermschutzwand),			!! Mehranforderung
        unterirdisches_Gebaeude,
        uebriger_Gebaeudeteil,
        eingedoltes_oeffentliches_Gewaesser,
        wichtige_Treppe,
        Tunnel_Unterfuehrung_Galerie,
        Bruecke_Passerelle,
        Bahnsteig,
        Brunnen,
        Reservoir,
        Pfeiler,
        Unterstand,
        Silo_Turm_Gasometer,
        Hochkamin,
        Denkmal,
        Mast_Antenne (
             Mast_Antenne,
             Mast_Leitung),				!! Mehranforderung
        Aussichtsturm,
        Uferverbauung,
        Schwelle,
        Lawinenverbauung,
        massiver_Sockel,
        Ruine_archaeologisches_Objekt,
        Landungssteg,
        einzelner_Fels,
        schmale_bestockte_Flaeche,
        Rinnsal,
        schmaler_Weg (
             schmaler_Weg,				!! Fuss- und Wanderwege
             Fahrspur),	!! Mehranforderung: Maschinenwege Forst 
                                               !! und unbefestigte Flurwege
        Hochspannungsfreileitung,
        Druckleitung,
        Bahngeleise (
             Bahngeleise,
             Bahngeleise_ueberdeckt),		!! Mehranforderung, nur Tunnels
        Luftseilbahn,
        Gondelbahn_Sesselbahn,
        Materialseilbahn,
        Skilift,
        Faehre,
        Grotte_Hoehleneingang,
        Achse,				
        wichtiger_Einzelbaum,
        Bildstock_Kruzifix,
	  Quelle,
        Bezugspunkt,
        weitere); !! Keine Objekte in der Kategorie weitere, nur fuer	 Erweiterungen 
     TABLE EONachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      Gueltigkeit: Status;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
    IDENT NBIdent, Identifikator;
    END EONachfuehrung;
    TABLE Einzelobjekt =
      Entstehung: -> EONachfuehrung;  !! Beziehung 1-mc
      Qualitaet: Qualitaetsstandard;
      Art: EOArt;
    NO IDENT
    END Einzelobjekt;
    TABLE Flaechenelement =
      Flaechenelement_von: -> Einzelobjekt;  !! Beziehung 1-mc
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
    NO IDENT
    END Flaechenelement;
    TABLE FlaechenelementSymbol =  !! z.B. Fliessrichtung bei Rinnsal
      FlaechenelementSymbol_von: -> Flaechenelement;  !! Beziehung 1-mc
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
    NO IDENT
    END FlaechenelementSymbol;
    TABLE Linienelement =
      Linienelement_von: -> Einzelobjekt;  !! Beziehung 1-mc
      Geometrie: POLYLINE WITH (STRAIGHTS, ARCS) VERTEX LKoord;
    NO IDENT
    END Linienelement;
    TABLE LinienelementSymbol =  !! z.B. Faehre
      LinienelementSymbol_von: -> Linienelement;  !! Beziehung 1-mc
      Pos: LKoord;
      Ori: Rotation;
    NO IDENT
    END LinienelementSymbol;
    TABLE Punktelement =
      Punktelement_von: -> Einzelobjekt;  !! Beziehung 1-mc
      Geometrie: LKoord;
      Ori: Rotation;
    NO IDENT
    END Punktelement;
    TABLE Objektname =
      Objektname_von: -> Einzelobjekt;  !! Beziehung 1-mc
      Name: TEXT*30;
    NO IDENT
    END Objektname;
    TABLE ObjektnamePos =
      ObjektnamePos_von: -> Objektname;  !! Beziehung 1-mc; beschriftet Name
      Pos: LKoord;
      Ori: Rotation;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END ObjektnamePos;
    TABLE Objektnummer =
      Objektnummer_von: -> Einzelobjekt;  !! Beziehung 1-mc
      Nummer: TEXT*12;
      !! GWR_EGID falls die Definition der Gebaeude mit jener des
      !! BFS uebereinstimmt
      GWR_EGID: OPTIONAL [1..999999999];
    NO IDENT
    END Objektnummer;
    TABLE ObjektnummerPos =
      ObjektnummerPos_von: -> Objektnummer;  !! Beziehung 1-mc; beschriftet Nummer
      Pos: LKoord;
      Ori: Rotation;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END ObjektnummerPos;
    TABLE Einzelpunkt =
      Entstehung: OPTIONAL -> EONachfuehrung;  !! Beziehung c-mc
Identifikator: OPTIONAL TEXT*12;
      Geometrie: LKoord
        // nicht zugleich LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //;
      LageGen: Genauigkeit;
      LageZuv: Zuverlaessigkeit;
      ExaktDefiniert: (    !! Toleranzvorschriften gemaess TVAV beachten
        Ja,
        Nein);
    IDENT Geometrie;
    END Einzelpunkt;
    TABLE EinzelpunktPos =
      EinzelpunktPos_von: -> Einzelpunkt;  !! Beziehung 1-c;
                         !! beschriftet Identifikator
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT EinzelpunktPos_von;
    END EinzelpunktPos;
  END Einzelobjekte.
 
  TOPIC Hoehen =
    TABLE HONachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      Gueltigkeit: Status;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;      
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
    IDENT NBIdent, Identifikator;
    END HONachfuehrung;
    TABLE Hoehenpunkt =  !! gueltig oder projektiert
      Entstehung: -> HONachfuehrung;  !! Beziehung 1-mc
      Geometrie: HKoord;
      Qualitaet: Qualitaetsstandard;
    IDENT Geometrie;
    END Hoehenpunkt;
    TABLE HoehenpunktPos =
      HoehenpunktPos_von: -> Hoehenpunkt;  !! Beziehung 1-c;
                       !! beschriftet Geometrie (Hoehe)
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT HoehenpunktPos_von;
    END HoehenpunktPos;
    TABLE Gelaendekante =
      Entstehung: -> HONachfuehrung;  !! Beziehung 1-mc
      Geometrie: POLYLINE WITH (STRAIGHTS) VERTEX HKoord;  !! ohne ARCS!
      Qualitaet: Qualitaetsstandard;
      Art: (
        Bruchkante,
        Strukturlinie,
        weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
    NO IDENT
    END Gelaendekante;
    TABLE Aussparung =
      Entstehung: -> HONachfuehrung;  !! Beziehung 1-mc
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord;
      Qualitaet: Qualitaetsstandard;
      Art: (
        ToteFlaeche,
        weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
    NO IDENT
    END Aussparung;
  END Hoehen.
 
  TOPIC Nomenklatur =
    TABLE NKNachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
    IDENT NBIdent, Identifikator;
    END NKNachfuehrung;
    TABLE Flurname =
      Entstehung: -> NKNachfuehrung;  !! Beziehung 1-mc
      Name: TEXT*40;
      Geometrie: AREA WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
    NO IDENT
    END Flurname;
    TABLE FlurnamePos =
      FlurnamePos_von: -> Flurname;  !! Beziehung 1-mc; beschriftet Name
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
      Stil: OPTIONAL Schriftstil // undefiniert = normal //;
    NO IDENT
    END FlurnamePos;
    TABLE Ortsname =
      Entstehung: -> NKNachfuehrung;  !! Beziehung 1-mc
      Name: TEXT*40;
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      Typ: OPTIONAL TEXT*30;  !! Vergabe durch Kanton
    NO IDENT
    END Ortsname;
    TABLE OrtsnamePos =
      OrtsnamePos_von: -> Ortsname;  !! Beziehung 1-mc; beschriftet Name
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
      Stil: OPTIONAL Schriftstil // undefiniert = normal //;
    NO IDENT
    END OrtsnamePos;
    TABLE Gelaendename =
      Entstehung: -> NKNachfuehrung;  !! Beziehung 1-mc
      Name: TEXT*40;
    NO IDENT
    END Gelaendename;
    TABLE GelaendenamePos =
      GelaendenamePos_von: -> Gelaendename;  !! Beziehung 1-m; beschriftet Name
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
      Stil: OPTIONAL Schriftstil // undefiniert = normal //;
    NO IDENT
    END GelaendenamePos;
  END Nomenklatur.
 
  TOPIC Liegenschaften =
    DOMAIN
      Grundstuecksart = (
        Liegenschaft,
        SelbstRecht (
          Baurecht,
          Quellenrecht,
          Konzessionsrecht,
          weitere), !! Keine Objekte in der Kategorie weitere,
                    !! nur fuer Erweiterungen
        Bergwerk);
    TABLE LSNachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      Gueltigkeit: Status;
      !! Fuer zukuenftige Nachfuehrungen sind die Attribute GueltigerEintrag und
      !! GBEintrag zu erfassen. Datum1 und Datum2 betreffen die alten 
      !! Nachfuehrungen und werden nicht mehr angewendet. In der naechsten Revision 
      !! des Datenmodells werden die Attribute Datum1 und Datum2 geloescht und die
      !! Attribute GueltigerEintrag und GBEintrag werden obligatorisch.
      GueltigerEintrag: OPTIONAL DATE; !! Techn. Bearbeitung
      GBEintrag: OPTIONAL DATE;
      Datum1: OPTIONAL DATE;  !! z.B. Techn. Bearbeitung
      Datum2: OPTIONAL DATE;  !! Vergabe durch Kanton, z.B. GB-Eintrag, Genehmigung
    IDENT NBIdent, Identifikator;
    END LSNachfuehrung;
    !! Umfasst alle Grenzpunkte einer Liegenschaft, ausgenommen Stuetzpunkte
    !! der Liegenschaftsgrenze, die in Hoheitsgrenzpunkt und/oder LFP1, LFP2,
    !! LFP3 enthalten sind.
    !! Siehe auch Bemerkungen zu Hoheitsgrenzpunkt (Topic Gemeindegrenzen).
    TABLE Grenzpunkt =
      Entstehung: -> LSNachfuehrung;  !! Beziehung 1-mc
      Identifikator: OPTIONAL TEXT*12;
      Geometrie: LKoord;
      LageGen: Genauigkeit;
      LageZuv: Zuverlaessigkeit;
      Punktzeichen: Versicherungsart; 
      ExaktDefiniert: (    !! Toleranzvorschriften gemaess TVAV beachten
        Ja,
        Nein);
      !! Wenn ein "huebscher" alter Hoheitsgrenzstein heruntergestuft wurde
      !! und lediglich die Funktion eines Grenzpunkts hat (siehe auch 
      !! Erklaerungen Kap. 3.11).
      HoheitsgrenzsteinAlt: (
        ja,
        nein);
    IDENT Geometrie;
    END Grenzpunkt;
    TABLE GrenzpunktPos =
      GrenzpunktPos_von: -> Grenzpunkt;  !! Beziehung 1-c;
                     !! beschriftet Identifikator
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT GrenzpunktPos_von;
    END GrenzpunktPos;
    TABLE GrenzpunktSymbol =
      GrenzpunktSymbol_von: -> Grenzpunkt;  !! Beziehung 1-c
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
    IDENT GrenzpunktSymbol_von;
    END GrenzpunktSymbol;
    TABLE ProjGrundstueck =
      Entstehung: -> LSNachfuehrung
        // Gueltigkeit = projektiert //;  !! Beziehung 1-mc
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Nummer: TEXT*12;
      !! Elektronisches Grundstueckinformationssystem
      EGRIS_EGRID: OPTIONAL TEXT*14;
      !! abgeleitetes Attribut: muss streitig sein, falls ProjLiegenschaft,
      !! ProjSelbstRecht oder ProjBergwerk streitig;
      Gueltigkeit: (
        rechtskraeftig, !! rechtskraeftig vorgesehen
        streitig);
      !!unvollstaendig, falls z.B. das ProjGrundstueck
      !! teilweise ausserhalb des Perimeters liegt.
      Vollstaendigkeit: (
        Vollstaendig,
        unvollstaendig);
      Art: Grundstuecksart;
      !! GesamteFlaechenmass wird nur benutzt, falls TeilGrundstueke existieren.
      !! Das heisst mehrere Objekte ProjLiegenschaft, ProjSelbstRecht
      !! oder ProjBergwerk werden zu einem Objekt ProjGrundstueck.
      GesamteFlaechenmass: OPTIONAL DIM2 1 999999999;
    IDENT Entstehung, NBIdent, Nummer;
    END ProjGrundstueck;
    TABLE ProjGrundstueckPos =
      ProjGrundstueckPos_von: -> ProjGrundstueck;  !! Beziehung 1-m;
                           !! beschriftet Nummer
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
      Hilfslinie: OPTIONAL POLYLINE WITH (STRAIGHTS) VERTEX LKoord;
      !! Hinweisstriche fuer Grundstuecknummer
    NO IDENT
    END ProjGrundstueckPos;
    TABLE ProjLiegenschaft =
      ProjLiegenschaft_von: -> ProjGrundstueck // Art = Liegenschaft //;
                           !! Beziehung 1-mc
      !! NummerTeilGrundstueck ist fuer Teil ProjGrundstueck noetig
      NummerTeilGrundstueck: OPTIONAL TEXT*12; 
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //
        WITHOUT OVERLAPS > 0.002
        LINEATTR =
          Linienart: OPTIONAL (
            !! undefiniert bedeutet rechtskraeftig und vollstaendig
            streitig,
            unvollstaendig);
        END;
      Flaechenmass: DIM2 1 999999999;
    NO IDENT
    END ProjLiegenschaft;
    !! Falls bei ProjSelbstRecht keine Flaeche vorhanden ist, existiert hier
    !! auch kein Objekt. Eine Beschriftung und Lokalisierung in ProjGrundstueckPos
    !! ist trotzdem moeglich.
    TABLE ProjSelbstRecht =
      ProjSelbstRecht_von: -> ProjGrundstueck // Art = Baurecht, Quellenrecht,
      Konzessionsrecht oder weitere//; 
                                 !! Beziehung 1-mc
     !! NummerTeilGrundstueck ist fuer Teil ProjGrundstueck noetig
      NummerTeilGrundstueck: OPTIONAL TEXT*12; 
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //
        WITHOUT OVERLAPS > 0.002
        LINEATTR =
          Linienart: OPTIONAL (
            !! undefiniert bedeutet rechtskraeftig und vollstaendig
            streitig,
            unvollstaendig);
        END;
      Flaechenmass: DIM2 1 999999999;
    NO IDENT
    END ProjSelbstRecht;
    !! Falls bei ProjBergwerk keine Flaeche vorhanden ist, existiert hier
    !! auch kein Objekt. Eine Beschriftung und Lokalisierung in ProjGrundstueckPos
    !! ist trotzdem moeglich.
    TABLE ProjBergwerk =
      ProjBergwerk_von: -> ProjGrundstueck // Art = Bergwerk //;  !! Beziehung 1-mc
      !! NummerTeilGrundstueck ist fuer Teil ProjGrundstueck noetig
      NummerTeilGrundstueck: OPTIONAL TEXT*12; 
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //
        WITHOUT OVERLAPS > 0.002
        LINEATTR =
          Linienart: OPTIONAL (
            !! undefiniert bedeutet rechtskraeftig und vollstaendig
            streitig,
            unvollstaendig);
        END;
      Flaechenmass: DIM2 1 999999999;
    NO IDENT
    END ProjBergwerk;
    TABLE Grundstueck =
      Entstehung: -> LSNachfuehrung
        // Gueltigkeit = gueltig //;  !! Beziehung 1-mc
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Nummer: TEXT*12;
      !! Elektronisches Grundstueckinformationssystem
      EGRIS_EGRID: OPTIONAL TEXT*14;
      !! abgeleitetes Attribut: muss streitig sein, falls Liegenschaft,
      !! SelbstRechtvoder Bergwerk streitig;
      Gueltigkeit: (
        rechtskraeftig,
        streitig);
      !!unvollstaendig, falls z.B. das Grundstueck
      !! teilweise ausserhalb des Perimeters liegt.
      Vollstaendigkeit: (
        Vollstaendig,
        unvollstaendig);
      Art: Grundstuecksart;
      !! GesamteFlaechenmass wird nur benutzt, falls TeilGrundstueke existieren.
      !! Das heisst mehrere Objekte Liegenschaft, SelbstRecht
      !! oder Bergwerk werden zu einem Objekt Grundstueck.
      GesamteFlaechenmass: OPTIONAL DIM2 1 999999999;
    IDENT NBIdent, Nummer;
    END Grundstueck;
    TABLE GrundstueckPos =
      GrundstueckPos_von: -> Grundstueck;  !! Beziehung 1-m; beschriftet Nummer
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
      Hilfslinie: OPTIONAL POLYLINE WITH (STRAIGHTS) VERTEX LKoord;
      !! Hinweisstriche fuer Grundstuecksnummer
    NO IDENT
    END GrundstueckPos;
    TABLE Liegenschaft =
      Liegenschaft_von: -> Grundstueck // Art = Liegenschaft //;  !! Beziehung 1-mc
      !! NummerTeilGrundstueck ist fuer Teil Grundstueck noetig
      NummerTeilGrundstueck: OPTIONAL TEXT*12; 
      Geometrie: AREA WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //
        WITHOUT OVERLAPS > 0.002
        LINEATTR =
          Linienart: OPTIONAL (
            !! undefiniert bedeutet rechtskraeftig und vollstaendig
            streitig,
            unvollstaendig);
        END;
      Flaechenmass: DIM2 1 999999999;
    NO IDENT
    END Liegenschaft;
    !! Falls bei SelbstRecht keine Flaeche vorhanden ist, existiert hier
    !! auch kein Objekt. Eine Beschriftung und Lokalisierung in GrundstueckPos
    !! ist trotzdem moeglich.
    TABLE SelbstRecht =
      SelbstRecht_von: -> Grundstueck // Art = Baurecht, Quellenrecht,
      Konzessionsrecht oder weitere//; 
                             !! Beziehung 1-mc
      !! NummerTeilGrundstueck ist fuer Teil Grundstueck noetig
      NummerTeilGrundstueck: OPTIONAL TEXT*12; 
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //
        WITHOUT OVERLAPS > 0.002
        LINEATTR =
          Linienart: OPTIONAL (
            !! undefiniert bedeutet rechtskraeftig und vollstaendig
            streitig,
            unvollstaendig);
        END;
      Flaechenmass: DIM2 1 999999999;
    NO IDENT
    END SelbstRecht;
    !! Falls bei Bergwerk keine Flaeche vorhanden ist, existiert hier
    !! auch kein Objekt. Eine Beschriftung und Lokalisierung in GrundstueckPos
    !! ist trotzdem moeglich.
    TABLE Bergwerk =
      Bergwerk_von: -> Grundstueck // Art = Bergwerk //;  !! Beziehung 1-mc
      !! NummerTeilGrundstueck ist fuer Teil Grundstueck noetig
      NummerTeilGrundstueck: OPTIONAL TEXT*12;
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //
        WITHOUT OVERLAPS > 0.002
        LINEATTR =
          Linienart: OPTIONAL (
            !! undefiniert bedeutet rechtskraeftig und vollstaendig
            streitig,
            unvollstaendig);
        END;
      Flaechenmass: DIM2 1 999999999;
    NO IDENT
    END Bergwerk;
  END Liegenschaften.
 
  TOPIC Rohrleitungen = 
          !! gemaess Bundesgesetz ueber Rohrleitungsanlagen zur Befoerderung
          !! fluessiger oder gasfoermiger Brenn- oder Treibstoffe
    DOMAIN
      Medium = (
        Oel,
        Gas,
        weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
    TABLE RLNachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      Gueltigkeit: Status;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
    IDENT NBIdent, Identifikator;
    END RLNachfuehrung;
    TABLE Leitungsobjekt =
      Entstehung: -> RLNachfuehrung;  !! Beziehung 1-mc
      Betreiber: TEXT*30;
      Qualitaet: Qualitaetsstandard;
      Art: Medium;
    NO IDENT
    END Leitungsobjekt;
    TABLE LeitungsobjektPos =
      LeitungsobjektPos_von: -> Leitungsobjekt;  !! Beziehung 1-mc;
                         !! beschriftet Betreiber
      Pos: LKoord;
      Ori: Rotation;
      HAli: HALIGNMENT;
      VAli: VALIGNMENT;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END LeitungsobjektPos;
    TABLE Flaechenelement =
      Flaechenelement_von: -> Leitungsobjekt;  !! Beziehung 1-mc
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002
        LINEATTR =
          Linienart: OPTIONAL (
            sichtbar);
        !! Linienart-Werte sollen grundsaetzlich als undefiniert
        !! ausgegeben werden, ausgenommen Wert sichtbar.
        END;
    NO IDENT
    END Flaechenelement;
    TABLE Linienelement =
      Linienelement_von: -> Leitungsobjekt;  !! Beziehung 1-mc
      Geometrie: POLYLINE WITH (STRAIGHTS, ARCS) VERTEX LKoord;
      Linienart: OPTIONAL (
        sichtbar);
      !! Linienart-Werte sollen grundsaetzlich als undefiniert
      !! ausgegeben werden, ausgenommen Wert sichtbar.
    NO IDENT
    END Linienelement;
    TABLE Punktelement =
      Punktelement_von: -> Leitungsobjekt;  !! Beziehung 1-mc
      Geometrie: LKoord;
      HoeheGeom: OPTIONAL Hoehe;
      Ori: Rotation;
    NO IDENT
    END Punktelement;
    TABLE Signalpunkt =
      Entstehung: -> RLNachfuehrung;  !! Beziehung 1-mc
      Nummer: TEXT*12;
      Betreiber: TEXT*30;
      Geometrie: LKoord;
      Qualitaet: Qualitaetsstandard;
      Art: Medium;
      Punktart: (
        Signal,
        Tafel_Stein,
        weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
    NO IDENT
    END Signalpunkt;
    TABLE SignalpunktPos =
      SignalpunktPos_von: -> Signalpunkt;  !! Beziehung 1-c; beschriftet Nummer
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT SignalpunktPos_von;
    END SignalpunktPos;
    TABLE Einzelpunkt =
      Entstehung: OPTIONAL -> RLNachfuehrung;  !! Beziehung c-mc
      Identifikator: OPTIONAL TEXT*12;
      Geometrie: LKoord
        // nicht zugleich LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //;
      LageGen: Genauigkeit;
      LageZuv: Zuverlaessigkeit; 
      ExaktDefiniert: (    !! Toleranzvorschriften gemaess TVAV beachten
        Ja,
        Nein);
    IDENT Geometrie;
    END Einzelpunkt;
    TABLE EinzelpunktPos =
      EinzelpunktPos_von: -> Einzelpunkt;  !! Beziehung 1-c;
                        !! beschriftet Identifikator
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT EinzelpunktPos_von;
    END EinzelpunktPos;
  END Rohrleitungen.
 
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
        WITHOUT OVERLAPS > 0.002;
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
 
  TOPIC Gemeindegrenzen =
    TABLE GEMNachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      Gueltigkeit: Status;
      !! Fuer zukuenftige Nachfuehrungen ist das Attribut GueltigerEintrag zu 
      !! erfassen. Datum1 betrifft die alten Nachfuehrungen und wird nicht mehr 
      !! angewendet. In der naechsten Revision des Datenmodells wird das Attribut 
      !! Datum1 geloescht und das Attribut GueltigerEintrag wird obligatorisch.
      GueltigerEintrag: OPTIONAL DATE;      
      Datum1: OPTIONAL DATE;  !! z.B. Datum des gueltigen Eintrags
    IDENT NBIdent, Identifikator;
    END GEMNachfuehrung;
    !! Enthaelt alle Stuetzpunkte, die in ihrer Funktion eine
    !! Hoheitsgrenze (Landesgrenze, Kantonsgrenze, Bezirksgrenze
    !! oder Gemeindegrenze) definieren, mit
    !! folgenden zusaetzlichen Regelungen:
    !! - LFP1, LFP2 und LFP3, die an einer Hoheitsgrenze beteiligt sind,
    !!   sind hier ebenfalls enthalten; bei einer Uebernahme aus
    !!   dem Topic Fixpunkte bleiben die Attribute unveraendert;
    !! - Hoheitsgrenzsteine sind spezielle Steine (siehe Erklaerungen 
    !!   Kap. 3.11); sie erhalten Hoheitsgrenzstein = ja;
    TABLE Hoheitsgrenzpunkt =
      Entstehung: -> GEMNachfuehrung;  !! Beziehung 1-mc
      Identifikator: OPTIONAL TEXT*12;  !! Hoheitsgrenzpunktnummer
      Geometrie: LKoord;
      LageGen: Genauigkeit;
      LageZuv: Zuverlaessigkeit;
      Punktzeichen: Versicherungsart;
      Hoheitsgrenzstein: (  !! Materialangabe
        ja,
        nein);
      ExaktDefiniert: (    !! Toleranzvorschriften gemaess TVAV beachten
        Ja,
        Nein);
      NBIdent: OPTIONAL TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
               !! fuer nummerierte Landes- und Kantonsgrenzsteine zwingend
    IDENT Geometrie;
    END Hoheitsgrenzpunkt;
    TABLE HoheitsgrenzpunktPos =
      HoheitsgrenzpunktPos_von: -> Hoheitsgrenzpunkt;  !! Beziehung 1-c; 
                               !! beschriftet Identifikator
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Left //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Bottom //;
    IDENT HoheitsgrenzpunktPos_von;
    END HoheitsgrenzpunktPos;
    TABLE HoheitsgrenzpunktSymbol =
      HoheitsgrenzpunktSymbol_von: -> Hoheitsgrenzpunkt;  !! Beziehung 1-c
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
    IDENT HoheitsgrenzpunktSymbol_von;
    END HoheitsgrenzpunktSymbol;
    TABLE Gemeinde =
      Name: TEXT*30;
      BFSNr: [1 .. 9999];
    IDENT BFSNr;
    END Gemeinde;
    TABLE ProjGemeindegrenze =
      Entstehung: -> GEMNachfuehrung 
        // Gueltigkeit = projektiert //;  !! Beziehung 1-mc
      ProjGemeindegrenze_von: -> Gemeinde;  !! Beziehung 1-mc
      Geometrie: POLYLINE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur Hoheitsgrenzpunkt //
        WITHOUT OVERLAPS > 0.002;
    NO IDENT
    END ProjGemeindegrenze;
    TABLE Gemeindegrenze =  !! auch als Exklave moeglich
      Entstehung: -> GEMNachfuehrung
        // Gueltigkeit = gueltig // ;  !! Beziehung 1-mc
      Gemeindegrenze_von: -> Gemeinde;  !! Beziehung 1-m
      Geometrie: AREA WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur Hoheitsgrenzpunkt
           wenn Linienart = rechtskraeftig oder streitig //
        WITHOUT OVERLAPS > 0.002
        LINEATTR =
          Linienart: (
            rechtskraeftig, !! exakte Grenze aus Amtl. Vermessung
            streitig,       !! streitige Grenze
            provisorisch,   !! definierte Grenze, aber qualitativ ungenuegend
            undefiniert);   !! z.B. unbekannter Seeabschluss
          END;
    NO IDENT
    END Gemeindegrenze;
  END Gemeindegrenzen.
 
  TOPIC Bezirksgrenzen =
    TABLE Bezirksgrenzabschnitt =
      Geometrie: POLYLINE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur Hoheitsgrenzpunkt //;
      Gueltigkeit: (
        rechtskraeftig, !! exakte Grenze aus Amtl. Vermessung
        streitig,       !! streitige Grenze
        provisorisch,   !! definierte Grenze, aber qualitativ ungenuegend
        undefiniert);   !! z.B. unbekannter Seeabschluss
    NO IDENT
    END Bezirksgrenzabschnitt;
  END Bezirksgrenzen.
 
  TOPIC Kantonsgrenzen =
    TABLE Kantonsgrenzabschnitt =
      Geometrie: POLYLINE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur Hoheitsgrenzpunkt //;
      Gueltigkeit: (
        rechtskraeftig, !! exakte Grenze aus Amtl. Vermessung
        streitig,       !! streitige Grenze
        provisorisch,   !! definierte Grenze, aber qualitativ ungenuegend
        undefiniert);   !! z.B. unbekannter Seeabschluss
    NO IDENT
    END Kantonsgrenzabschnitt;
  END Kantonsgrenzen.
 
  TOPIC Landesgrenzen =
    TABLE Landesgrenzabschnitt =
      Geometrie: POLYLINE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur Hoheitsgrenzpunkt //;
      Gueltigkeit: (
        rechtskraeftig, !! exakte Grenze aus Amtl. Vermessung
        streitig,       !! streitige Grenze
        provisorisch,   !! definierte Grenze, aber qualitativ ungenuegend
        undefiniert);   !! z.B. unbekannter Seeabschluss
    NO IDENT
    END Landesgrenzabschnitt;
  END Landesgrenzen.
 
  TOPIC Planeinteilungen =
    TABLE Plan =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Nummer: TEXT*12;
      TechDossier: TEXT*12;
      GueltigerEintrag: OPTIONAL DATE;
    IDENT NBIdent, Nummer;
    END Plan;
    TABLE Plangeometrie =
      Plangeometrie_von: -> Plan;  !! Beziehung 1-m
      Geometrie: AREA WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
    NO IDENT
    END Plangeometrie;
    TABLE PlanPos =
      PlanPos_von: -> Plan;  !! Beziehung 1-mc; beschriftet Nummer
      Pos: LKoord // Pos innerhalb Plangeometrie //;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END PlanPos;
  END Planeinteilungen.
 
  TOPIC TSEinteilung =
    TABLE Toleranzstufe =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Geometrie: AREA WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      GueltigerEintrag: OPTIONAL DATE;
      Art: (
        TS1,
        TS2,
        TS3,
        TS4,
        TS5);
    IDENT NBIdent, Identifikator;
    END Toleranzstufe;
    TABLE ToleranzstufePos =
      ToleranzstufePos_von: -> Toleranzstufe;  !! Beziehung 1-mc; beschriftet Art
      Pos: LKoord // Pos innerhalb Toleranzstufe //;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END ToleranzstufePos;
  END TSEinteilung.
 
  TOPIC Rutschgebiete =
    TABLE Rutschung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Name: OPTIONAL TEXT*30;  !! eigener Name
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      GueltigerEintrag: OPTIONAL DATE;
    IDENT NBIdent, Identifikator;
    END Rutschung;
    TABLE RutschungPos =
      RutschungPos_von: -> Rutschung;  !! Beziehung 1-mc; beschriftet Name
      Pos: LKoord // Pos innerhalb Rutschung //;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END RutschungPos;
  END Rutschgebiete.
 
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
        WITHOUT OVERLAPS > 0.002; !! DM01: zusaetzlich zur SN
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
        WITHOUT OVERLAPS > 0.002;
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
        WITHOUT OVERLAPS > 0.002; !! DM01: zusaetzlich zur SN
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
            WITHOUT OVERLAPS > 0.002;
      Status: Status_GA;
      InAenderung: (ja, nein);
      PLZ: [1000 .. 9999];
      Zusatzziffern: [0 .. 99];
    IDENT PLZ, Zusatzziffern;
    END PLZ6;
   
  END PLZOrtschaft.
 
  TOPIC Gebaeudeadressen =  !! siehe SN 612040;
                          !! Verantwortung der Gemeinden
 
  !! Geometrische Beziehung zwischen Gebaeudeeingang und PLZ
  !! Geometrische Beziehung zwischen Gebaeudeeingang und Ortschaft
  !! Geometrische Beziehung zwischen Lokalisation und OrtschaftsVerbund
    TABLE GEBNachfuehrung  = !! SN Norm = NachfuerbareSache
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
                         !! DM01: zusaetzlich zur SN
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
                               !! DM01: zusaetzlich zur SN
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002; !! DM01: zusaetzlich zur SN
      Gueltigkeit: Status;
      GueltigerEintrag: DATE;
    IDENT NBIdent, Identifikator;
    END GEBNachfuehrung;
    TABLE Lokalisation =
      Entstehung: -> GEBNachfuehrung;  !! Beziehung 1-mc 
      Nummerierungsprinzip: (
          keineNummern,
          beliebig,
          aufsteigend,
          ungeradelinks,
          geradelinks);
      LokalisationNummer: OPTIONAL TEXT*12;
      AttributeProvisorisch: (ja, nein);
      IstOffizielleBezeichnung: (ja, nein);
      Status: Status_GA;
      InAenderung: (ja, nein);
      Art: (
          BenanntesGebiet,
          Strasse,
          Platz);
    NO IDENT
    END Lokalisation;
    
    !! Beispiel fuer Text, KurzText und IndexText:
    !! Text (Vollstaendiger Name): Conrad-Ferdinand-Meyer-Strasse
    !! KurzText (Schreibweise in der Postadresse): CF Meyer Str
    !! IndexText (Fuer Index): Meyer CF Str
    TABLE LokalisationsName =
      Benannte: -> Lokalisation; !! Beziehung 1-m 
      Text: TEXT*60; 
      KurzText: OPTIONAL TEXT*24; 
      IndexText: OPTIONAL TEXT*16;
      Sprache: Sprachtyp; 
    IDENT Benannte, Sprache;
    END LokalisationsName; 
    
    TABLE LokalisationsNamePos =  !! DM01: zusaetzlich zur SN
      LokalisationsNamePos_von: -> LokalisationsName; !! Beziehung 1-mc;
                        !!  beschriftet Text
      AnfIndex: OPTIONAL [1 .. 60] // undefiniert = 1 //;
      EndIndex: OPTIONAL [1 .. 60] // undefiniert = letztes Zeichen //;
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
      Hilfslinie: OPTIONAL POLYLINE WITH (STRAIGHTS) VERTEX LKoord;
    NO IDENT
    END LokalisationsNamePos;
    TABLE BenanntesGebiet =        
      BenanntesGebiet_von: -> Lokalisation // Art = BenanntesGebiet //;
                              !! Beziehung 1-mc
      Flaeche: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002; 
    NO IDENT
    END BenanntesGebiet;
    !! Die Geometrie entspricht der Strassenachse,
    !! siehe die Erklaerungen, Kapitel 3.18.2
    !! Hauptstrassenabschnitt. Die privaten Zugangsabschnitte 
    !! werden nicht im Bundesmodell erfasst 
    TABLE Strassenstueck =
      Strassenstueck_von: -> Lokalisation // Art = Strasse oder Platz //;
                              !! Beziehung 1-mc
      Geometrie: POLYLINE WITH (STRAIGHTS, ARCS) VERTEX LKoord;
      !! Statt DIRECTED POLYLINE, Anfangspunkt legt Richtung fest
      Anfangspunkt: LKoord; !! DM01: zusaetzlich zur SN 
      !! Mehranforderung Kanton Solothurn, im Bundesmodell optional
      !! Statt ORDERED Strassenstueck
      Ordnung: [1 .. 999];  !! Reihenfolge der Strassenstuecke
      IstAchse: (ja, nein);
    IDENT Strassenstueck_von, Ordnung;
    END Strassenstueck;
    !! Auch fuer projektierte Gebaeude
    TABLE Gebaeudeeingang =
      Entstehung: -> GEBNachfuehrung;  !! Beziehung 1-mc
      Gebaeudeeingang_von: OPTIONAL -> Lokalisation;
             !! Beziehung c-mc
      Status: Status_GA;
      InAenderung: (ja, nein);
      AttributeProvisorisch: (ja, nein);
      IstOffizielleBezeichnung: (ja, nein);
      Lage: LKoord 
      // Lage innerhalb BB.Gebaeude, EO-Elemente (unterirdisches_Gebaeude usw.) //;
        !! HoehenLage ist nuetzlich wenn mehrere Eingaenge auf mehreren Niveaux
        !! Ungefaehre Hoehe ueber gewachsenem Terrain
      HoehenLage: OPTIONAL [-99 .. 99]; !! [m]
        !! Die Hausnummer besteht aus einer Nummer,
        !! welche mit einem Zusatz (Buchstaben a,b,c)
        !! ergaenzt werden kann. Zwischen Nummer und Zusatz
        !! keine Leerschlaege oder Trennzeichen.
        !! Wenn die Hausnummer definiert ist, dann muss fuer Lokalisation und
        !! Gebaeudeeingang gelten:
        !! - Lokalisation und Hausnummer muessen fuer Status = real
        !!   zusammen eindeutig sein;
        !! - Nummerierungsprinzip darf nicht den Wert keines haben.
      Hausnummer: OPTIONAL TEXT*12;  !! z.B. Polizeinummer
        !! Im_Gebaeude ist nuetzlich, um zu definieren, ob die Nummer mit einem
        !! Objekt der BB oder mit einem Objekt der EO verknuepft ist.
      Im_Gebaeude: (BB, EO); !! DM01: zusaetzlich zur SN
        !! Eidg. Gebaeude-Identifikator wenn verfuegbar,
        !! siehe Erklaerung Kapitel 3.18.2
      GWR_EGID: OPTIONAL [1..999999999];
        !! Eidg. Eingang-Identifikator wenn verfuegbar,
        !! siehe Erklaerung Kapitel 3.18.2
      GWR_EDID: OPTIONAL [0..99]; !! DM01: zusaetzlich zur SN
    NO IDENT
    END Gebaeudeeingang;
    TABLE HausnummerPos = !! DM01: zusaetzlich zur SN
      HausnummerPos_von: -> Gebaeudeeingang;  !! Beziehung 1-mc;
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END HausnummerPos;
    
    TABLE GebaeudeName =
      GebaeudeName_von: -> Gebaeudeeingang; !! Beziehung 1-mc
      Text: TEXT*40;
      KurzText: OPTIONAL TEXT*24;
      IndexText: OPTIONAL TEXT*16;
      Sprache: Sprachtyp; 
    IDENT GebaeudeName_von, Sprache;
    END GebaeudeName;
    
    TABLE GebaeudeNamePos = !! DM01: zusaetzlich zur SN
      GebaeudeNamePos_von: -> GebaeudeName;  !! Beziehung 1-m
                          !! beschriftet Text
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
      Hilfslinie: OPTIONAL POLYLINE WITH (STRAIGHTS) VERTEX LKoord;
    NO IDENT
    END GebaeudeNamePos;
    
    TABLE GebaeudeBeschreibung =
      GebaeudeBeschreibung_von: -> Gebaeudeeingang; !! Beziehung 1-mc
      Text: TEXT*100;
      Sprache: Sprachtyp; 
    IDENT GebaeudeBeschreibung_von, Sprache;
    END GebaeudeBeschreibung;
  END Gebaeudeadressen.
 
  TOPIC Planrahmen =
  !! Die in der Technischen Verordnung ueber die AV erwaehnten Objekte muessen
  !! verwaltet werden.
    DOMAIN
      Massstabstyp = [1 .. 1000000];
      Beschriftungsart = (
        Nachbarn,              !! Gemeinde, Bezirk, Kanton oder Land
        Nachbarplan,           !! Nachbarplaene in der Situation
        UebersichtNachbarn,    !! Nachbarplaene, Gemeinde, Bezirk,
                               !! Kanton oder Land im Uebersichtsfenster
        Strassenrichtung,
        LK_Nr,
        BFSNr,
        weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
      Linientyp = (
        standard,
        weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
      Symbolart = (
        Nordpfeil,
        weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
      Kreuzart = (
        Koord_Kreuz,
        Netzkreuz,
        Netzmarkierung,
        weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen
    TABLE PlanLayout =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*32;
      Layouttyp: TEXT*20;  !! Definition des verwendeten Planspiegels
      Plannummer: TEXT*12;
      Gemeindename: TEXT*30;
      Geometername: OPTIONAL TEXT*30;
      Erstellungsdatum: DATE;
      NachfuehrungsGeometername: OPTIONAL TEXT*30;
      Nachfuehrungsdatum: OPTIONAL DATE;
      Massstabszahl: Massstabstyp;
      Plannullpunkt: LKoord;
      E_Azimut: Rotation;  !! Azimut 100 ist E
      UebersichtMassstabszahl: OPTIONAL Massstabstyp;
      UebersichtPlannullpunkt: OPTIONAL LKoord;
      Mit_Koordinatennetz: (
        ja,     !! mitgeliefert
        nein);  !! zu generieren
    IDENT NBIdent, Identifikator;
    END PlanLayout;
    TABLE Planbeschriftung =
      Planbeschriftung_von: -> PlanLayout;  !! Beziehung 1-mc
      Beschriftung: TEXT*30;
      Art: Beschriftungsart;
    NO IDENT
    END Planbeschriftung;
    TABLE PlanbeschriftungPos =
      PlanbeschriftungPos_von: -> Planbeschriftung;  !! Beziehung 1-m;
                        !! beschriftet Beschriftung
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    NO IDENT
    END PlanbeschriftungPos;
    TABLE Koordinatenanschrift =
      Koordinatenanschrift_von: -> PlanLayout;  !! Beziehung 1-mc
      Beschriftung: TEXT*12;
    NO IDENT
    END Koordinatenanschrift;
    TABLE KoordinatenanschriftPos = 
      KoordinatenanschriftPos_von: -> Koordinatenanschrift;  !! Beziehung 1-m;
                        !!  beschriftet Beschriftung
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 100.0 //;
      HAli: OPTIONAL HALIGNMENT // undefiniert = Center //;
      VAli: OPTIONAL VALIGNMENT // undefiniert = Half //;
      Groesse: OPTIONAL Schriftgroesse // undefiniert = mittel //;
    IDENT KoordinatenanschriftPos_von, Pos;
    END KoordinatenanschriftPos;
    TABLE Linienobjekt =
      Linienobjekt_von: -> PlanLayout;  !! Beziehung 1-mc
      Geometrie: POLYLINE WITH (STRAIGHTS, ARCS) VERTEX LKoord;
      Art: Linientyp;
    NO IDENT
    END Linienobjekt;
    TABLE KoordinatenLinie =
      KoordinatenLinie_von: -> PlanLayout;  !! Beziehung 1-mc
      Geometrie: POLYLINE WITH (STRAIGHTS) VERTEX LKoord;
    NO IDENT
    END KoordinatenLinie;
    TABLE Darstellungsflaeche =
      Darstellungsflaeche_von: -> PlanLayout;  !! Beziehung 1-mc
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.002;
      Auswahlart: (
        vollstaendig,
        teilweise);
    NO IDENT
    END Darstellungsflaeche;
    TABLE PlanLayoutSymbol =
      PlanLayoutSymbol_von: -> PlanLayout;  !! Beziehung 1-mc
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
      Art: Symbolart;
    NO IDENT
    END PlanLayoutSymbol;
    TABLE Netzkreuz =
      Netzkreuz_von: -> PlanLayout;  !! Beziehung 1-mc
      Pos: LKoord;
      Ori: OPTIONAL Rotation // undefiniert = 0.0 //;
      Art: Kreuzart;
    IDENT Netzkreuz_von, Pos;
    END Netzkreuz;
  END Planrahmen.
END DM01AVSO24LV95.
FORMAT FREE;
!! FORMAT FIX WITH LINESIZE = 107, TIDSIZE = 16;
CODE
  BLANK = DEFAULT, UNDEFINED = DEFAULT, CONTINUE = DEFAULT;
  TID = ANY;
END.
','2019-06-21 10:05:25.693');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.beautifyEnumDispName','underscore');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','topic');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.1.0-aa1d00a37ee431852bdee6b990f34b3620f9c1c1');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','%ILI_FROM_DB;%XTF_DIR;http://models.interlis.ch/;%JAR_DIR');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.importTabs','simple');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createDatasetCols','addDatasetCol');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.BasketHandling','readWrite');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createEnumDefs','multiTable');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO live_dm01avso24.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
