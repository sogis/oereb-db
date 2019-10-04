CREATE SCHEMA IF NOT EXISTS live;
CREATE SEQUENCE live.t_ili2db_seq;;
-- PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich
CREATE TABLE live.plzoch1lv95dnummerierngsbrche_nummerierungsbereich (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,kt varchar(255) NOT NULL
  ,nbnummer varchar(10) NOT NULL
  ,techdossier varchar(12) NOT NULL
  ,gueltigereintrag date NULL
)
;
CREATE INDEX plzch1lv95dnmnmmrrngsbrich_t_basket_idx ON live.plzoch1lv95dnummerierngsbrche_nummerierungsbereich ( t_basket );
-- PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrie
CREATE TABLE live.plzoch1lv95dnummerierngsbrche_nbgeometrie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,nbgeometrie_von bigint NOT NULL
)
;
CREATE INDEX plzch1lv95dnmbrch_nbgmtrie_t_basket_idx ON live.plzoch1lv95dnummerierngsbrche_nbgeometrie ( t_basket );
CREATE INDEX plzch1lv95dnmbrch_nbgmtrie_geometrie_idx ON live.plzoch1lv95dnummerierngsbrche_nbgeometrie USING GIST ( geometrie );
CREATE INDEX plzch1lv95dnmbrch_nbgmtrie_nbgeometrie_von_idx ON live.plzoch1lv95dnummerierngsbrche_nbgeometrie ( nbgeometrie_von );
-- PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos
CREATE TABLE live.plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,nummerierungsbereichpos_von bigint NOT NULL
)
;
CREATE INDEX plzch1lv95dnmmrrngsbrchpos_t_basket_idx ON live.plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos ( t_basket );
CREATE INDEX plzch1lv95dnmmrrngsbrchpos_pos_idx ON live.plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos USING GIST ( pos );
CREATE INDEX plzch1lv95dnmmrrngsbrchpos_nummerierungsbereichps_von_idx ON live.plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos ( nummerierungsbereichpos_von );
-- PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung
CREATE TABLE live.plzoch1lv95dplzortschaft_osnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NOT NULL
)
;
CREATE INDEX plzch1lv95dplft_snchfhrung_t_basket_idx ON live.plzoch1lv95dplzortschaft_osnachfuehrung ( t_basket );
CREATE INDEX plzch1lv95dplft_snchfhrung_perimeter_idx ON live.plzoch1lv95dplzortschaft_osnachfuehrung USING GIST ( perimeter );
-- PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbund
CREATE TABLE live.plzoch1lv95dplzortschaft_ortschaftsverbund (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,leer varchar(1) NULL
)
;
CREATE INDEX plzch1lv95dpltschftsvrbund_t_basket_idx ON live.plzoch1lv95dplzortschaft_ortschaftsverbund ( t_basket );
-- PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText
CREATE TABLE live.plzoch1lv95dplzortschaft_ortschaftsverbundtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,atext varchar(200) NOT NULL
  ,sprache varchar(255) NOT NULL
  ,ortschaftsverbundtext_von bigint NOT NULL
)
;
CREATE INDEX plzch1lv95dplhftsvrbndtext_t_basket_idx ON live.plzoch1lv95dplzortschaft_ortschaftsverbundtext ( t_basket );
CREATE INDEX plzch1lv95dplhftsvrbndtext_ortschaftsverbundtext_von_idx ON live.plzoch1lv95dplzortschaft_ortschaftsverbundtext ( ortschaftsverbundtext_von );
-- PLZOCH1LV95D.PLZOrtschaft.Ortschaft
CREATE TABLE live.plzoch1lv95dplzortschaft_ortschaft (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,astatus varchar(255) NOT NULL
  ,inaenderung varchar(255) NOT NULL
  ,flaeche geometry(POLYGON,2056) NOT NULL
  ,entstehung bigint NOT NULL
  ,ortschaft_von bigint NULL
)
;
CREATE INDEX plzch1lv95dplchft_rtschaft_t_basket_idx ON live.plzoch1lv95dplzortschaft_ortschaft ( t_basket );
CREATE INDEX plzch1lv95dplchft_rtschaft_flaeche_idx ON live.plzoch1lv95dplzortschaft_ortschaft USING GIST ( flaeche );
CREATE INDEX plzch1lv95dplchft_rtschaft_entstehung_idx ON live.plzoch1lv95dplzortschaft_ortschaft ( entstehung );
CREATE INDEX plzch1lv95dplchft_rtschaft_ortschaft_von_idx ON live.plzoch1lv95dplzortschaft_ortschaft ( ortschaft_von );
-- PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName
CREATE TABLE live.plzoch1lv95dplzortschaft_ortschaftsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,atext varchar(40) NOT NULL
  ,kurztext varchar(18) NULL
  ,indextext varchar(16) NULL
  ,sprache varchar(255) NOT NULL
  ,ortschaftsname_von bigint NOT NULL
)
;
CREATE INDEX plzch1lv95dpl_rtschftsname_t_basket_idx ON live.plzoch1lv95dplzortschaft_ortschaftsname ( t_basket );
CREATE INDEX plzch1lv95dpl_rtschftsname_ortschaftsname_von_idx ON live.plzoch1lv95dplzortschaft_ortschaftsname ( ortschaftsname_von );
-- PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos
CREATE TABLE live.plzoch1lv95dplzortschaft_ortschaftsname_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,ortschaftsname_pos_von bigint NOT NULL
)
;
CREATE INDEX plzch1lv95dpltschftsnm_pos_t_basket_idx ON live.plzoch1lv95dplzortschaft_ortschaftsname_pos ( t_basket );
CREATE INDEX plzch1lv95dpltschftsnm_pos_pos_idx ON live.plzoch1lv95dplzortschaft_ortschaftsname_pos USING GIST ( pos );
CREATE INDEX plzch1lv95dpltschftsnm_pos_ortschaftsname_pos_von_idx ON live.plzoch1lv95dplzortschaft_ortschaftsname_pos ( ortschaftsname_pos_von );
-- PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung
CREATE TABLE live.plzoch1lv95dplzortschaft_plz6nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NOT NULL
)
;
CREATE INDEX plzch1lv95dplplz6nchfhrung_t_basket_idx ON live.plzoch1lv95dplzortschaft_plz6nachfuehrung ( t_basket );
CREATE INDEX plzch1lv95dplplz6nchfhrung_perimeter_idx ON live.plzoch1lv95dplzortschaft_plz6nachfuehrung USING GIST ( perimeter );
-- PLZOCH1LV95D.PLZOrtschaft.PLZ6
CREATE TABLE live.plzoch1lv95dplzortschaft_plz6 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,flaeche geometry(POLYGON,2056) NULL
  ,astatus varchar(255) NOT NULL
  ,inaenderung varchar(255) NOT NULL
  ,plz integer NOT NULL
  ,zusatzziffern integer NOT NULL
  ,entstehung bigint NOT NULL
  ,plz6_von bigint NOT NULL
)
;
CREATE INDEX plzch1lv95dplzrtschft_plz6_t_basket_idx ON live.plzoch1lv95dplzortschaft_plz6 ( t_basket );
CREATE INDEX plzch1lv95dplzrtschft_plz6_flaeche_idx ON live.plzoch1lv95dplzortschaft_plz6 USING GIST ( flaeche );
CREATE INDEX plzch1lv95dplzrtschft_plz6_entstehung_idx ON live.plzoch1lv95dplzortschaft_plz6 ( entstehung );
CREATE INDEX plzch1lv95dplzrtschft_plz6_plz6_von_idx ON live.plzoch1lv95dplzortschaft_plz6 ( plz6_von );
-- DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Nachfuehrung
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95lfp1nchfhrung_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95lfp1nchfhrung_perimeter_idx ON live.dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.FixpunkteKategorie1.LFP1
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95nktktgr1_lfp1_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie1_lfp1 ( t_basket );
CREATE INDEX dm01vch24lv95nktktgr1_lfp1_geometrie_idx ON live.dm01vch24lv95dfixpunktekatgrie1_lfp1 USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95nktktgr1_lfp1_entstehung_idx ON live.dm01vch24lv95dfixpunktekatgrie1_lfp1 ( entstehung );
-- DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Pos
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,lfp1pos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ktgr1_lfp1pos_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie1_lfp1pos ( t_basket );
CREATE INDEX dm01vch24lv95ktgr1_lfp1pos_pos_idx ON live.dm01vch24lv95dfixpunktekatgrie1_lfp1pos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ktgr1_lfp1pos_lfp1pos_von_idx ON live.dm01vch24lv95dfixpunktekatgrie1_lfp1pos ( lfp1pos_von );
-- DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Symbol
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1symbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,ori decimal(4,1) NULL
  ,lfp1symbol_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95r1_lfp1symbol_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie1_lfp1symbol ( t_basket );
CREATE INDEX dm01vch24lv95r1_lfp1symbol_lfp1symbol_von_idx ON live.dm01vch24lv95dfixpunktekatgrie1_lfp1symbol ( lfp1symbol_von );
-- DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Nachfuehrung
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95hfp1nchfhrung_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95hfp1nchfhrung_perimeter_idx ON live.dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.FixpunkteKategorie1.HFP1
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95nktktgr1_hfp1_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie1_hfp1 ( t_basket );
CREATE INDEX dm01vch24lv95nktktgr1_hfp1_geometrie_idx ON live.dm01vch24lv95dfixpunktekatgrie1_hfp1 USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95nktktgr1_hfp1_entstehung_idx ON live.dm01vch24lv95dfixpunktekatgrie1_hfp1 ( entstehung );
-- DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Pos
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hfp1pos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ktgr1_hfp1pos_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie1_hfp1pos ( t_basket );
CREATE INDEX dm01vch24lv95ktgr1_hfp1pos_pos_idx ON live.dm01vch24lv95dfixpunktekatgrie1_hfp1pos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ktgr1_hfp1pos_hfp1pos_von_idx ON live.dm01vch24lv95dfixpunktekatgrie1_hfp1pos ( hfp1pos_von );
-- DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Nachfuehrung
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95lfp2nchfhrung_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95lfp2nchfhrung_perimeter_idx ON live.dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.FixpunkteKategorie2.LFP2
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95nktktgr2_lfp2_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie2_lfp2 ( t_basket );
CREATE INDEX dm01vch24lv95nktktgr2_lfp2_geometrie_idx ON live.dm01vch24lv95dfixpunktekatgrie2_lfp2 USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95nktktgr2_lfp2_entstehung_idx ON live.dm01vch24lv95dfixpunktekatgrie2_lfp2 ( entstehung );
-- DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Pos
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,lfp2pos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ktgr2_lfp2pos_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie2_lfp2pos ( t_basket );
CREATE INDEX dm01vch24lv95ktgr2_lfp2pos_pos_idx ON live.dm01vch24lv95dfixpunktekatgrie2_lfp2pos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ktgr2_lfp2pos_lfp2pos_von_idx ON live.dm01vch24lv95dfixpunktekatgrie2_lfp2pos ( lfp2pos_von );
-- DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Symbol
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2symbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,ori decimal(4,1) NULL
  ,lfp2symbol_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95r2_lfp2symbol_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie2_lfp2symbol ( t_basket );
CREATE INDEX dm01vch24lv95r2_lfp2symbol_lfp2symbol_von_idx ON live.dm01vch24lv95dfixpunktekatgrie2_lfp2symbol ( lfp2symbol_von );
-- DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Nachfuehrung
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95hfp2nchfhrung_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95hfp2nchfhrung_perimeter_idx ON live.dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.FixpunkteKategorie2.HFP2
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95nktktgr2_hfp2_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie2_hfp2 ( t_basket );
CREATE INDEX dm01vch24lv95nktktgr2_hfp2_geometrie_idx ON live.dm01vch24lv95dfixpunktekatgrie2_hfp2 USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95nktktgr2_hfp2_entstehung_idx ON live.dm01vch24lv95dfixpunktekatgrie2_hfp2 ( entstehung );
-- DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Pos
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hfp2pos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ktgr2_hfp2pos_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie2_hfp2pos ( t_basket );
CREATE INDEX dm01vch24lv95ktgr2_hfp2pos_pos_idx ON live.dm01vch24lv95dfixpunktekatgrie2_hfp2pos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ktgr2_hfp2pos_hfp2pos_von_idx ON live.dm01vch24lv95dfixpunktekatgrie2_hfp2pos ( hfp2pos_von );
-- DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Nachfuehrung
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95lfp3nchfhrung_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95lfp3nchfhrung_perimeter_idx ON live.dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.FixpunkteKategorie3.LFP3
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95nktktgr3_lfp3_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie3_lfp3 ( t_basket );
CREATE INDEX dm01vch24lv95nktktgr3_lfp3_geometrie_idx ON live.dm01vch24lv95dfixpunktekatgrie3_lfp3 USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95nktktgr3_lfp3_entstehung_idx ON live.dm01vch24lv95dfixpunktekatgrie3_lfp3 ( entstehung );
-- DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Pos
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,lfp3pos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ktgr3_lfp3pos_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie3_lfp3pos ( t_basket );
CREATE INDEX dm01vch24lv95ktgr3_lfp3pos_pos_idx ON live.dm01vch24lv95dfixpunktekatgrie3_lfp3pos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ktgr3_lfp3pos_lfp3pos_von_idx ON live.dm01vch24lv95dfixpunktekatgrie3_lfp3pos ( lfp3pos_von );
-- DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Symbol
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3symbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,ori decimal(4,1) NULL
  ,lfp3symbol_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95r3_lfp3symbol_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie3_lfp3symbol ( t_basket );
CREATE INDEX dm01vch24lv95r3_lfp3symbol_lfp3symbol_von_idx ON live.dm01vch24lv95dfixpunktekatgrie3_lfp3symbol ( lfp3symbol_von );
-- DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Nachfuehrung
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95hfp3nchfhrung_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95hfp3nchfhrung_perimeter_idx ON live.dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.FixpunkteKategorie3.HFP3
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95nktktgr3_hfp3_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie3_hfp3 ( t_basket );
CREATE INDEX dm01vch24lv95nktktgr3_hfp3_geometrie_idx ON live.dm01vch24lv95dfixpunktekatgrie3_hfp3 USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95nktktgr3_hfp3_entstehung_idx ON live.dm01vch24lv95dfixpunktekatgrie3_hfp3 ( entstehung );
-- DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Pos
CREATE TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hfp3pos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ktgr3_hfp3pos_t_basket_idx ON live.dm01vch24lv95dfixpunktekatgrie3_hfp3pos ( t_basket );
CREATE INDEX dm01vch24lv95ktgr3_hfp3pos_pos_idx ON live.dm01vch24lv95dfixpunktekatgrie3_hfp3pos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ktgr3_hfp3pos_hfp3pos_von_idx ON live.dm01vch24lv95dfixpunktekatgrie3_hfp3pos ( hfp3pos_von );
-- DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_bbnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95g_bbnchfhrung_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_bbnachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95g_bbnchfhrung_perimeter_idx ON live.dm01vch24lv95dbodenbedeckung_bbnachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaeche
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_projboflaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95kng_prjbflche_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_projboflaeche ( t_basket );
CREATE INDEX dm01vch24lv95kng_prjbflche_geometrie_idx ON live.dm01vch24lv95dbodenbedeckung_projboflaeche USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95kng_prjbflche_entstehung_idx ON live.dm01vch24lv95dbodenbedeckung_projboflaeche ( entstehung );
-- DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummer
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_projgebaeudenummer (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nummer varchar(12) NOT NULL
  ,gwr_egid integer NULL
  ,projgebaeudenummer_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95g_prjgbdnmmer_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_projgebaeudenummer ( t_basket );
CREATE INDEX dm01vch24lv95g_prjgbdnmmer_projgebaeudenummer_von_idx ON live.dm01vch24lv95dbodenbedeckung_projgebaeudenummer ( projgebaeudenummer_von );
-- DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPos
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,projgebaeudenummerpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95prjgbdnmmrpos_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos ( t_basket );
CREATE INDEX dm01vch24lv95prjgbdnmmrpos_pos_idx ON live.dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95prjgbdnmmrpos_projgebaeudenummerpos_von_idx ON live.dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos ( projgebaeudenummerpos_von );
-- DM01AVCH24LV95D.Bodenbedeckung.ProjObjektname
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_projobjektname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname varchar(30) NOT NULL
  ,projobjektname_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95g_prjbjktname_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_projobjektname ( t_basket );
CREATE INDEX dm01vch24lv95g_prjbjktname_projobjektname_von_idx ON live.dm01vch24lv95dbodenbedeckung_projobjektname ( projobjektname_von );
-- DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePos
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_projobjektnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,projobjektnamepos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95_prjbjktnmpos_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_projobjektnamepos ( t_basket );
CREATE INDEX dm01vch24lv95_prjbjktnmpos_pos_idx ON live.dm01vch24lv95dbodenbedeckung_projobjektnamepos USING GIST ( pos );
CREATE INDEX dm01vch24lv95_prjbjktnmpos_projobjektnamepos_von_idx ON live.dm01vch24lv95dbodenbedeckung_projobjektnamepos ( projobjektnamepos_von );
-- DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheSymbol
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_projboflaechesymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,projboflaechesymbol_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95rjbflchsymbol_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_projboflaechesymbol ( t_basket );
CREATE INDEX dm01vch24lv95rjbflchsymbol_pos_idx ON live.dm01vch24lv95dbodenbedeckung_projboflaechesymbol USING GIST ( pos );
CREATE INDEX dm01vch24lv95rjbflchsymbol_projboflaechesymbol_von_idx ON live.dm01vch24lv95dbodenbedeckung_projboflaechesymbol ( projboflaechesymbol_von );
-- DM01AVCH24LV95D.Bodenbedeckung.BoFlaeche
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_boflaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95bdckng_bflche_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_boflaeche ( t_basket );
CREATE INDEX dm01vch24lv95bdckng_bflche_geometrie_idx ON live.dm01vch24lv95dbodenbedeckung_boflaeche USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95bdckng_bflche_entstehung_idx ON live.dm01vch24lv95dbodenbedeckung_boflaeche ( entstehung );
-- DM01AVCH24LV95D.Bodenbedeckung.Gebaeudenummer
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_gebaeudenummer (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nummer varchar(12) NOT NULL
  ,gwr_egid integer NULL
  ,gebaeudenummer_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ckng_gbdnmmer_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_gebaeudenummer ( t_basket );
CREATE INDEX dm01vch24lv95ckng_gbdnmmer_gebaeudenummer_von_idx ON live.dm01vch24lv95dbodenbedeckung_gebaeudenummer ( gebaeudenummer_von );
-- DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPos
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_gebaeudenummerpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,gebaeudenummerpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ng_gbdnmmrpos_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_gebaeudenummerpos ( t_basket );
CREATE INDEX dm01vch24lv95ng_gbdnmmrpos_pos_idx ON live.dm01vch24lv95dbodenbedeckung_gebaeudenummerpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ng_gbdnmmrpos_gebaeudenummerpos_von_idx ON live.dm01vch24lv95dbodenbedeckung_gebaeudenummerpos ( gebaeudenummerpos_von );
-- DM01AVCH24LV95D.Bodenbedeckung.Objektname
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_objektname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname varchar(30) NOT NULL
  ,objektname_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ckng_bjktname_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_objektname ( t_basket );
CREATE INDEX dm01vch24lv95ckng_bjktname_objektname_von_idx ON live.dm01vch24lv95dbodenbedeckung_objektname ( objektname_von );
-- DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePos
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_objektnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,objektnamepos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95kng_bjktnmpos_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_objektnamepos ( t_basket );
CREATE INDEX dm01vch24lv95kng_bjktnmpos_pos_idx ON live.dm01vch24lv95dbodenbedeckung_objektnamepos USING GIST ( pos );
CREATE INDEX dm01vch24lv95kng_bjktnmpos_objektnamepos_von_idx ON live.dm01vch24lv95dbodenbedeckung_objektnamepos ( objektnamepos_von );
-- DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheSymbol
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_boflaechesymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,boflaechesymbol_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95g_bflchsymbol_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_boflaechesymbol ( t_basket );
CREATE INDEX dm01vch24lv95g_bflchsymbol_pos_idx ON live.dm01vch24lv95dbodenbedeckung_boflaechesymbol USING GIST ( pos );
CREATE INDEX dm01vch24lv95g_bflchsymbol_boflaechesymbol_von_idx ON live.dm01vch24lv95dbodenbedeckung_boflaechesymbol ( boflaechesymbol_von );
-- DM01AVCH24LV95D.Bodenbedeckung.Einzelpunkt
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_einzelpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,identifikator varchar(12) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,exaktdefiniert varchar(255) NOT NULL
  ,entstehung bigint NULL
)
;
CREATE INDEX dm01vch24lv95dckng_nzlpnkt_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_einzelpunkt ( t_basket );
CREATE INDEX dm01vch24lv95dckng_nzlpnkt_geometrie_idx ON live.dm01vch24lv95dbodenbedeckung_einzelpunkt USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95dckng_nzlpnkt_entstehung_idx ON live.dm01vch24lv95dbodenbedeckung_einzelpunkt ( entstehung );
-- DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPos
CREATE TABLE live.dm01vch24lv95dbodenbedeckung_einzelpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,einzelpunktpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ng_nzlpnktpos_t_basket_idx ON live.dm01vch24lv95dbodenbedeckung_einzelpunktpos ( t_basket );
CREATE INDEX dm01vch24lv95ng_nzlpnktpos_pos_idx ON live.dm01vch24lv95dbodenbedeckung_einzelpunktpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ng_nzlpnktpos_einzelpunktpos_von_idx ON live.dm01vch24lv95dbodenbedeckung_einzelpunktpos ( einzelpunktpos_von );
-- DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung
CREATE TABLE live.dm01vch24lv95deinzelobjekte_eonachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95jkt_nchfhrung_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_eonachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95jkt_nchfhrung_perimeter_idx ON live.dm01vch24lv95deinzelobjekte_eonachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.Einzelobjekte.Einzelobjekt
CREATE TABLE live.dm01vch24lv95deinzelobjekte_einzelobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95bjkt_nzlbjekt_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_einzelobjekt ( t_basket );
CREATE INDEX dm01vch24lv95bjkt_nzlbjekt_entstehung_idx ON live.dm01vch24lv95deinzelobjekte_einzelobjekt ( entstehung );
-- DM01AVCH24LV95D.Einzelobjekte.Flaechenelement
CREATE TABLE live.dm01vch24lv95deinzelobjekte_flaechenelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenelement_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95kt_flchnlment_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_flaechenelement ( t_basket );
CREATE INDEX dm01vch24lv95kt_flchnlment_geometrie_idx ON live.dm01vch24lv95deinzelobjekte_flaechenelement USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95kt_flchnlment_flaechenelement_von_idx ON live.dm01vch24lv95deinzelobjekte_flaechenelement ( flaechenelement_von );
-- DM01AVCH24LV95D.Einzelobjekte.FlaechenelementSymbol
CREATE TABLE live.dm01vch24lv95deinzelobjekte_flaechenelementsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,flaechenelementsymbol_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95chnlmntsymbol_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_flaechenelementsymbol ( t_basket );
CREATE INDEX dm01vch24lv95chnlmntsymbol_pos_idx ON live.dm01vch24lv95deinzelobjekte_flaechenelementsymbol USING GIST ( pos );
CREATE INDEX dm01vch24lv95chnlmntsymbol_flaechenelementsymbol_von_idx ON live.dm01vch24lv95deinzelobjekte_flaechenelementsymbol ( flaechenelementsymbol_von );
-- DM01AVCH24LV95D.Einzelobjekte.Linienelement
CREATE TABLE live.dm01vch24lv95deinzelobjekte_linienelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,linienelement_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95bjkt_lnnlment_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_linienelement ( t_basket );
CREATE INDEX dm01vch24lv95bjkt_lnnlment_geometrie_idx ON live.dm01vch24lv95deinzelobjekte_linienelement USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95bjkt_lnnlment_linienelement_von_idx ON live.dm01vch24lv95deinzelobjekte_linienelement ( linienelement_von );
-- DM01AVCH24LV95D.Einzelobjekte.LinienelementSymbol
CREATE TABLE live.dm01vch24lv95deinzelobjekte_linienelementsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,linienelementsymbol_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95lnnlmntsymbol_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_linienelementsymbol ( t_basket );
CREATE INDEX dm01vch24lv95lnnlmntsymbol_pos_idx ON live.dm01vch24lv95deinzelobjekte_linienelementsymbol USING GIST ( pos );
CREATE INDEX dm01vch24lv95lnnlmntsymbol_linienelementsymbol_von_idx ON live.dm01vch24lv95deinzelobjekte_linienelementsymbol ( linienelementsymbol_von );
-- DM01AVCH24LV95D.Einzelobjekte.Punktelement
CREATE TABLE live.dm01vch24lv95deinzelobjekte_punktelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,punktelement_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95jkt_pnktlment_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_punktelement ( t_basket );
CREATE INDEX dm01vch24lv95jkt_pnktlment_geometrie_idx ON live.dm01vch24lv95deinzelobjekte_punktelement USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95jkt_pnktlment_punktelement_von_idx ON live.dm01vch24lv95deinzelobjekte_punktelement ( punktelement_von );
-- DM01AVCH24LV95D.Einzelobjekte.Objektname
CREATE TABLE live.dm01vch24lv95deinzelobjekte_objektname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname varchar(30) NOT NULL
  ,objektname_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95bjkt_bjktname_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_objektname ( t_basket );
CREATE INDEX dm01vch24lv95bjkt_bjktname_objektname_von_idx ON live.dm01vch24lv95deinzelobjekte_objektname ( objektname_von );
-- DM01AVCH24LV95D.Einzelobjekte.ObjektnamePos
CREATE TABLE live.dm01vch24lv95deinzelobjekte_objektnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,objektnamepos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95jkt_bjktnmpos_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_objektnamepos ( t_basket );
CREATE INDEX dm01vch24lv95jkt_bjktnmpos_pos_idx ON live.dm01vch24lv95deinzelobjekte_objektnamepos USING GIST ( pos );
CREATE INDEX dm01vch24lv95jkt_bjktnmpos_objektnamepos_von_idx ON live.dm01vch24lv95deinzelobjekte_objektnamepos ( objektnamepos_von );
-- DM01AVCH24LV95D.Einzelobjekte.Objektnummer
CREATE TABLE live.dm01vch24lv95deinzelobjekte_objektnummer (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nummer varchar(12) NOT NULL
  ,gwr_egid integer NULL
  ,objektnummer_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95jkt_bjktnmmer_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_objektnummer ( t_basket );
CREATE INDEX dm01vch24lv95jkt_bjktnmmer_objektnummer_von_idx ON live.dm01vch24lv95deinzelobjekte_objektnummer ( objektnummer_von );
-- DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPos
CREATE TABLE live.dm01vch24lv95deinzelobjekte_objektnummerpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,objektnummerpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95t_bjktnmmrpos_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_objektnummerpos ( t_basket );
CREATE INDEX dm01vch24lv95t_bjktnmmrpos_pos_idx ON live.dm01vch24lv95deinzelobjekte_objektnummerpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95t_bjktnmmrpos_objektnummerpos_von_idx ON live.dm01vch24lv95deinzelobjekte_objektnummerpos ( objektnummerpos_von );
-- DM01AVCH24LV95D.Einzelobjekte.Einzelpunkt
CREATE TABLE live.dm01vch24lv95deinzelobjekte_einzelpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,identifikator varchar(12) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,exaktdefiniert varchar(255) NOT NULL
  ,entstehung bigint NULL
)
;
CREATE INDEX dm01vch24lv95lbjkt_nzlpnkt_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_einzelpunkt ( t_basket );
CREATE INDEX dm01vch24lv95lbjkt_nzlpnkt_geometrie_idx ON live.dm01vch24lv95deinzelobjekte_einzelpunkt USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95lbjkt_nzlpnkt_entstehung_idx ON live.dm01vch24lv95deinzelobjekte_einzelpunkt ( entstehung );
-- DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPos
CREATE TABLE live.dm01vch24lv95deinzelobjekte_einzelpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,einzelpunktpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95kt_nzlpnktpos_t_basket_idx ON live.dm01vch24lv95deinzelobjekte_einzelpunktpos ( t_basket );
CREATE INDEX dm01vch24lv95kt_nzlpnktpos_pos_idx ON live.dm01vch24lv95deinzelobjekte_einzelpunktpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95kt_nzlpnktpos_einzelpunktpos_von_idx ON live.dm01vch24lv95deinzelobjekte_einzelpunktpos ( einzelpunktpos_von );
-- DM01AVCH24LV95D.Hoehen.HONachfuehrung
CREATE TABLE live.dm01vch24lv95dhoehen_honachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95hn_hnchfhrung_t_basket_idx ON live.dm01vch24lv95dhoehen_honachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95hn_hnchfhrung_perimeter_idx ON live.dm01vch24lv95dhoehen_honachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.Hoehen.Hoehenpunkt
CREATE TABLE live.dm01vch24lv95dhoehen_hoehenpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POINTZ,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95dhohn_hhnpnkt_t_basket_idx ON live.dm01vch24lv95dhoehen_hoehenpunkt ( t_basket );
CREATE INDEX dm01vch24lv95dhohn_hhnpnkt_geometrie_idx ON live.dm01vch24lv95dhoehen_hoehenpunkt USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95dhohn_hhnpnkt_entstehung_idx ON live.dm01vch24lv95dhoehen_hoehenpunkt ( entstehung );
-- DM01AVCH24LV95D.Hoehen.HoehenpunktPos
CREATE TABLE live.dm01vch24lv95dhoehen_hoehenpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hoehenpunktpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95hn_hhnpnktpos_t_basket_idx ON live.dm01vch24lv95dhoehen_hoehenpunktpos ( t_basket );
CREATE INDEX dm01vch24lv95hn_hhnpnktpos_pos_idx ON live.dm01vch24lv95dhoehen_hoehenpunktpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95hn_hhnpnktpos_hoehenpunktpos_von_idx ON live.dm01vch24lv95dhoehen_hoehenpunktpos ( hoehenpunktpos_von );
-- DM01AVCH24LV95D.Hoehen.Gelaendekante
CREATE TABLE live.dm01vch24lv95dhoehen_gelaendekante (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(LINESTRINGZ,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95dhhn_glndknte_t_basket_idx ON live.dm01vch24lv95dhoehen_gelaendekante ( t_basket );
CREATE INDEX dm01vch24lv95dhhn_glndknte_geometrie_idx ON live.dm01vch24lv95dhoehen_gelaendekante USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95dhhn_glndknte_entstehung_idx ON live.dm01vch24lv95dhoehen_gelaendekante ( entstehung );
-- DM01AVCH24LV95D.Hoehen.Aussparung
CREATE TABLE live.dm01vch24lv95dhoehen_aussparung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95dhohn_ssprung_t_basket_idx ON live.dm01vch24lv95dhoehen_aussparung ( t_basket );
CREATE INDEX dm01vch24lv95dhohn_ssprung_geometrie_idx ON live.dm01vch24lv95dhoehen_aussparung USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95dhohn_ssprung_entstehung_idx ON live.dm01vch24lv95dhoehen_aussparung ( entstehung );
-- DM01AVCH24LV95D.Nomenklatur.NKNachfuehrung
CREATE TABLE live.dm01vch24lv95dnomenklatur_nknachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95r_nknchfhrung_t_basket_idx ON live.dm01vch24lv95dnomenklatur_nknachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95r_nknchfhrung_perimeter_idx ON live.dm01vch24lv95dnomenklatur_nknachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.Nomenklatur.Flurname
CREATE TABLE live.dm01vch24lv95dnomenklatur_flurname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname varchar(40) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95nkltr_flrname_t_basket_idx ON live.dm01vch24lv95dnomenklatur_flurname ( t_basket );
CREATE INDEX dm01vch24lv95nkltr_flrname_geometrie_idx ON live.dm01vch24lv95dnomenklatur_flurname USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95nkltr_flrname_entstehung_idx ON live.dm01vch24lv95dnomenklatur_flurname ( entstehung );
-- DM01AVCH24LV95D.Nomenklatur.FlurnamePos
CREATE TABLE live.dm01vch24lv95dnomenklatur_flurnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,stil varchar(255) NULL
  ,flurnamepos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95kltr_flrnmpos_t_basket_idx ON live.dm01vch24lv95dnomenklatur_flurnamepos ( t_basket );
CREATE INDEX dm01vch24lv95kltr_flrnmpos_pos_idx ON live.dm01vch24lv95dnomenklatur_flurnamepos USING GIST ( pos );
CREATE INDEX dm01vch24lv95kltr_flrnmpos_flurnamepos_von_idx ON live.dm01vch24lv95dnomenklatur_flurnamepos ( flurnamepos_von );
-- DM01AVCH24LV95D.Nomenklatur.Ortsname
CREATE TABLE live.dm01vch24lv95dnomenklatur_ortsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname varchar(40) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,typ varchar(30) NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95nkltr_rtsname_t_basket_idx ON live.dm01vch24lv95dnomenklatur_ortsname ( t_basket );
CREATE INDEX dm01vch24lv95nkltr_rtsname_geometrie_idx ON live.dm01vch24lv95dnomenklatur_ortsname USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95nkltr_rtsname_entstehung_idx ON live.dm01vch24lv95dnomenklatur_ortsname ( entstehung );
-- DM01AVCH24LV95D.Nomenklatur.OrtsnamePos
CREATE TABLE live.dm01vch24lv95dnomenklatur_ortsnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,stil varchar(255) NULL
  ,ortsnamepos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95kltr_rtsnmpos_t_basket_idx ON live.dm01vch24lv95dnomenklatur_ortsnamepos ( t_basket );
CREATE INDEX dm01vch24lv95kltr_rtsnmpos_pos_idx ON live.dm01vch24lv95dnomenklatur_ortsnamepos USING GIST ( pos );
CREATE INDEX dm01vch24lv95kltr_rtsnmpos_ortsnamepos_von_idx ON live.dm01vch24lv95dnomenklatur_ortsnamepos ( ortsnamepos_von );
-- DM01AVCH24LV95D.Nomenklatur.Gelaendename
CREATE TABLE live.dm01vch24lv95dnomenklatur_gelaendename (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname varchar(40) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95kltr_glndname_t_basket_idx ON live.dm01vch24lv95dnomenklatur_gelaendename ( t_basket );
CREATE INDEX dm01vch24lv95kltr_glndname_entstehung_idx ON live.dm01vch24lv95dnomenklatur_gelaendename ( entstehung );
-- DM01AVCH24LV95D.Nomenklatur.GelaendenamePos
CREATE TABLE live.dm01vch24lv95dnomenklatur_gelaendenamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,stil varchar(255) NULL
  ,gelaendenamepos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ltr_glndnmpos_t_basket_idx ON live.dm01vch24lv95dnomenklatur_gelaendenamepos ( t_basket );
CREATE INDEX dm01vch24lv95ltr_glndnmpos_pos_idx ON live.dm01vch24lv95dnomenklatur_gelaendenamepos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ltr_glndnmpos_gelaendenamepos_von_idx ON live.dm01vch24lv95dnomenklatur_gelaendenamepos ( gelaendenamepos_von );
-- DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung
CREATE TABLE live.dm01vch24lv95dliegenschaften_lsnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95n_lsnchfhrung_t_basket_idx ON live.dm01vch24lv95dliegenschaften_lsnachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95n_lsnchfhrung_perimeter_idx ON live.dm01vch24lv95dliegenschaften_lsnachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.Liegenschaften.Grenzpunkt
CREATE TABLE live.dm01vch24lv95dliegenschaften_grenzpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95hftn_grnzpnkt_t_basket_idx ON live.dm01vch24lv95dliegenschaften_grenzpunkt ( t_basket );
CREATE INDEX dm01vch24lv95hftn_grnzpnkt_geometrie_idx ON live.dm01vch24lv95dliegenschaften_grenzpunkt USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95hftn_grnzpnkt_entstehung_idx ON live.dm01vch24lv95dliegenschaften_grenzpunkt ( entstehung );
-- DM01AVCH24LV95D.Liegenschaften.GrenzpunktPos
CREATE TABLE live.dm01vch24lv95dliegenschaften_grenzpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,grenzpunktpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95n_grnzpnktpos_t_basket_idx ON live.dm01vch24lv95dliegenschaften_grenzpunktpos ( t_basket );
CREATE INDEX dm01vch24lv95n_grnzpnktpos_pos_idx ON live.dm01vch24lv95dliegenschaften_grenzpunktpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95n_grnzpnktpos_grenzpunktpos_von_idx ON live.dm01vch24lv95dliegenschaften_grenzpunktpos ( grenzpunktpos_von );
-- DM01AVCH24LV95D.Liegenschaften.GrenzpunktSymbol
CREATE TABLE live.dm01vch24lv95dliegenschaften_grenzpunktsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,ori decimal(4,1) NULL
  ,grenzpunktsymbol_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95rnzpnktsymbol_t_basket_idx ON live.dm01vch24lv95dliegenschaften_grenzpunktsymbol ( t_basket );
CREATE INDEX dm01vch24lv95rnzpnktsymbol_grenzpunktsymbol_von_idx ON live.dm01vch24lv95dliegenschaften_grenzpunktsymbol ( grenzpunktsymbol_von );
-- DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck
CREATE TABLE live.dm01vch24lv95dliegenschaften_projgrundstueck (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95_prjgrndsteck_t_basket_idx ON live.dm01vch24lv95dliegenschaften_projgrundstueck ( t_basket );
CREATE INDEX dm01vch24lv95_prjgrndsteck_entstehung_idx ON live.dm01vch24lv95dliegenschaften_projgrundstueck ( entstehung );
-- DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPos
CREATE TABLE live.dm01vch24lv95dliegenschaften_projgrundstueckpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,hilfslinie geometry(LINESTRING,2056) NULL
  ,projgrundstueckpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95rjgrndstckpos_t_basket_idx ON live.dm01vch24lv95dliegenschaften_projgrundstueckpos ( t_basket );
CREATE INDEX dm01vch24lv95rjgrndstckpos_pos_idx ON live.dm01vch24lv95dliegenschaften_projgrundstueckpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95rjgrndstckpos_hilfslinie_idx ON live.dm01vch24lv95dliegenschaften_projgrundstueckpos USING GIST ( hilfslinie );
CREATE INDEX dm01vch24lv95rjgrndstckpos_projgrundstueckpos_von_idx ON live.dm01vch24lv95dliegenschaften_projgrundstueckpos ( projgrundstueckpos_von );
-- DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaft
CREATE TABLE live.dm01vch24lv95dliegenschaften_projliegenschaft (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,projliegenschaft_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95_prjlgnschaft_t_basket_idx ON live.dm01vch24lv95dliegenschaften_projliegenschaft ( t_basket );
CREATE INDEX dm01vch24lv95_prjlgnschaft_geometrie_idx ON live.dm01vch24lv95dliegenschaften_projliegenschaft USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95_prjlgnschaft_projliegenschaft_von_idx ON live.dm01vch24lv95dliegenschaften_projliegenschaft ( projliegenschaft_von );
-- DM01AVCH24LV95D.Liegenschaften.ProjSelbstRecht
CREATE TABLE live.dm01vch24lv95dliegenschaften_projselbstrecht (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,projselbstrecht_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95_prjslbstrcht_t_basket_idx ON live.dm01vch24lv95dliegenschaften_projselbstrecht ( t_basket );
CREATE INDEX dm01vch24lv95_prjslbstrcht_geometrie_idx ON live.dm01vch24lv95dliegenschaften_projselbstrecht USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95_prjslbstrcht_projselbstrecht_von_idx ON live.dm01vch24lv95dliegenschaften_projselbstrecht ( projselbstrecht_von );
-- DM01AVCH24LV95D.Liegenschaften.ProjBergwerk
CREATE TABLE live.dm01vch24lv95dliegenschaften_projbergwerk (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,projbergwerk_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95tn_prjbrgwerk_t_basket_idx ON live.dm01vch24lv95dliegenschaften_projbergwerk ( t_basket );
CREATE INDEX dm01vch24lv95tn_prjbrgwerk_geometrie_idx ON live.dm01vch24lv95dliegenschaften_projbergwerk USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95tn_prjbrgwerk_projbergwerk_von_idx ON live.dm01vch24lv95dliegenschaften_projbergwerk ( projbergwerk_von );
-- DM01AVCH24LV95D.Liegenschaften.Grundstueck
CREATE TABLE live.dm01vch24lv95dliegenschaften_grundstueck (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95ftn_grndsteck_t_basket_idx ON live.dm01vch24lv95dliegenschaften_grundstueck ( t_basket );
CREATE INDEX dm01vch24lv95ftn_grndsteck_entstehung_idx ON live.dm01vch24lv95dliegenschaften_grundstueck ( entstehung );
-- DM01AVCH24LV95D.Liegenschaften.GrundstueckPos
CREATE TABLE live.dm01vch24lv95dliegenschaften_grundstueckpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,hilfslinie geometry(LINESTRING,2056) NULL
  ,grundstueckpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95n_grndstckpos_t_basket_idx ON live.dm01vch24lv95dliegenschaften_grundstueckpos ( t_basket );
CREATE INDEX dm01vch24lv95n_grndstckpos_pos_idx ON live.dm01vch24lv95dliegenschaften_grundstueckpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95n_grndstckpos_hilfslinie_idx ON live.dm01vch24lv95dliegenschaften_grundstueckpos USING GIST ( hilfslinie );
CREATE INDEX dm01vch24lv95n_grndstckpos_grundstueckpos_von_idx ON live.dm01vch24lv95dliegenschaften_grundstueckpos ( grundstueckpos_von );
-- DM01AVCH24LV95D.Liegenschaften.Liegenschaft
CREATE TABLE live.dm01vch24lv95dliegenschaften_liegenschaft (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,liegenschaft_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ftn_lgnschaft_t_basket_idx ON live.dm01vch24lv95dliegenschaften_liegenschaft ( t_basket );
CREATE INDEX dm01vch24lv95ftn_lgnschaft_geometrie_idx ON live.dm01vch24lv95dliegenschaften_liegenschaft USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95ftn_lgnschaft_liegenschaft_von_idx ON live.dm01vch24lv95dliegenschaften_liegenschaft ( liegenschaft_von );
-- DM01AVCH24LV95D.Liegenschaften.SelbstRecht
CREATE TABLE live.dm01vch24lv95dliegenschaften_selbstrecht (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,selbstrecht_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ftn_slbstrcht_t_basket_idx ON live.dm01vch24lv95dliegenschaften_selbstrecht ( t_basket );
CREATE INDEX dm01vch24lv95ftn_slbstrcht_geometrie_idx ON live.dm01vch24lv95dliegenschaften_selbstrecht USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95ftn_slbstrcht_selbstrecht_von_idx ON live.dm01vch24lv95dliegenschaften_selbstrecht ( selbstrecht_von );
-- DM01AVCH24LV95D.Liegenschaften.Bergwerk
CREATE TABLE live.dm01vch24lv95dliegenschaften_bergwerk (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nummerteilgrundstueck varchar(12) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenmass integer NOT NULL
  ,bergwerk_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95chftn_brgwerk_t_basket_idx ON live.dm01vch24lv95dliegenschaften_bergwerk ( t_basket );
CREATE INDEX dm01vch24lv95chftn_brgwerk_geometrie_idx ON live.dm01vch24lv95dliegenschaften_bergwerk USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95chftn_brgwerk_bergwerk_von_idx ON live.dm01vch24lv95dliegenschaften_bergwerk ( bergwerk_von );
-- DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung
CREATE TABLE live.dm01vch24lv95drohrleitungen_rlnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95n_rlnchfhrung_t_basket_idx ON live.dm01vch24lv95drohrleitungen_rlnachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95n_rlnchfhrung_perimeter_idx ON live.dm01vch24lv95drohrleitungen_rlnachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.Rohrleitungen.Leitungsobjekt
CREATE TABLE live.dm01vch24lv95drohrleitungen_leitungsobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,betreiber varchar(30) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95gn_ltngsbjekt_t_basket_idx ON live.dm01vch24lv95drohrleitungen_leitungsobjekt ( t_basket );
CREATE INDEX dm01vch24lv95gn_ltngsbjekt_entstehung_idx ON live.dm01vch24lv95drohrleitungen_leitungsobjekt ( entstehung );
-- DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPos
CREATE TABLE live.dm01vch24lv95drohrleitungen_leitungsobjektpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,groesse varchar(255) NULL
  ,leitungsobjektpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95_ltngsbjktpos_t_basket_idx ON live.dm01vch24lv95drohrleitungen_leitungsobjektpos ( t_basket );
CREATE INDEX dm01vch24lv95_ltngsbjktpos_pos_idx ON live.dm01vch24lv95drohrleitungen_leitungsobjektpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95_ltngsbjktpos_leitungsobjektpos_von_idx ON live.dm01vch24lv95drohrleitungen_leitungsobjektpos ( leitungsobjektpos_von );
-- DM01AVCH24LV95D.Rohrleitungen.Flaechenelement
CREATE TABLE live.dm01vch24lv95drohrleitungen_flaechenelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flaechenelement_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95gn_flchnlment_t_basket_idx ON live.dm01vch24lv95drohrleitungen_flaechenelement ( t_basket );
CREATE INDEX dm01vch24lv95gn_flchnlment_geometrie_idx ON live.dm01vch24lv95drohrleitungen_flaechenelement USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95gn_flchnlment_flaechenelement_von_idx ON live.dm01vch24lv95drohrleitungen_flaechenelement ( flaechenelement_von );
-- DM01AVCH24LV95D.Rohrleitungen.Linienelement
CREATE TABLE live.dm01vch24lv95drohrleitungen_linienelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,linienart varchar(255) NULL
  ,linienelement_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95tngn_lnnlment_t_basket_idx ON live.dm01vch24lv95drohrleitungen_linienelement ( t_basket );
CREATE INDEX dm01vch24lv95tngn_lnnlment_geometrie_idx ON live.dm01vch24lv95drohrleitungen_linienelement USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95tngn_lnnlment_linienelement_von_idx ON live.dm01vch24lv95drohrleitungen_linienelement ( linienelement_von );
-- DM01AVCH24LV95D.Rohrleitungen.Punktelement
CREATE TABLE live.dm01vch24lv95drohrleitungen_punktelement (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,hoehegeom decimal(7,3) NULL
  ,ori decimal(4,1) NOT NULL
  ,punktelement_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ngn_pnktlment_t_basket_idx ON live.dm01vch24lv95drohrleitungen_punktelement ( t_basket );
CREATE INDEX dm01vch24lv95ngn_pnktlment_geometrie_idx ON live.dm01vch24lv95drohrleitungen_punktelement USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95ngn_pnktlment_punktelement_von_idx ON live.dm01vch24lv95drohrleitungen_punktelement ( punktelement_von );
-- DM01AVCH24LV95D.Rohrleitungen.Signalpunkt
CREATE TABLE live.dm01vch24lv95drohrleitungen_signalpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nummer varchar(12) NOT NULL
  ,betreiber varchar(30) NOT NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,qualitaet varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,punktart varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95tngn_sgnlpnkt_t_basket_idx ON live.dm01vch24lv95drohrleitungen_signalpunkt ( t_basket );
CREATE INDEX dm01vch24lv95tngn_sgnlpnkt_geometrie_idx ON live.dm01vch24lv95drohrleitungen_signalpunkt USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95tngn_sgnlpnkt_entstehung_idx ON live.dm01vch24lv95drohrleitungen_signalpunkt ( entstehung );
-- DM01AVCH24LV95D.Rohrleitungen.SignalpunktPos
CREATE TABLE live.dm01vch24lv95drohrleitungen_signalpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,signalpunktpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95n_sgnlpnktpos_t_basket_idx ON live.dm01vch24lv95drohrleitungen_signalpunktpos ( t_basket );
CREATE INDEX dm01vch24lv95n_sgnlpnktpos_pos_idx ON live.dm01vch24lv95drohrleitungen_signalpunktpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95n_sgnlpnktpos_signalpunktpos_von_idx ON live.dm01vch24lv95drohrleitungen_signalpunktpos ( signalpunktpos_von );
-- DM01AVCH24LV95D.Rohrleitungen.Einzelpunkt
CREATE TABLE live.dm01vch24lv95drohrleitungen_einzelpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,identifikator varchar(12) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,exaktdefiniert varchar(255) NOT NULL
  ,entstehung bigint NULL
)
;
CREATE INDEX dm01vch24lv95ltngn_nzlpnkt_t_basket_idx ON live.dm01vch24lv95drohrleitungen_einzelpunkt ( t_basket );
CREATE INDEX dm01vch24lv95ltngn_nzlpnkt_geometrie_idx ON live.dm01vch24lv95drohrleitungen_einzelpunkt USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95ltngn_nzlpnkt_entstehung_idx ON live.dm01vch24lv95drohrleitungen_einzelpunkt ( entstehung );
-- DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPos
CREATE TABLE live.dm01vch24lv95drohrleitungen_einzelpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,einzelpunktpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95gn_nzlpnktpos_t_basket_idx ON live.dm01vch24lv95drohrleitungen_einzelpunktpos ( t_basket );
CREATE INDEX dm01vch24lv95gn_nzlpnktpos_pos_idx ON live.dm01vch24lv95drohrleitungen_einzelpunktpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95gn_nzlpnktpos_einzelpunktpos_von_idx ON live.dm01vch24lv95drohrleitungen_einzelpunktpos ( einzelpunktpos_von );
-- DM01AVCH24LV95D.Nummerierungsbereiche.Nummerierungsbereich
CREATE TABLE live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereich (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,kt varchar(255) NOT NULL
  ,nbnummer varchar(10) NOT NULL
  ,techdossier varchar(12) NOT NULL
  ,gueltigereintrag date NULL
)
;
CREATE INDEX dm01vch24lv95nmmrrngsbrich_t_basket_idx ON live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereich ( t_basket );
-- DM01AVCH24LV95D.Nummerierungsbereiche.NBGeometrie
CREATE TABLE live.dm01vch24lv95dnummerierngsbrche_nbgeometrie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,nbgeometrie_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95brch_nbgmtrie_t_basket_idx ON live.dm01vch24lv95dnummerierngsbrche_nbgeometrie ( t_basket );
CREATE INDEX dm01vch24lv95brch_nbgmtrie_geometrie_idx ON live.dm01vch24lv95dnummerierngsbrche_nbgeometrie USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95brch_nbgmtrie_nbgeometrie_von_idx ON live.dm01vch24lv95dnummerierngsbrche_nbgeometrie ( nbgeometrie_von );
-- DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPos
CREATE TABLE live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,nummerierungsbereichpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95mrrngsbrchpos_t_basket_idx ON live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos ( t_basket );
CREATE INDEX dm01vch24lv95mrrngsbrchpos_pos_idx ON live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95mrrngsbrchpos_nummerierungsbereichps_von_idx ON live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos ( nummerierungsbereichpos_von );
-- DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung
CREATE TABLE live.dm01vch24lv95dgemeindegrenzen_gemnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NULL
  ,datum1 date NULL
)
;
CREATE INDEX dm01vch24lv95n_gmnchfhrung_t_basket_idx ON live.dm01vch24lv95dgemeindegrenzen_gemnachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95n_gmnchfhrung_perimeter_idx ON live.dm01vch24lv95dgemeindegrenzen_gemnachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt
CREATE TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,identifikator varchar(12) NULL
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegen decimal(4,1) NOT NULL
  ,lagezuv varchar(255) NOT NULL
  ,punktzeichen varchar(255) NOT NULL
  ,hoheitsgrenzstein varchar(255) NOT NULL
  ,exaktdefiniert varchar(255) NOT NULL
  ,entstehung bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95_hhtsgrnzpnkt_t_basket_idx ON live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt ( t_basket );
CREATE INDEX dm01vch24lv95_hhtsgrnzpnkt_geometrie_idx ON live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95_hhtsgrnzpnkt_entstehung_idx ON live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt ( entstehung );
-- DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPos
CREATE TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,hoheitsgrenzpunktpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95tsgrnzpnktpos_t_basket_idx ON live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos ( t_basket );
CREATE INDEX dm01vch24lv95tsgrnzpnktpos_pos_idx ON live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95tsgrnzpnktpos_hoheitsgrenzpunktpos_von_idx ON live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos ( hoheitsgrenzpunktpos_von );
-- DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktSymbol
CREATE TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,ori decimal(4,1) NULL
  ,hoheitsgrenzpunktsymbol_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95rnzpnktsymbol_t_basket_idx1 ON live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol ( t_basket );
CREATE INDEX dm01vch24lv95rnzpnktsymbol_hoheitsgrenzpunktsymbl_von_idx ON live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol ( hoheitsgrenzpunktsymbol_von );
-- DM01AVCH24LV95D.Gemeindegrenzen.Gemeinde
CREATE TABLE live.dm01vch24lv95dgemeindegrenzen_gemeinde (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname varchar(30) NOT NULL
  ,bfsnr integer NOT NULL
)
;
CREATE INDEX dm01vch24lv95ndgrnzn_gmnde_t_basket_idx ON live.dm01vch24lv95dgemeindegrenzen_gemeinde ( t_basket );
-- DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenze
CREATE TABLE live.dm01vch24lv95dgemeindegrenzen_projgemeindegrenze (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,entstehung bigint NOT NULL
  ,projgemeindegrenze_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95_prjgmndgrnze_t_basket_idx ON live.dm01vch24lv95dgemeindegrenzen_projgemeindegrenze ( t_basket );
CREATE INDEX dm01vch24lv95_prjgmndgrnze_geometrie_idx ON live.dm01vch24lv95dgemeindegrenzen_projgemeindegrenze USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95_prjgmndgrnze_entstehung_idx ON live.dm01vch24lv95dgemeindegrenzen_projgemeindegrenze ( entstehung );
CREATE INDEX dm01vch24lv95_prjgmndgrnze_projgemeindegrenze_von_idx ON live.dm01vch24lv95dgemeindegrenzen_projgemeindegrenze ( projgemeindegrenze_von );
-- DM01AVCH24LV95D.Gemeindegrenzen.Gemeindegrenze
CREATE TABLE live.dm01vch24lv95dgemeindegrenzen_gemeindegrenze (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,entstehung bigint NOT NULL
  ,gemeindegrenze_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95nzn_gmndgrnze_t_basket_idx ON live.dm01vch24lv95dgemeindegrenzen_gemeindegrenze ( t_basket );
CREATE INDEX dm01vch24lv95nzn_gmndgrnze_geometrie_idx ON live.dm01vch24lv95dgemeindegrenzen_gemeindegrenze USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95nzn_gmndgrnze_entstehung_idx ON live.dm01vch24lv95dgemeindegrenzen_gemeindegrenze ( entstehung );
CREATE INDEX dm01vch24lv95nzn_gmndgrnze_gemeindegrenze_von_idx ON live.dm01vch24lv95dgemeindegrenzen_gemeindegrenze ( gemeindegrenze_von );
-- DM01AVCH24LV95D.Bezirksgrenzen.Bezirksgrenzabschnitt
CREATE TABLE live.dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,gueltigkeit varchar(255) NOT NULL
)
;
CREATE INDEX dm01vch24lv95sgrnzbschnitt_t_basket_idx ON live.dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt ( t_basket );
CREATE INDEX dm01vch24lv95sgrnzbschnitt_geometrie_idx ON live.dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt USING GIST ( geometrie );
-- DM01AVCH24LV95D.Kantonsgrenzen.Kantonsgrenzabschnitt
CREATE TABLE live.dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,gueltigkeit varchar(255) NOT NULL
)
;
CREATE INDEX dm01vch24lv95sgrnzbschnitt_t_basket_idx1 ON live.dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt ( t_basket );
CREATE INDEX dm01vch24lv95sgrnzbschnitt_geometrie_idx1 ON live.dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt USING GIST ( geometrie );
-- DM01AVCH24LV95D.Landesgrenzen.Landesgrenzabschnitt
CREATE TABLE live.dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,gueltigkeit varchar(255) NOT NULL
)
;
CREATE INDEX dm01vch24lv95sgrnzbschnitt_t_basket_idx2 ON live.dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt ( t_basket );
CREATE INDEX dm01vch24lv95sgrnzbschnitt_geometrie_idx2 ON live.dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt USING GIST ( geometrie );
-- DM01AVCH24LV95D.Planeinteilungen.Plan
CREATE TABLE live.dm01vch24lv95dplaneinteilungen_plan (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NOT NULL
  ,techdossier varchar(12) NOT NULL
  ,gueltigereintrag date NULL
)
;
CREATE INDEX dm01vch24lv95lnntlngn_plan_t_basket_idx ON live.dm01vch24lv95dplaneinteilungen_plan ( t_basket );
-- DM01AVCH24LV95D.Planeinteilungen.Plangeometrie
CREATE TABLE live.dm01vch24lv95dplaneinteilungen_plangeometrie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,plangeometrie_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ngn_plngmtrie_t_basket_idx ON live.dm01vch24lv95dplaneinteilungen_plangeometrie ( t_basket );
CREATE INDEX dm01vch24lv95ngn_plngmtrie_geometrie_idx ON live.dm01vch24lv95dplaneinteilungen_plangeometrie USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95ngn_plngmtrie_plangeometrie_von_idx ON live.dm01vch24lv95dplaneinteilungen_plangeometrie ( plangeometrie_von );
-- DM01AVCH24LV95D.Planeinteilungen.PlanPos
CREATE TABLE live.dm01vch24lv95dplaneinteilungen_planpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,planpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ntlngn_plnpos_t_basket_idx ON live.dm01vch24lv95dplaneinteilungen_planpos ( t_basket );
CREATE INDEX dm01vch24lv95ntlngn_plnpos_pos_idx ON live.dm01vch24lv95dplaneinteilungen_planpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ntlngn_plnpos_planpos_von_idx ON live.dm01vch24lv95dplaneinteilungen_planpos ( planpos_von );
-- DM01AVCH24LV95D.TSEinteilung.Toleranzstufe
CREATE TABLE live.dm01vch24lv95dtseinteilung_toleranzstufe (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,gueltigereintrag date NULL
  ,art varchar(255) NOT NULL
)
;
CREATE INDEX dm01vch24lv95ng_tlrnzstufe_t_basket_idx ON live.dm01vch24lv95dtseinteilung_toleranzstufe ( t_basket );
CREATE INDEX dm01vch24lv95ng_tlrnzstufe_geometrie_idx ON live.dm01vch24lv95dtseinteilung_toleranzstufe USING GIST ( geometrie );
-- DM01AVCH24LV95D.TSEinteilung.ToleranzstufePos
CREATE TABLE live.dm01vch24lv95dtseinteilung_toleranzstufepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,toleranzstufepos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95g_tlrnzstfpos_t_basket_idx ON live.dm01vch24lv95dtseinteilung_toleranzstufepos ( t_basket );
CREATE INDEX dm01vch24lv95g_tlrnzstfpos_pos_idx ON live.dm01vch24lv95dtseinteilung_toleranzstufepos USING GIST ( pos );
CREATE INDEX dm01vch24lv95g_tlrnzstfpos_toleranzstufepos_von_idx ON live.dm01vch24lv95dtseinteilung_toleranzstufepos ( toleranzstufepos_von );
-- DM01AVCH24LV95D.Rutschgebiete.Rutschung
CREATE TABLE live.dm01vch24lv95drutschgebiete_rutschung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,aname varchar(30) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,gueltigereintrag date NULL
)
;
CREATE INDEX dm01vch24lv95hgbt_rtschung_t_basket_idx ON live.dm01vch24lv95drutschgebiete_rutschung ( t_basket );
CREATE INDEX dm01vch24lv95hgbt_rtschung_geometrie_idx ON live.dm01vch24lv95drutschgebiete_rutschung USING GIST ( geometrie );
-- DM01AVCH24LV95D.Rutschgebiete.RutschungPos
CREATE TABLE live.dm01vch24lv95drutschgebiete_rutschungpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,rutschungpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95bt_rtschngpos_t_basket_idx ON live.dm01vch24lv95drutschgebiete_rutschungpos ( t_basket );
CREATE INDEX dm01vch24lv95bt_rtschngpos_pos_idx ON live.dm01vch24lv95drutschgebiete_rutschungpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95bt_rtschngpos_rutschungpos_von_idx ON live.dm01vch24lv95drutschgebiete_rutschungpos ( rutschungpos_von );
-- DM01AVCH24LV95D.PLZOrtschaft.OSNachfuehrung
CREATE TABLE live.dm01vch24lv95dplzortschaft_osnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NOT NULL
)
;
CREATE INDEX dm01vch24lv95ft_snchfhrung_t_basket_idx ON live.dm01vch24lv95dplzortschaft_osnachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95ft_snchfhrung_perimeter_idx ON live.dm01vch24lv95dplzortschaft_osnachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbund
CREATE TABLE live.dm01vch24lv95dplzortschaft_ortschaftsverbund (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,leer varchar(1) NULL
)
;
CREATE INDEX dm01vch24lv95tschftsvrbund_t_basket_idx ON live.dm01vch24lv95dplzortschaft_ortschaftsverbund ( t_basket );
-- DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbundText
CREATE TABLE live.dm01vch24lv95dplzortschaft_ortschaftsverbundtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,atext varchar(200) NOT NULL
  ,sprache varchar(255) NOT NULL
  ,ortschaftsverbundtext_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95hftsvrbndtext_t_basket_idx ON live.dm01vch24lv95dplzortschaft_ortschaftsverbundtext ( t_basket );
CREATE INDEX dm01vch24lv95hftsvrbndtext_ortschaftsverbundtext_von_idx ON live.dm01vch24lv95dplzortschaft_ortschaftsverbundtext ( ortschaftsverbundtext_von );
-- DM01AVCH24LV95D.PLZOrtschaft.Ortschaft
CREATE TABLE live.dm01vch24lv95dplzortschaft_ortschaft (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,astatus varchar(255) NOT NULL
  ,inaenderung varchar(255) NOT NULL
  ,flaeche geometry(POLYGON,2056) NOT NULL
  ,entstehung bigint NOT NULL
  ,ortschaft_von bigint NULL
)
;
CREATE INDEX dm01vch24lv95chft_rtschaft_t_basket_idx ON live.dm01vch24lv95dplzortschaft_ortschaft ( t_basket );
CREATE INDEX dm01vch24lv95chft_rtschaft_flaeche_idx ON live.dm01vch24lv95dplzortschaft_ortschaft USING GIST ( flaeche );
CREATE INDEX dm01vch24lv95chft_rtschaft_entstehung_idx ON live.dm01vch24lv95dplzortschaft_ortschaft ( entstehung );
CREATE INDEX dm01vch24lv95chft_rtschaft_ortschaft_von_idx ON live.dm01vch24lv95dplzortschaft_ortschaft ( ortschaft_von );
-- DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName
CREATE TABLE live.dm01vch24lv95dplzortschaft_ortschaftsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,atext varchar(40) NOT NULL
  ,kurztext varchar(18) NULL
  ,indextext varchar(16) NULL
  ,sprache varchar(255) NOT NULL
  ,ortschaftsname_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95_rtschftsname_t_basket_idx ON live.dm01vch24lv95dplzortschaft_ortschaftsname ( t_basket );
CREATE INDEX dm01vch24lv95_rtschftsname_ortschaftsname_von_idx ON live.dm01vch24lv95dplzortschaft_ortschaftsname ( ortschaftsname_von );
-- DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_Pos
CREATE TABLE live.dm01vch24lv95dplzortschaft_ortschaftsname_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,ortschaftsname_pos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95tschftsnm_pos_t_basket_idx ON live.dm01vch24lv95dplzortschaft_ortschaftsname_pos ( t_basket );
CREATE INDEX dm01vch24lv95tschftsnm_pos_pos_idx ON live.dm01vch24lv95dplzortschaft_ortschaftsname_pos USING GIST ( pos );
CREATE INDEX dm01vch24lv95tschftsnm_pos_ortschaftsname_pos_von_idx ON live.dm01vch24lv95dplzortschaft_ortschaftsname_pos ( ortschaftsname_pos_von );
-- DM01AVCH24LV95D.PLZOrtschaft.PLZ6Nachfuehrung
CREATE TABLE live.dm01vch24lv95dplzortschaft_plz6nachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NOT NULL
)
;
CREATE INDEX dm01vch24lv95plz6nchfhrung_t_basket_idx ON live.dm01vch24lv95dplzortschaft_plz6nachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95plz6nchfhrung_perimeter_idx ON live.dm01vch24lv95dplzortschaft_plz6nachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.PLZOrtschaft.PLZ6
CREATE TABLE live.dm01vch24lv95dplzortschaft_plz6 (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,flaeche geometry(POLYGON,2056) NULL
  ,astatus varchar(255) NOT NULL
  ,inaenderung varchar(255) NOT NULL
  ,plz integer NOT NULL
  ,zusatzziffern integer NOT NULL
  ,entstehung bigint NOT NULL
  ,plz6_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95zrtschft_plz6_t_basket_idx ON live.dm01vch24lv95dplzortschaft_plz6 ( t_basket );
CREATE INDEX dm01vch24lv95zrtschft_plz6_flaeche_idx ON live.dm01vch24lv95dplzortschaft_plz6 USING GIST ( flaeche );
CREATE INDEX dm01vch24lv95zrtschft_plz6_entstehung_idx ON live.dm01vch24lv95dplzortschaft_plz6 ( entstehung );
CREATE INDEX dm01vch24lv95zrtschft_plz6_plz6_von_idx ON live.dm01vch24lv95dplzortschaft_plz6 ( plz6_von );
-- DM01AVCH24LV95D.Gebaeudeadressen.GEBNachfuehrung
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_gebnachfuehrung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nbident varchar(12) NOT NULL
  ,identifikator varchar(12) NOT NULL
  ,beschreibung varchar(30) NOT NULL
  ,perimeter geometry(POLYGON,2056) NULL
  ,gueltigkeit varchar(255) NOT NULL
  ,gueltigereintrag date NOT NULL
)
;
CREATE INDEX dm01vch24lv95n_gbnchfhrung_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_gebnachfuehrung ( t_basket );
CREATE INDEX dm01vch24lv95n_gbnchfhrung_perimeter_idx ON live.dm01vch24lv95dgebaeudeadressen_gebnachfuehrung USING GIST ( perimeter );
-- DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisation (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95rssn_lklstion_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_lokalisation ( t_basket );
CREATE INDEX dm01vch24lv95rssn_lklstion_entstehung_idx ON live.dm01vch24lv95dgebaeudeadressen_lokalisation ( entstehung );
-- DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsName
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisationsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,atext varchar(60) NOT NULL
  ,kurztext varchar(24) NULL
  ,indextext varchar(16) NULL
  ,sprache varchar(255) NOT NULL
  ,benannte bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95n_lklstnsname_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_lokalisationsname ( t_basket );
CREATE INDEX dm01vch24lv95n_lklstnsname_benannte_idx ON live.dm01vch24lv95dgebaeudeadressen_lokalisationsname ( benannte );
-- DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95_lklstnsnmpos_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos ( t_basket );
CREATE INDEX dm01vch24lv95_lklstnsnmpos_pos_idx ON live.dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos USING GIST ( pos );
CREATE INDEX dm01vch24lv95_lklstnsnmpos_hilfslinie_idx ON live.dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos USING GIST ( hilfslinie );
CREATE INDEX dm01vch24lv95_lklstnsnmpos_lokalisationsnamepos_von_idx ON live.dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos ( lokalisationsnamepos_von );
-- DM01AVCH24LV95D.Gebaeudeadressen.BenanntesGebiet
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_benanntesgebiet (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,flaeche geometry(POLYGON,2056) NOT NULL
  ,benanntesgebiet_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95n_bnnntsgbiet_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_benanntesgebiet ( t_basket );
CREATE INDEX dm01vch24lv95n_bnnntsgbiet_flaeche_idx ON live.dm01vch24lv95dgebaeudeadressen_benanntesgebiet USING GIST ( flaeche );
CREATE INDEX dm01vch24lv95n_bnnntsgbiet_benanntesgebiet_von_idx ON live.dm01vch24lv95dgebaeudeadressen_benanntesgebiet ( benanntesgebiet_von );
-- DM01AVCH24LV95D.Gebaeudeadressen.Strassenstueck
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_strassenstueck (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,anfangspunkt geometry(POINT,2056) NULL
  ,ordnung integer NOT NULL
  ,istachse varchar(255) NOT NULL
  ,strassenstueck_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95n_strssnsteck_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_strassenstueck ( t_basket );
CREATE INDEX dm01vch24lv95n_strssnsteck_geometrie_idx ON live.dm01vch24lv95dgebaeudeadressen_strassenstueck USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95n_strssnsteck_anfangspunkt_idx ON live.dm01vch24lv95dgebaeudeadressen_strassenstueck USING GIST ( anfangspunkt );
CREATE INDEX dm01vch24lv95n_strssnsteck_strassenstueck_von_idx ON live.dm01vch24lv95dgebaeudeadressen_strassenstueck ( strassenstueck_von );
-- DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95rssn_gbdngang_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang ( t_basket );
CREATE INDEX dm01vch24lv95rssn_gbdngang_lage_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang USING GIST ( lage );
CREATE INDEX dm01vch24lv95rssn_gbdngang_entstehung_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang ( entstehung );
CREATE INDEX dm01vch24lv95rssn_gbdngang_gebaeudeeingang_von_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang ( gebaeudeeingang_von );
-- DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPos
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_hausnummerpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,hausnummerpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ssn_hsnmmrpos_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_hausnummerpos ( t_basket );
CREATE INDEX dm01vch24lv95ssn_hsnmmrpos_pos_idx ON live.dm01vch24lv95dgebaeudeadressen_hausnummerpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ssn_hsnmmrpos_hausnummerpos_von_idx ON live.dm01vch24lv95dgebaeudeadressen_hausnummerpos ( hausnummerpos_von );
-- DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeName
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudename (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,atext varchar(40) NOT NULL
  ,kurztext varchar(24) NULL
  ,indextext varchar(16) NULL
  ,sprache varchar(255) NOT NULL
  ,gebaeudename_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95drssn_gbdname_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudename ( t_basket );
CREATE INDEX dm01vch24lv95drssn_gbdname_gebaeudename_von_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudename ( gebaeudename_von );
-- DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePos
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudenamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,hilfslinie geometry(LINESTRING,2056) NULL
  ,gebaeudenamepos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95rssn_gbdnmpos_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudenamepos ( t_basket );
CREATE INDEX dm01vch24lv95rssn_gbdnmpos_pos_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudenamepos USING GIST ( pos );
CREATE INDEX dm01vch24lv95rssn_gbdnmpos_hilfslinie_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudenamepos USING GIST ( hilfslinie );
CREATE INDEX dm01vch24lv95rssn_gbdnmpos_gebaeudenamepos_von_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudenamepos ( gebaeudenamepos_von );
-- DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeBeschreibung
CREATE TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,atext varchar(100) NOT NULL
  ,sprache varchar(255) NOT NULL
  ,gebaeudebeschreibung_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95_gbdbschrbung_t_basket_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung ( t_basket );
CREATE INDEX dm01vch24lv95_gbdbschrbung_gebaeudebeschreibung_von_idx ON live.dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung ( gebaeudebeschreibung_von );
-- DM01AVCH24LV95D.Planrahmen.PlanLayout
CREATE TABLE live.dm01vch24lv95dplanrahmen_planlayout (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
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
CREATE INDEX dm01vch24lv95rhmn_plnlyout_t_basket_idx ON live.dm01vch24lv95dplanrahmen_planlayout ( t_basket );
CREATE INDEX dm01vch24lv95rhmn_plnlyout_plannullpunkt_idx ON live.dm01vch24lv95dplanrahmen_planlayout USING GIST ( plannullpunkt );
CREATE INDEX dm01vch24lv95rhmn_plnlyout_uebersichtplannullpunkt_idx ON live.dm01vch24lv95dplanrahmen_planlayout USING GIST ( uebersichtplannullpunkt );
-- DM01AVCH24LV95D.Planrahmen.Planbeschriftung
CREATE TABLE live.dm01vch24lv95dplanrahmen_planbeschriftung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,beschriftung varchar(30) NOT NULL
  ,art varchar(255) NOT NULL
  ,planbeschriftung_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95plnbschrftung_t_basket_idx ON live.dm01vch24lv95dplanrahmen_planbeschriftung ( t_basket );
CREATE INDEX dm01vch24lv95plnbschrftung_planbeschriftung_von_idx ON live.dm01vch24lv95dplanrahmen_planbeschriftung ( planbeschriftung_von );
-- DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPos
CREATE TABLE live.dm01vch24lv95dplanrahmen_planbeschriftungpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,planbeschriftungpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95nbschrftngpos_t_basket_idx ON live.dm01vch24lv95dplanrahmen_planbeschriftungpos ( t_basket );
CREATE INDEX dm01vch24lv95nbschrftngpos_pos_idx ON live.dm01vch24lv95dplanrahmen_planbeschriftungpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95nbschrftngpos_planbeschriftungpos_von_idx ON live.dm01vch24lv95dplanrahmen_planbeschriftungpos ( planbeschriftungpos_von );
-- DM01AVCH24LV95D.Planrahmen.Koordinatenanschrift
CREATE TABLE live.dm01vch24lv95dplanrahmen_koordinatenanschrift (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,beschriftung varchar(12) NOT NULL
  ,koordinatenanschrift_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95rdntnnschrift_t_basket_idx ON live.dm01vch24lv95dplanrahmen_koordinatenanschrift ( t_basket );
CREATE INDEX dm01vch24lv95rdntnnschrift_koordinatenanschrift_von_idx ON live.dm01vch24lv95dplanrahmen_koordinatenanschrift ( koordinatenanschrift_von );
-- DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPos
CREATE TABLE live.dm01vch24lv95dplanrahmen_koordinatenanschriftpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
  ,koordinatenanschriftpos_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95ntnnschrftpos_t_basket_idx ON live.dm01vch24lv95dplanrahmen_koordinatenanschriftpos ( t_basket );
CREATE INDEX dm01vch24lv95ntnnschrftpos_pos_idx ON live.dm01vch24lv95dplanrahmen_koordinatenanschriftpos USING GIST ( pos );
CREATE INDEX dm01vch24lv95ntnnschrftpos_koordinatenanschriftps_von_idx ON live.dm01vch24lv95dplanrahmen_koordinatenanschriftpos ( koordinatenanschriftpos_von );
-- DM01AVCH24LV95D.Planrahmen.Linienobjekt
CREATE TABLE live.dm01vch24lv95dplanrahmen_linienobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,art varchar(255) NOT NULL
  ,linienobjekt_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95rhmn_lnnbjekt_t_basket_idx ON live.dm01vch24lv95dplanrahmen_linienobjekt ( t_basket );
CREATE INDEX dm01vch24lv95rhmn_lnnbjekt_geometrie_idx ON live.dm01vch24lv95dplanrahmen_linienobjekt USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95rhmn_lnnbjekt_linienobjekt_von_idx ON live.dm01vch24lv95dplanrahmen_linienobjekt ( linienobjekt_von );
-- DM01AVCH24LV95D.Planrahmen.KoordinatenLinie
CREATE TABLE live.dm01vch24lv95dplanrahmen_koordinatenlinie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,koordinatenlinie_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95mn_krdntnlnie_t_basket_idx ON live.dm01vch24lv95dplanrahmen_koordinatenlinie ( t_basket );
CREATE INDEX dm01vch24lv95mn_krdntnlnie_geometrie_idx ON live.dm01vch24lv95dplanrahmen_koordinatenlinie USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95mn_krdntnlnie_koordinatenlinie_von_idx ON live.dm01vch24lv95dplanrahmen_koordinatenlinie ( koordinatenlinie_von );
-- DM01AVCH24LV95D.Planrahmen.Darstellungsflaeche
CREATE TABLE live.dm01vch24lv95dplanrahmen_darstellungsflaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,auswahlart varchar(255) NOT NULL
  ,darstellungsflaeche_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95rstllngsflche_t_basket_idx ON live.dm01vch24lv95dplanrahmen_darstellungsflaeche ( t_basket );
CREATE INDEX dm01vch24lv95rstllngsflche_geometrie_idx ON live.dm01vch24lv95dplanrahmen_darstellungsflaeche USING GIST ( geometrie );
CREATE INDEX dm01vch24lv95rstllngsflche_darstellungsflaeche_von_idx ON live.dm01vch24lv95dplanrahmen_darstellungsflaeche ( darstellungsflaeche_von );
-- DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbol
CREATE TABLE live.dm01vch24lv95dplanrahmen_planlayoutsymbol (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,art varchar(255) NOT NULL
  ,planlayoutsymbol_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95_plnlytsymbol_t_basket_idx ON live.dm01vch24lv95dplanrahmen_planlayoutsymbol ( t_basket );
CREATE INDEX dm01vch24lv95_plnlytsymbol_pos_idx ON live.dm01vch24lv95dplanrahmen_planlayoutsymbol USING GIST ( pos );
CREATE INDEX dm01vch24lv95_plnlytsymbol_planlayoutsymbol_von_idx ON live.dm01vch24lv95dplanrahmen_planlayoutsymbol ( planlayoutsymbol_von );
-- DM01AVCH24LV95D.Planrahmen.Netzkreuz
CREATE TABLE live.dm01vch24lv95dplanrahmen_netzkreuz (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,ori decimal(4,1) NULL
  ,art varchar(255) NOT NULL
  ,netzkreuz_von bigint NOT NULL
)
;
CREATE INDEX dm01vch24lv95rhmn_ntzkreuz_t_basket_idx ON live.dm01vch24lv95dplanrahmen_netzkreuz ( t_basket );
CREATE INDEX dm01vch24lv95rhmn_ntzkreuz_pos_idx ON live.dm01vch24lv95dplanrahmen_netzkreuz USING GIST ( pos );
CREATE INDEX dm01vch24lv95rhmn_ntzkreuz_netzkreuz_von_idx ON live.dm01vch24lv95dplanrahmen_netzkreuz ( netzkreuz_von );
CREATE TABLE live.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON live.t_ili2db_basket ( dataset );
CREATE TABLE live.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE live.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_dataset_idx ON live.t_ili2db_import ( dataset );
CREATE TABLE live.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,importrun bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_BASKET_importrun_idx ON live.t_ili2db_import_basket ( importrun );
CREATE INDEX T_ILI2DB_IMPORT_BASKET_basket_idx ON live.t_ili2db_import_basket ( basket );
CREATE TABLE live.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE live.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE live.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE live.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (iliversion,modelName)
)
;
CREATE TABLE live.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE live.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (SqlName,ColOwner)
)
;
CREATE TABLE live.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE live.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE live.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE live.plzoch1lv95dnummerierngsbrche_nummerierungsbereich ADD CONSTRAINT plzch1lv95dnmnmmrrngsbrich_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dnummerierngsbrche_nbgeometrie ADD CONSTRAINT plzch1lv95dnmbrch_nbgmtrie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dnummerierngsbrche_nbgeometrie ADD CONSTRAINT plzch1lv95dnmbrch_nbgmtrie_nbgeometrie_von_fkey FOREIGN KEY ( nbgeometrie_von ) REFERENCES live.plzoch1lv95dnummerierngsbrche_nummerierungsbereich DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT plzch1lv95dnmmrrngsbrchpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT plzch1lv95dnmrrngsbrchpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT plzch1lv95dnmmrrngsbrchpos_nummerierungsbereichps_von_fkey FOREIGN KEY ( nummerierungsbereichpos_von ) REFERENCES live.plzoch1lv95dnummerierngsbrche_nummerierungsbereich DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_osnachfuehrung ADD CONSTRAINT plzch1lv95dplft_snchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaftsverbund ADD CONSTRAINT plzch1lv95dpltschftsvrbund_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaftsverbundtext ADD CONSTRAINT plzch1lv95dplhftsvrbndtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaftsverbundtext ADD CONSTRAINT plzch1lv95dplhftsvrbndtext_ortschaftsverbundtext_von_fkey FOREIGN KEY ( ortschaftsverbundtext_von ) REFERENCES live.plzoch1lv95dplzortschaft_ortschaftsverbund DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaft ADD CONSTRAINT plzch1lv95dplchft_rtschaft_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaft ADD CONSTRAINT plzch1lv95dplchft_rtschaft_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.plzoch1lv95dplzortschaft_osnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaft ADD CONSTRAINT plzch1lv95dplchft_rtschaft_ortschaft_von_fkey FOREIGN KEY ( ortschaft_von ) REFERENCES live.plzoch1lv95dplzortschaft_ortschaftsverbund DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaftsname ADD CONSTRAINT plzch1lv95dpl_rtschftsname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaftsname ADD CONSTRAINT plzch1lv95dpl_rtschftsname_ortschaftsname_von_fkey FOREIGN KEY ( ortschaftsname_von ) REFERENCES live.plzoch1lv95dplzortschaft_ortschaft DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaftsname_pos ADD CONSTRAINT plzch1lv95dpltschftsnm_pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaftsname_pos ADD CONSTRAINT plzch1lv95dptschftsnm_pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.plzoch1lv95dplzortschaft_ortschaftsname_pos ADD CONSTRAINT plzch1lv95dpltschftsnm_pos_ortschaftsname_pos_von_fkey FOREIGN KEY ( ortschaftsname_pos_von ) REFERENCES live.plzoch1lv95dplzortschaft_ortschaftsname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_plz6nachfuehrung ADD CONSTRAINT plzch1lv95dplplz6nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_plz6 ADD CONSTRAINT plzch1lv95dplzrtschft_plz6_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_plz6 ADD CONSTRAINT plzch1lv95dpzrtschft_plz6_plz_check CHECK( plz BETWEEN 1000 AND 9999);
ALTER TABLE live.plzoch1lv95dplzortschaft_plz6 ADD CONSTRAINT plzch1lv95dpzrtschft_plz6_zusatzziffern_check CHECK( zusatzziffern BETWEEN 0 AND 99);
ALTER TABLE live.plzoch1lv95dplzortschaft_plz6 ADD CONSTRAINT plzch1lv95dplzrtschft_plz6_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.plzoch1lv95dplzortschaft_plz6nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.plzoch1lv95dplzortschaft_plz6 ADD CONSTRAINT plzch1lv95dplzrtschft_plz6_plz6_von_fkey FOREIGN KEY ( plz6_von ) REFERENCES live.plzoch1lv95dplzortschaft_ortschaft DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung ADD CONSTRAINT dm01vch24lv95lfp1nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1 ADD CONSTRAINT dm01vch24lv95nktktgr1_lfp1_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1 ADD CONSTRAINT dm01vch24lv9nktktgr1_lfp1_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 5000.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1 ADD CONSTRAINT dm01vch24lv9nktktgr1_lfp1_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1 ADD CONSTRAINT dm01vch24lv9nktktgr1_lfp1_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1 ADD CONSTRAINT dm01vch24lv95nktktgr1_lfp1_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1pos ADD CONSTRAINT dm01vch24lv95ktgr1_lfp1pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1pos ADD CONSTRAINT dm01vch24lv9ktgr1_lfp1pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1pos ADD CONSTRAINT dm01vch24lv95ktgr1_lfp1pos_lfp1pos_von_fkey FOREIGN KEY ( lfp1pos_von ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie1_lfp1 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1symbol ADD CONSTRAINT dm01vch24lv95r1_lfp1symbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1symbol ADD CONSTRAINT dm01vch24lv9r1_lfp1symbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_lfp1symbol ADD CONSTRAINT dm01vch24lv95r1_lfp1symbol_lfp1symbol_von_fkey FOREIGN KEY ( lfp1symbol_von ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie1_lfp1 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung ADD CONSTRAINT dm01vch24lv95hfp1nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1 ADD CONSTRAINT dm01vch24lv95nktktgr1_hfp1_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1 ADD CONSTRAINT dm01vch24lv9nktktgr1_hfp1_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 5000.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1 ADD CONSTRAINT dm01vch24lv9nktktgr1_hfp1_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1 ADD CONSTRAINT dm01vch24lv9nktktgr1_hfp1_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1 ADD CONSTRAINT dm01vch24lv95nktktgr1_hfp1_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1pos ADD CONSTRAINT dm01vch24lv95ktgr1_hfp1pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1pos ADD CONSTRAINT dm01vch24lv9ktgr1_hfp1pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie1_hfp1pos ADD CONSTRAINT dm01vch24lv95ktgr1_hfp1pos_hfp1pos_von_fkey FOREIGN KEY ( hfp1pos_von ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie1_hfp1 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung ADD CONSTRAINT dm01vch24lv95lfp2nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2 ADD CONSTRAINT dm01vch24lv95nktktgr2_lfp2_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2 ADD CONSTRAINT dm01vch24lv9nktktgr2_lfp2_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 5000.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2 ADD CONSTRAINT dm01vch24lv9nktktgr2_lfp2_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2 ADD CONSTRAINT dm01vch24lv9nktktgr2_lfp2_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2 ADD CONSTRAINT dm01vch24lv95nktktgr2_lfp2_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2pos ADD CONSTRAINT dm01vch24lv95ktgr2_lfp2pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2pos ADD CONSTRAINT dm01vch24lv9ktgr2_lfp2pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2pos ADD CONSTRAINT dm01vch24lv95ktgr2_lfp2pos_lfp2pos_von_fkey FOREIGN KEY ( lfp2pos_von ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie2_lfp2 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2symbol ADD CONSTRAINT dm01vch24lv95r2_lfp2symbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2symbol ADD CONSTRAINT dm01vch24lv9r2_lfp2symbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_lfp2symbol ADD CONSTRAINT dm01vch24lv95r2_lfp2symbol_lfp2symbol_von_fkey FOREIGN KEY ( lfp2symbol_von ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie2_lfp2 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung ADD CONSTRAINT dm01vch24lv95hfp2nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2 ADD CONSTRAINT dm01vch24lv95nktktgr2_hfp2_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2 ADD CONSTRAINT dm01vch24lv9nktktgr2_hfp2_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 5000.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2 ADD CONSTRAINT dm01vch24lv9nktktgr2_hfp2_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2 ADD CONSTRAINT dm01vch24lv9nktktgr2_hfp2_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2 ADD CONSTRAINT dm01vch24lv95nktktgr2_hfp2_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2pos ADD CONSTRAINT dm01vch24lv95ktgr2_hfp2pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2pos ADD CONSTRAINT dm01vch24lv9ktgr2_hfp2pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie2_hfp2pos ADD CONSTRAINT dm01vch24lv95ktgr2_hfp2pos_hfp2pos_von_fkey FOREIGN KEY ( hfp2pos_von ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie2_hfp2 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung ADD CONSTRAINT dm01vch24lv95lfp3nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3 ADD CONSTRAINT dm01vch24lv95nktktgr3_lfp3_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3 ADD CONSTRAINT dm01vch24lv9nktktgr3_lfp3_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 5000.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3 ADD CONSTRAINT dm01vch24lv9nktktgr3_lfp3_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3 ADD CONSTRAINT dm01vch24lv9nktktgr3_lfp3_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3 ADD CONSTRAINT dm01vch24lv95nktktgr3_lfp3_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3pos ADD CONSTRAINT dm01vch24lv95ktgr3_lfp3pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3pos ADD CONSTRAINT dm01vch24lv9ktgr3_lfp3pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3pos ADD CONSTRAINT dm01vch24lv95ktgr3_lfp3pos_lfp3pos_von_fkey FOREIGN KEY ( lfp3pos_von ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie3_lfp3 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3symbol ADD CONSTRAINT dm01vch24lv95r3_lfp3symbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3symbol ADD CONSTRAINT dm01vch24lv9r3_lfp3symbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_lfp3symbol ADD CONSTRAINT dm01vch24lv95r3_lfp3symbol_lfp3symbol_von_fkey FOREIGN KEY ( lfp3symbol_von ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie3_lfp3 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung ADD CONSTRAINT dm01vch24lv95hfp3nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3 ADD CONSTRAINT dm01vch24lv95nktktgr3_hfp3_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3 ADD CONSTRAINT dm01vch24lv9nktktgr3_hfp3_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 5000.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3 ADD CONSTRAINT dm01vch24lv9nktktgr3_hfp3_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3 ADD CONSTRAINT dm01vch24lv9nktktgr3_hfp3_hoehegen_check CHECK( hoehegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3 ADD CONSTRAINT dm01vch24lv95nktktgr3_hfp3_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3pos ADD CONSTRAINT dm01vch24lv95ktgr3_hfp3pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3pos ADD CONSTRAINT dm01vch24lv9ktgr3_hfp3pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dfixpunktekatgrie3_hfp3pos ADD CONSTRAINT dm01vch24lv95ktgr3_hfp3pos_hfp3pos_von_fkey FOREIGN KEY ( hfp3pos_von ) REFERENCES live.dm01vch24lv95dfixpunktekatgrie3_hfp3 DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_bbnachfuehrung ADD CONSTRAINT dm01vch24lv95g_bbnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projboflaeche ADD CONSTRAINT dm01vch24lv95kng_prjbflche_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projboflaeche ADD CONSTRAINT dm01vch24lv95kng_prjbflche_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dbodenbedeckung_bbnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projgebaeudenummer ADD CONSTRAINT dm01vch24lv95g_prjgbdnmmer_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projgebaeudenummer ADD CONSTRAINT dm01vch24lv9g_prjgbdnmmer_gwr_egid_check CHECK( gwr_egid BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projgebaeudenummer ADD CONSTRAINT dm01vch24lv95g_prjgbdnmmer_projgebaeudenummer_von_fkey FOREIGN KEY ( projgebaeudenummer_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_projboflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos ADD CONSTRAINT dm01vch24lv95prjgbdnmmrpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos ADD CONSTRAINT dm01vch24lv9prjgbdnmmrpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos ADD CONSTRAINT dm01vch24lv95prjgbdnmmrpos_projgebaeudenummerpos_von_fkey FOREIGN KEY ( projgebaeudenummerpos_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_projgebaeudenummer DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projobjektname ADD CONSTRAINT dm01vch24lv95g_prjbjktname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projobjektname ADD CONSTRAINT dm01vch24lv95g_prjbjktname_projobjektname_von_fkey FOREIGN KEY ( projobjektname_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_projboflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projobjektnamepos ADD CONSTRAINT dm01vch24lv95_prjbjktnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projobjektnamepos ADD CONSTRAINT dm01vch24lv9_prjbjktnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projobjektnamepos ADD CONSTRAINT dm01vch24lv95_prjbjktnmpos_projobjektnamepos_von_fkey FOREIGN KEY ( projobjektnamepos_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_projobjektname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projboflaechesymbol ADD CONSTRAINT dm01vch24lv95rjbflchsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projboflaechesymbol ADD CONSTRAINT dm01vch24lv9rjbflchsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_projboflaechesymbol ADD CONSTRAINT dm01vch24lv95rjbflchsymbol_projboflaechesymbol_von_fkey FOREIGN KEY ( projboflaechesymbol_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_projboflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_boflaeche ADD CONSTRAINT dm01vch24lv95bdckng_bflche_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_boflaeche ADD CONSTRAINT dm01vch24lv95bdckng_bflche_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dbodenbedeckung_bbnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_gebaeudenummer ADD CONSTRAINT dm01vch24lv95ckng_gbdnmmer_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_gebaeudenummer ADD CONSTRAINT dm01vch24lv9ckng_gbdnmmer_gwr_egid_check CHECK( gwr_egid BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_gebaeudenummer ADD CONSTRAINT dm01vch24lv95ckng_gbdnmmer_gebaeudenummer_von_fkey FOREIGN KEY ( gebaeudenummer_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_boflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_gebaeudenummerpos ADD CONSTRAINT dm01vch24lv95ng_gbdnmmrpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_gebaeudenummerpos ADD CONSTRAINT dm01vch24lv9ng_gbdnmmrpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_gebaeudenummerpos ADD CONSTRAINT dm01vch24lv95ng_gbdnmmrpos_gebaeudenummerpos_von_fkey FOREIGN KEY ( gebaeudenummerpos_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_gebaeudenummer DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_objektname ADD CONSTRAINT dm01vch24lv95ckng_bjktname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_objektname ADD CONSTRAINT dm01vch24lv95ckng_bjktname_objektname_von_fkey FOREIGN KEY ( objektname_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_boflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_objektnamepos ADD CONSTRAINT dm01vch24lv95kng_bjktnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_objektnamepos ADD CONSTRAINT dm01vch24lv9kng_bjktnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_objektnamepos ADD CONSTRAINT dm01vch24lv95kng_bjktnmpos_objektnamepos_von_fkey FOREIGN KEY ( objektnamepos_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_objektname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_boflaechesymbol ADD CONSTRAINT dm01vch24lv95g_bflchsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_boflaechesymbol ADD CONSTRAINT dm01vch24lv9g_bflchsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_boflaechesymbol ADD CONSTRAINT dm01vch24lv95g_bflchsymbol_boflaechesymbol_von_fkey FOREIGN KEY ( boflaechesymbol_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_boflaeche DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_einzelpunkt ADD CONSTRAINT dm01vch24lv95dckng_nzlpnkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_einzelpunkt ADD CONSTRAINT dm01vch24lv9dckng_nzlpnkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_einzelpunkt ADD CONSTRAINT dm01vch24lv95dckng_nzlpnkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dbodenbedeckung_bbnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_einzelpunktpos ADD CONSTRAINT dm01vch24lv95ng_nzlpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_einzelpunktpos ADD CONSTRAINT dm01vch24lv9ng_nzlpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dbodenbedeckung_einzelpunktpos ADD CONSTRAINT dm01vch24lv95ng_nzlpnktpos_einzelpunktpos_von_fkey FOREIGN KEY ( einzelpunktpos_von ) REFERENCES live.dm01vch24lv95dbodenbedeckung_einzelpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_eonachfuehrung ADD CONSTRAINT dm01vch24lv95jkt_nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_einzelobjekt ADD CONSTRAINT dm01vch24lv95bjkt_nzlbjekt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_einzelobjekt ADD CONSTRAINT dm01vch24lv95bjkt_nzlbjekt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95deinzelobjekte_eonachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_flaechenelement ADD CONSTRAINT dm01vch24lv95kt_flchnlment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_flaechenelement ADD CONSTRAINT dm01vch24lv95kt_flchnlment_flaechenelement_von_fkey FOREIGN KEY ( flaechenelement_von ) REFERENCES live.dm01vch24lv95deinzelobjekte_einzelobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_flaechenelementsymbol ADD CONSTRAINT dm01vch24lv95chnlmntsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_flaechenelementsymbol ADD CONSTRAINT dm01vch24lv9chnlmntsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95deinzelobjekte_flaechenelementsymbol ADD CONSTRAINT dm01vch24lv95chnlmntsymbol_flaechenelementsymbol_von_fkey FOREIGN KEY ( flaechenelementsymbol_von ) REFERENCES live.dm01vch24lv95deinzelobjekte_flaechenelement DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_linienelement ADD CONSTRAINT dm01vch24lv95bjkt_lnnlment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_linienelement ADD CONSTRAINT dm01vch24lv95bjkt_lnnlment_linienelement_von_fkey FOREIGN KEY ( linienelement_von ) REFERENCES live.dm01vch24lv95deinzelobjekte_einzelobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_linienelementsymbol ADD CONSTRAINT dm01vch24lv95lnnlmntsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_linienelementsymbol ADD CONSTRAINT dm01vch24lv9lnnlmntsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95deinzelobjekte_linienelementsymbol ADD CONSTRAINT dm01vch24lv95lnnlmntsymbol_linienelementsymbol_von_fkey FOREIGN KEY ( linienelementsymbol_von ) REFERENCES live.dm01vch24lv95deinzelobjekte_linienelement DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_punktelement ADD CONSTRAINT dm01vch24lv95jkt_pnktlment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_punktelement ADD CONSTRAINT dm01vch24lv9jkt_pnktlment_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95deinzelobjekte_punktelement ADD CONSTRAINT dm01vch24lv95jkt_pnktlment_punktelement_von_fkey FOREIGN KEY ( punktelement_von ) REFERENCES live.dm01vch24lv95deinzelobjekte_einzelobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektname ADD CONSTRAINT dm01vch24lv95bjkt_bjktname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektname ADD CONSTRAINT dm01vch24lv95bjkt_bjktname_objektname_von_fkey FOREIGN KEY ( objektname_von ) REFERENCES live.dm01vch24lv95deinzelobjekte_einzelobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektnamepos ADD CONSTRAINT dm01vch24lv95jkt_bjktnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektnamepos ADD CONSTRAINT dm01vch24lv9jkt_bjktnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektnamepos ADD CONSTRAINT dm01vch24lv95jkt_bjktnmpos_objektnamepos_von_fkey FOREIGN KEY ( objektnamepos_von ) REFERENCES live.dm01vch24lv95deinzelobjekte_objektname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektnummer ADD CONSTRAINT dm01vch24lv95jkt_bjktnmmer_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektnummer ADD CONSTRAINT dm01vch24lv9jkt_bjktnmmer_gwr_egid_check CHECK( gwr_egid BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektnummer ADD CONSTRAINT dm01vch24lv95jkt_bjktnmmer_objektnummer_von_fkey FOREIGN KEY ( objektnummer_von ) REFERENCES live.dm01vch24lv95deinzelobjekte_einzelobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektnummerpos ADD CONSTRAINT dm01vch24lv95t_bjktnmmrpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektnummerpos ADD CONSTRAINT dm01vch24lv9t_bjktnmmrpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95deinzelobjekte_objektnummerpos ADD CONSTRAINT dm01vch24lv95t_bjktnmmrpos_objektnummerpos_von_fkey FOREIGN KEY ( objektnummerpos_von ) REFERENCES live.dm01vch24lv95deinzelobjekte_objektnummer DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_einzelpunkt ADD CONSTRAINT dm01vch24lv95lbjkt_nzlpnkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_einzelpunkt ADD CONSTRAINT dm01vch24lv9lbjkt_nzlpnkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95deinzelobjekte_einzelpunkt ADD CONSTRAINT dm01vch24lv95lbjkt_nzlpnkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95deinzelobjekte_eonachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_einzelpunktpos ADD CONSTRAINT dm01vch24lv95kt_nzlpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95deinzelobjekte_einzelpunktpos ADD CONSTRAINT dm01vch24lv9kt_nzlpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95deinzelobjekte_einzelpunktpos ADD CONSTRAINT dm01vch24lv95kt_nzlpnktpos_einzelpunktpos_von_fkey FOREIGN KEY ( einzelpunktpos_von ) REFERENCES live.dm01vch24lv95deinzelobjekte_einzelpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dhoehen_honachfuehrung ADD CONSTRAINT dm01vch24lv95hn_hnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dhoehen_hoehenpunkt ADD CONSTRAINT dm01vch24lv95dhohn_hhnpnkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dhoehen_hoehenpunkt ADD CONSTRAINT dm01vch24lv95dhohn_hhnpnkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dhoehen_honachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dhoehen_hoehenpunktpos ADD CONSTRAINT dm01vch24lv95hn_hhnpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dhoehen_hoehenpunktpos ADD CONSTRAINT dm01vch24lv9hn_hhnpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dhoehen_hoehenpunktpos ADD CONSTRAINT dm01vch24lv95hn_hhnpnktpos_hoehenpunktpos_von_fkey FOREIGN KEY ( hoehenpunktpos_von ) REFERENCES live.dm01vch24lv95dhoehen_hoehenpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dhoehen_gelaendekante ADD CONSTRAINT dm01vch24lv95dhhn_glndknte_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dhoehen_gelaendekante ADD CONSTRAINT dm01vch24lv95dhhn_glndknte_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dhoehen_honachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dhoehen_aussparung ADD CONSTRAINT dm01vch24lv95dhohn_ssprung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dhoehen_aussparung ADD CONSTRAINT dm01vch24lv95dhohn_ssprung_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dhoehen_honachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_nknachfuehrung ADD CONSTRAINT dm01vch24lv95r_nknchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_flurname ADD CONSTRAINT dm01vch24lv95nkltr_flrname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_flurname ADD CONSTRAINT dm01vch24lv95nkltr_flrname_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dnomenklatur_nknachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_flurnamepos ADD CONSTRAINT dm01vch24lv95kltr_flrnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_flurnamepos ADD CONSTRAINT dm01vch24lv9kltr_flrnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dnomenklatur_flurnamepos ADD CONSTRAINT dm01vch24lv95kltr_flrnmpos_flurnamepos_von_fkey FOREIGN KEY ( flurnamepos_von ) REFERENCES live.dm01vch24lv95dnomenklatur_flurname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_ortsname ADD CONSTRAINT dm01vch24lv95nkltr_rtsname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_ortsname ADD CONSTRAINT dm01vch24lv95nkltr_rtsname_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dnomenklatur_nknachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_ortsnamepos ADD CONSTRAINT dm01vch24lv95kltr_rtsnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_ortsnamepos ADD CONSTRAINT dm01vch24lv9kltr_rtsnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dnomenklatur_ortsnamepos ADD CONSTRAINT dm01vch24lv95kltr_rtsnmpos_ortsnamepos_von_fkey FOREIGN KEY ( ortsnamepos_von ) REFERENCES live.dm01vch24lv95dnomenklatur_ortsname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_gelaendename ADD CONSTRAINT dm01vch24lv95kltr_glndname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_gelaendename ADD CONSTRAINT dm01vch24lv95kltr_glndname_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dnomenklatur_nknachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_gelaendenamepos ADD CONSTRAINT dm01vch24lv95ltr_glndnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnomenklatur_gelaendenamepos ADD CONSTRAINT dm01vch24lv9ltr_glndnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dnomenklatur_gelaendenamepos ADD CONSTRAINT dm01vch24lv95ltr_glndnmpos_gelaendenamepos_von_fkey FOREIGN KEY ( gelaendenamepos_von ) REFERENCES live.dm01vch24lv95dnomenklatur_gelaendename DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_lsnachfuehrung ADD CONSTRAINT dm01vch24lv95n_lsnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_grenzpunkt ADD CONSTRAINT dm01vch24lv95hftn_grnzpnkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_grenzpunkt ADD CONSTRAINT dm01vch24lv9hftn_grnzpnkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dliegenschaften_grenzpunkt ADD CONSTRAINT dm01vch24lv95hftn_grnzpnkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dliegenschaften_lsnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_grenzpunktpos ADD CONSTRAINT dm01vch24lv95n_grnzpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_grenzpunktpos ADD CONSTRAINT dm01vch24lv9n_grnzpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dliegenschaften_grenzpunktpos ADD CONSTRAINT dm01vch24lv95n_grnzpnktpos_grenzpunktpos_von_fkey FOREIGN KEY ( grenzpunktpos_von ) REFERENCES live.dm01vch24lv95dliegenschaften_grenzpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_grenzpunktsymbol ADD CONSTRAINT dm01vch24lv95rnzpnktsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_grenzpunktsymbol ADD CONSTRAINT dm01vch24lv9rnzpnktsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dliegenschaften_grenzpunktsymbol ADD CONSTRAINT dm01vch24lv95rnzpnktsymbol_grenzpunktsymbol_von_fkey FOREIGN KEY ( grenzpunktsymbol_von ) REFERENCES live.dm01vch24lv95dliegenschaften_grenzpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_projgrundstueck ADD CONSTRAINT dm01vch24lv95_prjgrndsteck_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_projgrundstueck ADD CONSTRAINT dm01vch24lv9_prjgrndsteck_gesamteflaechenmass_check CHECK( gesamteflaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dliegenschaften_projgrundstueck ADD CONSTRAINT dm01vch24lv95_prjgrndsteck_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dliegenschaften_lsnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_projgrundstueckpos ADD CONSTRAINT dm01vch24lv95rjgrndstckpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_projgrundstueckpos ADD CONSTRAINT dm01vch24lv9rjgrndstckpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dliegenschaften_projgrundstueckpos ADD CONSTRAINT dm01vch24lv95rjgrndstckpos_projgrundstueckpos_von_fkey FOREIGN KEY ( projgrundstueckpos_von ) REFERENCES live.dm01vch24lv95dliegenschaften_projgrundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_projliegenschaft ADD CONSTRAINT dm01vch24lv95_prjlgnschaft_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_projliegenschaft ADD CONSTRAINT dm01vch24lv9_prjlgnschaft_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dliegenschaften_projliegenschaft ADD CONSTRAINT dm01vch24lv95_prjlgnschaft_projliegenschaft_von_fkey FOREIGN KEY ( projliegenschaft_von ) REFERENCES live.dm01vch24lv95dliegenschaften_projgrundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_projselbstrecht ADD CONSTRAINT dm01vch24lv95_prjslbstrcht_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_projselbstrecht ADD CONSTRAINT dm01vch24lv9_prjslbstrcht_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dliegenschaften_projselbstrecht ADD CONSTRAINT dm01vch24lv95_prjslbstrcht_projselbstrecht_von_fkey FOREIGN KEY ( projselbstrecht_von ) REFERENCES live.dm01vch24lv95dliegenschaften_projgrundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_projbergwerk ADD CONSTRAINT dm01vch24lv95tn_prjbrgwerk_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_projbergwerk ADD CONSTRAINT dm01vch24lv9tn_prjbrgwerk_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dliegenschaften_projbergwerk ADD CONSTRAINT dm01vch24lv95tn_prjbrgwerk_projbergwerk_von_fkey FOREIGN KEY ( projbergwerk_von ) REFERENCES live.dm01vch24lv95dliegenschaften_projgrundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_grundstueck ADD CONSTRAINT dm01vch24lv95ftn_grndsteck_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_grundstueck ADD CONSTRAINT dm01vch24lv9ftn_grndsteck_gesamteflaechenmass_check CHECK( gesamteflaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dliegenschaften_grundstueck ADD CONSTRAINT dm01vch24lv95ftn_grndsteck_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dliegenschaften_lsnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_grundstueckpos ADD CONSTRAINT dm01vch24lv95n_grndstckpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_grundstueckpos ADD CONSTRAINT dm01vch24lv9n_grndstckpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dliegenschaften_grundstueckpos ADD CONSTRAINT dm01vch24lv95n_grndstckpos_grundstueckpos_von_fkey FOREIGN KEY ( grundstueckpos_von ) REFERENCES live.dm01vch24lv95dliegenschaften_grundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_liegenschaft ADD CONSTRAINT dm01vch24lv95ftn_lgnschaft_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_liegenschaft ADD CONSTRAINT dm01vch24lv9ftn_lgnschaft_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dliegenschaften_liegenschaft ADD CONSTRAINT dm01vch24lv95ftn_lgnschaft_liegenschaft_von_fkey FOREIGN KEY ( liegenschaft_von ) REFERENCES live.dm01vch24lv95dliegenschaften_grundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_selbstrecht ADD CONSTRAINT dm01vch24lv95ftn_slbstrcht_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_selbstrecht ADD CONSTRAINT dm01vch24lv9ftn_slbstrcht_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dliegenschaften_selbstrecht ADD CONSTRAINT dm01vch24lv95ftn_slbstrcht_selbstrecht_von_fkey FOREIGN KEY ( selbstrecht_von ) REFERENCES live.dm01vch24lv95dliegenschaften_grundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_bergwerk ADD CONSTRAINT dm01vch24lv95chftn_brgwerk_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dliegenschaften_bergwerk ADD CONSTRAINT dm01vch24lv9chftn_brgwerk_flaechenmass_check CHECK( flaechenmass BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dliegenschaften_bergwerk ADD CONSTRAINT dm01vch24lv95chftn_brgwerk_bergwerk_von_fkey FOREIGN KEY ( bergwerk_von ) REFERENCES live.dm01vch24lv95dliegenschaften_grundstueck DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_rlnachfuehrung ADD CONSTRAINT dm01vch24lv95n_rlnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_leitungsobjekt ADD CONSTRAINT dm01vch24lv95gn_ltngsbjekt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_leitungsobjekt ADD CONSTRAINT dm01vch24lv95gn_ltngsbjekt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95drohrleitungen_rlnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_leitungsobjektpos ADD CONSTRAINT dm01vch24lv95_ltngsbjktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_leitungsobjektpos ADD CONSTRAINT dm01vch24lv9_ltngsbjktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95drohrleitungen_leitungsobjektpos ADD CONSTRAINT dm01vch24lv95_ltngsbjktpos_leitungsobjektpos_von_fkey FOREIGN KEY ( leitungsobjektpos_von ) REFERENCES live.dm01vch24lv95drohrleitungen_leitungsobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_flaechenelement ADD CONSTRAINT dm01vch24lv95gn_flchnlment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_flaechenelement ADD CONSTRAINT dm01vch24lv95gn_flchnlment_flaechenelement_von_fkey FOREIGN KEY ( flaechenelement_von ) REFERENCES live.dm01vch24lv95drohrleitungen_leitungsobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_linienelement ADD CONSTRAINT dm01vch24lv95tngn_lnnlment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_linienelement ADD CONSTRAINT dm01vch24lv95tngn_lnnlment_linienelement_von_fkey FOREIGN KEY ( linienelement_von ) REFERENCES live.dm01vch24lv95drohrleitungen_leitungsobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_punktelement ADD CONSTRAINT dm01vch24lv95ngn_pnktlment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_punktelement ADD CONSTRAINT dm01vch24lv9ngn_pnktlment_hoehegeom_check CHECK( hoehegeom BETWEEN -200.0 AND 5000.0);
ALTER TABLE live.dm01vch24lv95drohrleitungen_punktelement ADD CONSTRAINT dm01vch24lv9ngn_pnktlment_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95drohrleitungen_punktelement ADD CONSTRAINT dm01vch24lv95ngn_pnktlment_punktelement_von_fkey FOREIGN KEY ( punktelement_von ) REFERENCES live.dm01vch24lv95drohrleitungen_leitungsobjekt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_signalpunkt ADD CONSTRAINT dm01vch24lv95tngn_sgnlpnkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_signalpunkt ADD CONSTRAINT dm01vch24lv95tngn_sgnlpnkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95drohrleitungen_rlnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_signalpunktpos ADD CONSTRAINT dm01vch24lv95n_sgnlpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_signalpunktpos ADD CONSTRAINT dm01vch24lv9n_sgnlpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95drohrleitungen_signalpunktpos ADD CONSTRAINT dm01vch24lv95n_sgnlpnktpos_signalpunktpos_von_fkey FOREIGN KEY ( signalpunktpos_von ) REFERENCES live.dm01vch24lv95drohrleitungen_signalpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_einzelpunkt ADD CONSTRAINT dm01vch24lv95ltngn_nzlpnkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_einzelpunkt ADD CONSTRAINT dm01vch24lv9ltngn_nzlpnkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95drohrleitungen_einzelpunkt ADD CONSTRAINT dm01vch24lv95ltngn_nzlpnkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95drohrleitungen_rlnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_einzelpunktpos ADD CONSTRAINT dm01vch24lv95gn_nzlpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drohrleitungen_einzelpunktpos ADD CONSTRAINT dm01vch24lv9gn_nzlpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95drohrleitungen_einzelpunktpos ADD CONSTRAINT dm01vch24lv95gn_nzlpnktpos_einzelpunktpos_von_fkey FOREIGN KEY ( einzelpunktpos_von ) REFERENCES live.dm01vch24lv95drohrleitungen_einzelpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereich ADD CONSTRAINT dm01vch24lv95nmmrrngsbrich_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnummerierngsbrche_nbgeometrie ADD CONSTRAINT dm01vch24lv95brch_nbgmtrie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnummerierngsbrche_nbgeometrie ADD CONSTRAINT dm01vch24lv95brch_nbgmtrie_nbgeometrie_von_fkey FOREIGN KEY ( nbgeometrie_von ) REFERENCES live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereich DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT dm01vch24lv95mrrngsbrchpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT dm01vch24lv9mrrngsbrchpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos ADD CONSTRAINT dm01vch24lv95mrrngsbrchpos_nummerierungsbereichps_von_fkey FOREIGN KEY ( nummerierungsbereichpos_von ) REFERENCES live.dm01vch24lv95dnummerierngsbrche_nummerierungsbereich DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_gemnachfuehrung ADD CONSTRAINT dm01vch24lv95n_gmnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt ADD CONSTRAINT dm01vch24lv95_hhtsgrnzpnkt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt ADD CONSTRAINT dm01vch24lv9_hhtsgrnzpnkt_lagegen_check CHECK( lagegen BETWEEN 0.0 AND 700.0);
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt ADD CONSTRAINT dm01vch24lv95_hhtsgrnzpnkt_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dgemeindegrenzen_gemnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos ADD CONSTRAINT dm01vch24lv95tsgrnzpnktpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos ADD CONSTRAINT dm01vch24lv9tsgrnzpnktpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos ADD CONSTRAINT dm01vch24lv95tsgrnzpnktpos_hoheitsgrenzpunktpos_von_fkey FOREIGN KEY ( hoheitsgrenzpunktpos_von ) REFERENCES live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol ADD CONSTRAINT dm01vch24lv95rnzpnktsymbol_T_basket_fkey1 FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol ADD CONSTRAINT dm01vch24lv9rnzpnktsymbol_ori_check1 CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol ADD CONSTRAINT dm01vch24lv95rnzpnktsymbol_hoheitsgrenzpunktsymbl_von_fkey FOREIGN KEY ( hoheitsgrenzpunktsymbol_von ) REFERENCES live.dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_gemeinde ADD CONSTRAINT dm01vch24lv95ndgrnzn_gmnde_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_gemeinde ADD CONSTRAINT dm01vch24lv9ndgrnzn_gmnde_bfsnr_check CHECK( bfsnr BETWEEN 1 AND 9999);
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_projgemeindegrenze ADD CONSTRAINT dm01vch24lv95_prjgmndgrnze_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_projgemeindegrenze ADD CONSTRAINT dm01vch24lv95_prjgmndgrnze_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dgemeindegrenzen_gemnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_projgemeindegrenze ADD CONSTRAINT dm01vch24lv95_prjgmndgrnze_projgemeindegrenze_von_fkey FOREIGN KEY ( projgemeindegrenze_von ) REFERENCES live.dm01vch24lv95dgemeindegrenzen_gemeinde DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_gemeindegrenze ADD CONSTRAINT dm01vch24lv95nzn_gmndgrnze_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_gemeindegrenze ADD CONSTRAINT dm01vch24lv95nzn_gmndgrnze_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dgemeindegrenzen_gemnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgemeindegrenzen_gemeindegrenze ADD CONSTRAINT dm01vch24lv95nzn_gmndgrnze_gemeindegrenze_von_fkey FOREIGN KEY ( gemeindegrenze_von ) REFERENCES live.dm01vch24lv95dgemeindegrenzen_gemeinde DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt ADD CONSTRAINT dm01vch24lv95sgrnzbschnitt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt ADD CONSTRAINT dm01vch24lv95sgrnzbschnitt_T_basket_fkey1 FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt ADD CONSTRAINT dm01vch24lv95sgrnzbschnitt_T_basket_fkey2 FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplaneinteilungen_plan ADD CONSTRAINT dm01vch24lv95lnntlngn_plan_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplaneinteilungen_plangeometrie ADD CONSTRAINT dm01vch24lv95ngn_plngmtrie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplaneinteilungen_plangeometrie ADD CONSTRAINT dm01vch24lv95ngn_plngmtrie_plangeometrie_von_fkey FOREIGN KEY ( plangeometrie_von ) REFERENCES live.dm01vch24lv95dplaneinteilungen_plan DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplaneinteilungen_planpos ADD CONSTRAINT dm01vch24lv95ntlngn_plnpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplaneinteilungen_planpos ADD CONSTRAINT dm01vch24lv9ntlngn_plnpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dplaneinteilungen_planpos ADD CONSTRAINT dm01vch24lv95ntlngn_plnpos_planpos_von_fkey FOREIGN KEY ( planpos_von ) REFERENCES live.dm01vch24lv95dplaneinteilungen_plan DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dtseinteilung_toleranzstufe ADD CONSTRAINT dm01vch24lv95ng_tlrnzstufe_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dtseinteilung_toleranzstufepos ADD CONSTRAINT dm01vch24lv95g_tlrnzstfpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dtseinteilung_toleranzstufepos ADD CONSTRAINT dm01vch24lv9g_tlrnzstfpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dtseinteilung_toleranzstufepos ADD CONSTRAINT dm01vch24lv95g_tlrnzstfpos_toleranzstufepos_von_fkey FOREIGN KEY ( toleranzstufepos_von ) REFERENCES live.dm01vch24lv95dtseinteilung_toleranzstufe DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drutschgebiete_rutschung ADD CONSTRAINT dm01vch24lv95hgbt_rtschung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drutschgebiete_rutschungpos ADD CONSTRAINT dm01vch24lv95bt_rtschngpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95drutschgebiete_rutschungpos ADD CONSTRAINT dm01vch24lv9bt_rtschngpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95drutschgebiete_rutschungpos ADD CONSTRAINT dm01vch24lv95bt_rtschngpos_rutschungpos_von_fkey FOREIGN KEY ( rutschungpos_von ) REFERENCES live.dm01vch24lv95drutschgebiete_rutschung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_osnachfuehrung ADD CONSTRAINT dm01vch24lv95ft_snchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaftsverbund ADD CONSTRAINT dm01vch24lv95tschftsvrbund_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaftsverbundtext ADD CONSTRAINT dm01vch24lv95hftsvrbndtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaftsverbundtext ADD CONSTRAINT dm01vch24lv95hftsvrbndtext_ortschaftsverbundtext_von_fkey FOREIGN KEY ( ortschaftsverbundtext_von ) REFERENCES live.dm01vch24lv95dplzortschaft_ortschaftsverbund DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaft ADD CONSTRAINT dm01vch24lv95chft_rtschaft_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaft ADD CONSTRAINT dm01vch24lv95chft_rtschaft_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dplzortschaft_osnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaft ADD CONSTRAINT dm01vch24lv95chft_rtschaft_ortschaft_von_fkey FOREIGN KEY ( ortschaft_von ) REFERENCES live.dm01vch24lv95dplzortschaft_ortschaftsverbund DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaftsname ADD CONSTRAINT dm01vch24lv95_rtschftsname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaftsname ADD CONSTRAINT dm01vch24lv95_rtschftsname_ortschaftsname_von_fkey FOREIGN KEY ( ortschaftsname_von ) REFERENCES live.dm01vch24lv95dplzortschaft_ortschaft DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaftsname_pos ADD CONSTRAINT dm01vch24lv95tschftsnm_pos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaftsname_pos ADD CONSTRAINT dm01vch24lv9tschftsnm_pos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dplzortschaft_ortschaftsname_pos ADD CONSTRAINT dm01vch24lv95tschftsnm_pos_ortschaftsname_pos_von_fkey FOREIGN KEY ( ortschaftsname_pos_von ) REFERENCES live.dm01vch24lv95dplzortschaft_ortschaftsname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_plz6nachfuehrung ADD CONSTRAINT dm01vch24lv95plz6nchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_plz6 ADD CONSTRAINT dm01vch24lv95zrtschft_plz6_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_plz6 ADD CONSTRAINT dm01vch24lv9zrtschft_plz6_plz_check CHECK( plz BETWEEN 1000 AND 9999);
ALTER TABLE live.dm01vch24lv95dplzortschaft_plz6 ADD CONSTRAINT dm01vch24lv9zrtschft_plz6_zusatzziffern_check CHECK( zusatzziffern BETWEEN 0 AND 99);
ALTER TABLE live.dm01vch24lv95dplzortschaft_plz6 ADD CONSTRAINT dm01vch24lv95zrtschft_plz6_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dplzortschaft_plz6nachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplzortschaft_plz6 ADD CONSTRAINT dm01vch24lv95zrtschft_plz6_plz6_von_fkey FOREIGN KEY ( plz6_von ) REFERENCES live.dm01vch24lv95dplzortschaft_ortschaft DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebnachfuehrung ADD CONSTRAINT dm01vch24lv95n_gbnchfhrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisation ADD CONSTRAINT dm01vch24lv95rssn_lklstion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisation ADD CONSTRAINT dm01vch24lv95rssn_lklstion_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_gebnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisationsname ADD CONSTRAINT dm01vch24lv95n_lklstnsname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisationsname ADD CONSTRAINT dm01vch24lv95n_lklstnsname_benannte_fkey FOREIGN KEY ( benannte ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_lokalisation DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos ADD CONSTRAINT dm01vch24lv95_lklstnsnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos ADD CONSTRAINT dm01vch24lv9_lklstnsnmpos_anfindex_check CHECK( anfindex BETWEEN 1 AND 60);
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos ADD CONSTRAINT dm01vch24lv9_lklstnsnmpos_endindex_check CHECK( endindex BETWEEN 1 AND 60);
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos ADD CONSTRAINT dm01vch24lv9_lklstnsnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos ADD CONSTRAINT dm01vch24lv95_lklstnsnmpos_lokalisationsnamepos_von_fkey FOREIGN KEY ( lokalisationsnamepos_von ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_lokalisationsname DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_benanntesgebiet ADD CONSTRAINT dm01vch24lv95n_bnnntsgbiet_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_benanntesgebiet ADD CONSTRAINT dm01vch24lv95n_bnnntsgbiet_benanntesgebiet_von_fkey FOREIGN KEY ( benanntesgebiet_von ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_lokalisation DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_strassenstueck ADD CONSTRAINT dm01vch24lv95n_strssnsteck_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_strassenstueck ADD CONSTRAINT dm01vch24lv9n_strssnsteck_ordnung_check CHECK( ordnung BETWEEN 1 AND 999);
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_strassenstueck ADD CONSTRAINT dm01vch24lv95n_strssnsteck_strassenstueck_von_fkey FOREIGN KEY ( strassenstueck_von ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_lokalisation DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang ADD CONSTRAINT dm01vch24lv95rssn_gbdngang_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang ADD CONSTRAINT dm01vch24lv9rssn_gbdngang_hoehenlage_check CHECK( hoehenlage BETWEEN -99 AND 99);
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang ADD CONSTRAINT dm01vch24lv9rssn_gbdngang_gwr_egid_check CHECK( gwr_egid BETWEEN 1 AND 999999999);
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang ADD CONSTRAINT dm01vch24lv9rssn_gbdngang_gwr_edid_check CHECK( gwr_edid BETWEEN 0 AND 99);
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang ADD CONSTRAINT dm01vch24lv95rssn_gbdngang_entstehung_fkey FOREIGN KEY ( entstehung ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_gebnachfuehrung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang ADD CONSTRAINT dm01vch24lv95rssn_gbdngang_gebaeudeeingang_von_fkey FOREIGN KEY ( gebaeudeeingang_von ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_lokalisation DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_hausnummerpos ADD CONSTRAINT dm01vch24lv95ssn_hsnmmrpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_hausnummerpos ADD CONSTRAINT dm01vch24lv9ssn_hsnmmrpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_hausnummerpos ADD CONSTRAINT dm01vch24lv95ssn_hsnmmrpos_hausnummerpos_von_fkey FOREIGN KEY ( hausnummerpos_von ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudename ADD CONSTRAINT dm01vch24lv95drssn_gbdname_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudename ADD CONSTRAINT dm01vch24lv95drssn_gbdname_gebaeudename_von_fkey FOREIGN KEY ( gebaeudename_von ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudenamepos ADD CONSTRAINT dm01vch24lv95rssn_gbdnmpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudenamepos ADD CONSTRAINT dm01vch24lv9rssn_gbdnmpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudenamepos ADD CONSTRAINT dm01vch24lv95rssn_gbdnmpos_gebaeudenamepos_von_fkey FOREIGN KEY ( gebaeudenamepos_von ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_gebaeudename DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung ADD CONSTRAINT dm01vch24lv95_gbdbschrbung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung ADD CONSTRAINT dm01vch24lv95_gbdbschrbung_gebaeudebeschreibung_von_fkey FOREIGN KEY ( gebaeudebeschreibung_von ) REFERENCES live.dm01vch24lv95dgebaeudeadressen_gebaeudeeingang DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_planlayout ADD CONSTRAINT dm01vch24lv95rhmn_plnlyout_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_planlayout ADD CONSTRAINT dm01vch24lv9rhmn_plnlyout_massstabszahl_check CHECK( massstabszahl BETWEEN 1 AND 1000000);
ALTER TABLE live.dm01vch24lv95dplanrahmen_planlayout ADD CONSTRAINT dm01vch24lv9rhmn_plnlyout_e_azimut_check CHECK( e_azimut BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dplanrahmen_planlayout ADD CONSTRAINT dm01vch24lv9rhmn_plnlyout_uebersichtmassstabszahl_check CHECK( uebersichtmassstabszahl BETWEEN 1 AND 1000000);
ALTER TABLE live.dm01vch24lv95dplanrahmen_planbeschriftung ADD CONSTRAINT dm01vch24lv95plnbschrftung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_planbeschriftung ADD CONSTRAINT dm01vch24lv95plnbschrftung_planbeschriftung_von_fkey FOREIGN KEY ( planbeschriftung_von ) REFERENCES live.dm01vch24lv95dplanrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_planbeschriftungpos ADD CONSTRAINT dm01vch24lv95nbschrftngpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_planbeschriftungpos ADD CONSTRAINT dm01vch24lv9nbschrftngpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dplanrahmen_planbeschriftungpos ADD CONSTRAINT dm01vch24lv95nbschrftngpos_planbeschriftungpos_von_fkey FOREIGN KEY ( planbeschriftungpos_von ) REFERENCES live.dm01vch24lv95dplanrahmen_planbeschriftung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_koordinatenanschrift ADD CONSTRAINT dm01vch24lv95rdntnnschrift_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_koordinatenanschrift ADD CONSTRAINT dm01vch24lv95rdntnnschrift_koordinatenanschrift_von_fkey FOREIGN KEY ( koordinatenanschrift_von ) REFERENCES live.dm01vch24lv95dplanrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_koordinatenanschriftpos ADD CONSTRAINT dm01vch24lv95ntnnschrftpos_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_koordinatenanschriftpos ADD CONSTRAINT dm01vch24lv9ntnnschrftpos_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dplanrahmen_koordinatenanschriftpos ADD CONSTRAINT dm01vch24lv95ntnnschrftpos_koordinatenanschriftps_von_fkey FOREIGN KEY ( koordinatenanschriftpos_von ) REFERENCES live.dm01vch24lv95dplanrahmen_koordinatenanschrift DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_linienobjekt ADD CONSTRAINT dm01vch24lv95rhmn_lnnbjekt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_linienobjekt ADD CONSTRAINT dm01vch24lv95rhmn_lnnbjekt_linienobjekt_von_fkey FOREIGN KEY ( linienobjekt_von ) REFERENCES live.dm01vch24lv95dplanrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_koordinatenlinie ADD CONSTRAINT dm01vch24lv95mn_krdntnlnie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_koordinatenlinie ADD CONSTRAINT dm01vch24lv95mn_krdntnlnie_koordinatenlinie_von_fkey FOREIGN KEY ( koordinatenlinie_von ) REFERENCES live.dm01vch24lv95dplanrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_darstellungsflaeche ADD CONSTRAINT dm01vch24lv95rstllngsflche_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_darstellungsflaeche ADD CONSTRAINT dm01vch24lv95rstllngsflche_darstellungsflaeche_von_fkey FOREIGN KEY ( darstellungsflaeche_von ) REFERENCES live.dm01vch24lv95dplanrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_planlayoutsymbol ADD CONSTRAINT dm01vch24lv95_plnlytsymbol_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_planlayoutsymbol ADD CONSTRAINT dm01vch24lv9_plnlytsymbol_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dplanrahmen_planlayoutsymbol ADD CONSTRAINT dm01vch24lv95_plnlytsymbol_planlayoutsymbol_von_fkey FOREIGN KEY ( planlayoutsymbol_von ) REFERENCES live.dm01vch24lv95dplanrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_netzkreuz ADD CONSTRAINT dm01vch24lv95rhmn_ntzkreuz_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.dm01vch24lv95dplanrahmen_netzkreuz ADD CONSTRAINT dm01vch24lv9rhmn_ntzkreuz_ori_check CHECK( ori BETWEEN 0.0 AND 399.9);
ALTER TABLE live.dm01vch24lv95dplanrahmen_netzkreuz ADD CONSTRAINT dm01vch24lv95rhmn_ntzkreuz_netzkreuz_von_fkey FOREIGN KEY ( netzkreuz_von ) REFERENCES live.dm01vch24lv95dplanrahmen_planlayout DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES live.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON live.T_ILI2DB_DATASET (datasetName)
;
ALTER TABLE live.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_importrun_fkey FOREIGN KEY ( importrun ) REFERENCES live.T_ILI2DB_IMPORT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_basket_fkey FOREIGN KEY ( basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_iliversion_modelName_key ON live.T_ILI2DB_MODEL (iliversion,modelName)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_SqlName_ColOwner_key ON live.T_ILI2DB_ATTRNAME (SqlName,ColOwner)
;
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnameObjektname_von','dm01vch24lv95dbodenbedeckung_objektnameobjektname_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos','dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.TSEinteilung.Toleranzstufe','dm01vch24lv95dtseinteilung_toleranzstufe');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plan','dm01vch24lv95dplaneinteilungen_plan');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1SymbolLFP1Symbol_von','dm01vch24lv95dfixpunktekatgrie1_lfp1symbollfp1symbol_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Pos','dm01vch24lv95dfixpunktekatgrie1_hfp1pos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPosGebaeudenummerPos_von','dm01vch24lv95dbodenbedeckung_gebaeudenummerposgebdnmmrps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePosObjektnamePos_von','dm01vch24lv95dbodenbedeckung_objektnameposobjektnamepos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPos','dm01vch24lv95dbodenbedeckung_einzelpunktpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.Nummerierungsbereich','dm01vch24lv95dnummerierngsbrche_nummerierungsbereich');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlangeometriePlangeometrie_von','dm01vch24lv95dplaneinteilungen_plangeometrieplangeometri_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelobjektEntstehung','dm01vch24lv95deinzelobjekte_einzelobjektentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.Darstellungsflaeche','dm01vch24lv95dplanrahmen_darstellungsflaeche');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Landesgrenzen.Landesgrenzabschnitt','dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPosEinzelpunktPos_von','dm01vch24lv95drohrleitungen_einzelpunktposeinzelpunktpos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPos','dm01vch24lv95dliegenschaften_grenzpunktpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPosLeitungsobjektPos_von','dm01vch24lv95drohrleitungen_leitungsobjektposltngsbjktps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Entstehung','dm01vch24lv95dfixpunktekatgrie2_lfp2entstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktSymbol','dm01vch24lv95dliegenschaften_grenzpunktsymbol');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnameEntstehung','dm01vch24lv95dnomenklatur_flurnameentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPosSignalpunktPos_von','dm01vch24lv95drohrleitungen_signalpunktpossignalpunktpos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktEntstehung','dm01vch24lv95drohrleitungen_einzelpunktentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPosGrundstueckPos_von','dm01vch24lv95dliegenschaften_grundstueckposgrundstueckps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von','plzoch1lv95dplzortschaft_ortschftsvrbndtxtschftsvrbndtxt_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPosRutschungPos_von','dm01vch24lv95drutschgebiete_rutschungposrutschungpos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3','dm01vch24lv95dfixpunktekatgrie3_lfp3');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheSymbol','dm01vch24lv95dbodenbedeckung_boflaechesymbol');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Entstehung','dm01vch24lv95dfixpunktekatgrie3_lfp3entstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Gemeinde','dm01vch24lv95dgemeindegrenzen_gemeinde');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Linienelement','dm01vch24lv95drohrleitungen_linienelement');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.Netzkreuz','dm01vch24lv95dplanrahmen_netzkreuz');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6','dm01vch24lv95dplzortschaft_plz6');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2SymbolLFP2Symbol_von','dm01vch24lv95dfixpunktekatgrie2_lfp2symbollfp2symbol_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerProjGebaeudenummer_von','dm01vch24lv95dbodenbedeckung_projgebaeudenummrprjgbdnmmr_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPosGrenzpunktPos_von','dm01vch24lv95dliegenschaften_grenzpunktposgrenzpunktpos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjBergwerk','dm01vch24lv95dliegenschaften_projbergwerk');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePos','dm01vch24lv95dbodenbedeckung_projobjektnamepos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Hoehen.AussparungEntstehung','dm01vch24lv95dhoehen_aussparungentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeBeschreibungGebaeudeBeschreibung_von','dm01vch24lv95dgebaeudeadressen_gebaedbschrbnggbdbschrbng_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnameObjektname_von','dm01vch24lv95deinzelobjekte_objektnameobjektname_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPos','dm01vch24lv95dhoehen_hoehenpunktpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeName','dm01vch24lv95dgebaeudeadressen_gebaeudename');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktEntstehung','dm01vch24lv95dhoehen_hoehenpunktentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePos','dm01vch24lv95dgebaeudeadressen_gebaeudenamepos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPosProjGrundstueckPos_von','dm01vch24lv95dliegenschaften_projgrndstckpsprjgrndstckps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPos','dm01vch24lv95dliegenschaften_grundstueckpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Hoehen.HONachfuehrung','dm01vch24lv95dhoehen_honachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.BergwerkBergwerk_von','dm01vch24lv95dliegenschaften_bergwerkbergwerk_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPos','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsName','dm01vch24lv95dgebaeudeadressen_lokalisationsname');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GemeindegrenzeGemeindegrenze_von','dm01vch24lv95dgemeindegrenzen_gemeindegrenzegemeindegrnz_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.Linienobjekt','dm01vch24lv95dplanrahmen_linienobjekt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenLinieKoordinatenLinie_von','dm01vch24lv95dplanrahmen_koordinatenliniekoordinatenlini_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnameEntstehung','dm01vch24lv95dnomenklatur_ortsnameentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPos','dm01vch24lv95dplanrahmen_planbeschriftungpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Leitungsobjekt','dm01vch24lv95drohrleitungen_leitungsobjekt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerGebaeudenummer_von','dm01vch24lv95dbodenbedeckung_gebaeudenummergebaeudenummr_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenzeProjGemeindegrenze_von','dm01vch24lv95dgemeindegrenzen_projgemeindgrnzprjgmndgrnz_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbundText','dm01vch24lv95dplzortschaft_ortschaftsverbundtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPos','dm01vch24lv95dbodenbedeckung_gebaeudenummerpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktEntstehung','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.BenanntesGebiet','dm01vch24lv95dgebaeudeadressen_benanntesgebiet');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPos','dm01vch24lv95drohrleitungen_leitungsobjektpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbund','plzoch1lv95dplzortschaft_ortschaftsverbund');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPosEinzelpunktPos_von','dm01vch24lv95deinzelobjekte_einzelpunktposeinzelpunktpos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck','dm01vch24lv95dliegenschaften_projgrundstueck');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPos','dm01vch24lv95drutschgebiete_rutschungpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.SelbstRecht','dm01vch24lv95dliegenschaften_selbstrecht');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Hoehen.Gelaendekante','dm01vch24lv95dhoehen_gelaendekante');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPos','dm01vch24lv95dplanrahmen_koordinatenanschriftpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheSymbolProjBoFlaecheSymbol_von','dm01vch24lv95dbodenbedeckung_projbflchsymblprjbflchsymbl_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPos','dm01vch24lv95drohrleitungen_einzelpunktpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von','dm01vch24lv95dplzortschaft_ortschaftsnameortschaftsname_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheSymbol','dm01vch24lv95dbodenbedeckung_projboflaechesymbol');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Punktelement','dm01vch24lv95deinzelobjekte_punktelement');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheEntstehung','dm01vch24lv95dbodenbedeckung_projboflaecheentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von','plzoch1lv95dplzortschaft_ortschaftsname_posrtschftsnm_ps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePosToleranzstufePos_von','dm01vch24lv95dtseinteilung_toleranzstufepostoleranzstfps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePosGebaeudeNamePos_von','dm01vch24lv95dgebaeudeadressen_gebaeudenameposgebaednmps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaftProjLiegenschaft_von','dm01vch24lv95dliegenschaften_projliegenschaftprjlgnschft_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjSelbstRecht','dm01vch24lv95dliegenschaften_projselbstrecht');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Symbol','dm01vch24lv95dfixpunktekatgrie2_lfp2symbol');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3PosLFP3Pos_von','dm01vch24lv95dfixpunktekatgrie3_lfp3poslfp3pos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Objektname','dm01vch24lv95deinzelobjekte_objektname');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos','plzoch1lv95dplzortschaft_ortschaftsname_pos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3','dm01vch24lv95dfixpunktekatgrie3_hfp3');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckEntstehung','dm01vch24lv95dliegenschaften_projgrundstueckentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNameGebaeudeName_von','dm01vch24lv95dgebaeudeadressen_gebaeudenamegebaeudename_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich','plzoch1lv95dnummerierngsbrche_nummerierungsbereich');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Kantonsgrenzen.Kantonsgrenzabschnitt','dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1PosLFP1Pos_von','dm01vch24lv95dfixpunktekatgrie1_lfp1poslfp1pos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Hoehen.Hoehenpunkt','dm01vch24lv95dhoehen_hoehenpunkt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenze','dm01vch24lv95dgemeindegrenzen_projgemeindegrenze');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePos','dm01vch24lv95dnomenklatur_gelaendenamepos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektEntstehung','dm01vch24lv95drohrleitungen_leitungsobjektentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenLinie','dm01vch24lv95dplanrahmen_koordinatenlinie');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grundstueck','dm01vch24lv95dliegenschaften_grundstueck');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.FlaechenelementFlaechenelement_von','dm01vch24lv95drohrleitungen_flaechenelementflaechenelmnt_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plangeometrie','dm01vch24lv95dplaneinteilungen_plangeometrie');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung','dm01vch24lv95deinzelobjekte_eonachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText','plzoch1lv95dplzortschaft_ortschaftsverbundtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung','plzoch1lv95dplzortschaft_plz6nachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPos','dm01vch24lv95dgebaeudeadressen_hausnummerpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbol','dm01vch24lv95dplanrahmen_planlayoutsymbol');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Nachfuehrung','dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaeche','dm01vch24lv95dbodenbedeckung_projboflaeche');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Pos','dm01vch24lv95dfixpunktekatgrie3_hfp3pos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Entstehung','dm01vch24lv95dfixpunktekatgrie1_lfp1entstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPlanbeschriftung_von','dm01vch24lv95dplanrahmen_planbeschriftungplanbeschriftng_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePosFlurnamePos_von','dm01vch24lv95dnomenklatur_flurnameposflurnamepos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Entstehung','dm01vch24lv95dfixpunktekatgrie1_hfp1entstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Objektname','dm01vch24lv95dbodenbedeckung_objektname');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftEntstehung','plzoch1lv95dplzortschaft_ortschaftentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktEntstehung','dm01vch24lv95drohrleitungen_signalpunktentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.LinienobjektLinienobjekt_von','dm01vch24lv95dplanrahmen_linienobjektlinienobjekt_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Nachfuehrung','dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib6','dm01vch24lv95dliegenschaften_lineattrib6');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnameProjObjektname_von','dm01vch24lv95dbodenbedeckung_projobjektnameprojobjektnam_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktEntstehung','dm01vch24lv95dbodenbedeckung_einzelpunktentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktSymbol','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePosProjObjektnamePos_von','dm01vch24lv95dbodenbedeckung_projobjektnamepsprjbjktnmps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.Planbeschriftung','dm01vch24lv95dplanrahmen_planbeschriftung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib1','dm01vch24lv95dliegenschaften_lineattrib1');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelobjekt','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib2','dm01vch24lv95dliegenschaften_lineattrib2');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2','dm01vch24lv95dfixpunktekatgrie2_hfp2');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib3','dm01vch24lv95dliegenschaften_lineattrib3');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib4','dm01vch24lv95dliegenschaften_lineattrib4');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib5','dm01vch24lv95dliegenschaften_lineattrib5');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung','dm01vch24lv95drohrleitungen_rlnachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.BenanntesGebietBenanntesGebiet_von','dm01vch24lv95dgebaeudeadressen_benanntesgebietbennntsgbt_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftKoordinatenanschrift_von','dm01vch24lv95dplanrahmen_koordinatennschrftkrdntnnschrft_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenameEntstehung','dm01vch24lv95dnomenklatur_gelaendenameentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementSymbol','dm01vch24lv95deinzelobjekte_flaechenelementsymbol');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Entstehung','dm01vch24lv95dplzortschaft_plz6entstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPosObjektnummerPos_von','dm01vch24lv95deinzelobjekte_objektnummerposobjektnummrps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GEBNachfuehrung','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LinienelementLinienelement_von','dm01vch24lv95drohrleitungen_linienelementlinienelement_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Nachfuehrung','dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rutschgebiete.Rutschung','dm01vch24lv95drutschgebiete_rutschung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPosHoehenpunktPos_von','dm01vch24lv95dhoehen_hoehenpunktposhoehenpunktpos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeeingangGebaeudeeingang_von','dm01vch24lv95dgebaeudeadressen_gebaeudeeinganggebaedngng_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bezirksgrenzen.Bezirksgrenzabschnitt','dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.SelbstRechtSelbstRecht_von','dm01vch24lv95dliegenschaften_selbstrechtselbstrecht_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.PunktelementPunktelement_von','dm01vch24lv95drohrleitungen_punktelementpunktelement_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GemeindegrenzeEntstehung','dm01vch24lv95dgemeindegrenzen_gemeindegrenzeentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenzeEntstehung','dm01vch24lv95dgemeindegrenzen_projgemeindegrenzeentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von','dm01vch24lv95dplzortschaft_ortschftsvrbndtxchftsvrbndtxt_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPos','dm01vch24lv95deinzelobjekte_objektnummerpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Nachfuehrung','dm01vch24lv95dplzortschaft_plz6nachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbund','dm01vch24lv95dplzortschaft_ortschaftsverbund');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Gemeindegrenze','dm01vch24lv95dgemeindegrenzen_gemeindegrenze');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Entstehung','plzoch1lv95dplzortschaft_plz6entstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.PunktelementPunktelement_von','dm01vch24lv95deinzelobjekte_punktelementpunktelement_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Objektnummer','dm01vch24lv95deinzelobjekte_objektnummer');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktEntstehung','dm01vch24lv95dliegenschaften_grenzpunktentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.LiegenschaftLiegenschaft_von','dm01vch24lv95dliegenschaften_liegenschaftliegenschaft_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.Flurname','dm01vch24lv95dnomenklatur_flurname');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Entstehung','dm01vch24lv95dfixpunktekatgrie2_hfp2entstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPosHoheitsgrenzpunktPos_von','dm01vch24lv95dgemeindegrenzen_hohtsgrnzpnktpssgrnzpnktps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaeche','dm01vch24lv95dbodenbedeckung_boflaeche');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktSymbolGrenzpunktSymbol_von','dm01vch24lv95dliegenschaften_grenzpnktsymblgrnzpnktsymbl_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Strassenstueck','dm01vch24lv95dgebaeudeadressen_strassenstueck');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos','plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Entstehung','dm01vch24lv95dfixpunktekatgrie3_hfp3entstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePos','dm01vch24lv95dnomenklatur_flurnamepos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftEntstehung','dm01vch24lv95dplzortschaft_ortschaftentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.Gelaendename','dm01vch24lv95dnomenklatur_gelaendename');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeBeschreibung','dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementSymbolFlaechenelementSymbol_von','dm01vch24lv95deinzelobjekte_flachnlmntsymblfchnlmntsymbl_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrie','plzoch1lv95dnummerierngsbrche_nbgeometrie');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.NKNachfuehrung','dm01vch24lv95dnomenklatur_nknachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerObjektnummer_von','dm01vch24lv95deinzelobjekte_objektnummerobjektnummer_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePosLokalisationsNamePos_von','dm01vch24lv95dgebaeudeadressen_lokalistnsnmpslklstnsnmps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.Ortsname','dm01vch24lv95dnomenklatur_ortsname');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.Liegenschaft','dm01vch24lv95dliegenschaften_liegenschaft');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.DarstellungsflaecheDarstellungsflaeche_von','dm01vch24lv95dplanrahmen_darstellungsflaechdrstllngsflch_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grenzpunkt','dm01vch24lv95dliegenschaften_grenzpunkt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation','dm01vch24lv95dgebaeudeadressen_lokalisation');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPos','dm01vch24lv95dliegenschaften_projgrundstueckpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName','plzoch1lv95dplzortschaft_ortschaftsname');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2','dm01vch24lv95dfixpunktekatgrie2_lfp2');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2PosHFP2Pos_von','dm01vch24lv95dfixpunktekatgrie2_hfp2poshfp2pos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelpunkt','dm01vch24lv95deinzelobjekte_einzelpunkt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftOrtschaft_von','plzoch1lv95dplzortschaft_ortschaftortschaft_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationEntstehung','dm01vch24lv95dgebaeudeadressen_lokalisationentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPosKoordinatenanschriftPos_von','dm01vch24lv95dplanrahmen_koordntnnschrftpsrdntnnschrftps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.Bergwerk','dm01vch24lv95dliegenschaften_bergwerk');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.StrassenstueckStrassenstueck_von','dm01vch24lv95dgebaeudeadressen_strassenstueckstrassnstck_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung','dm01vch24lv95dliegenschaften_lsnachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von','dm01vch24lv95dnummerierngsbrche_nbgeometrienbgeometrie_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePos','dm01vch24lv95dbodenbedeckung_objektnamepos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.Koordinatenanschrift','dm01vch24lv95dplanrahmen_koordinatenanschrift');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Nachfuehrung','dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePosOrtsnamePos_von','dm01vch24lv95dnomenklatur_ortsnameposortsnamepos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Pos','dm01vch24lv95dfixpunktekatgrie2_hfp2pos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung','plzoch1lv95dplzortschaft_osnachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6PLZ6_von','dm01vch24lv95dplzortschaft_plz6plz6_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft','plzoch1lv95dplzortschaft_ortschaft');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Nachfuehrung','dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Signalpunkt','dm01vch24lv95drohrleitungen_signalpunkt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3PosHFP3Pos_von','dm01vch24lv95dfixpunktekatgrie3_hfp3poshfp3pos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPosProjGebaeudenummerPos_von','dm01vch24lv95dbodenbedeckung_projgebadnmmrpsprjgbdnmmrps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePos','dm01vch24lv95dnomenklatur_ortsnamepos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1','dm01vch24lv95dfixpunktekatgrie1_hfp1');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPos','dm01vch24lv95drohrleitungen_signalpunktpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OSNachfuehrung','dm01vch24lv95dplzortschaft_osnachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName','dm01vch24lv95dplzortschaft_ortschaftsname');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Hoehen.Aussparung','dm01vch24lv95dhoehen_aussparung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftOrtschaft_von','dm01vch24lv95dplzortschaft_ortschaftortschaft_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von','dm01vch24lv95dnummerierngsbrche_nummrrngsbrchprngsbrchps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPosPlanPos_von','dm01vch24lv95dplaneinteilungen_planposplanpos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Symbol','dm01vch24lv95dfixpunktekatgrie1_lfp1symbol');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Gebaeudenummer','dm01vch24lv95dbodenbedeckung_gebaeudenummer');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Pos','dm01vch24lv95dfixpunktekatgrie1_lfp1pos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPosEinzelpunktPos_von','dm01vch24lv95dbodenbedeckung_einzelpunktposeinzelpunktps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NBGeometrie','dm01vch24lv95dnummerierngsbrche_nbgeometrie');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von','plzoch1lv95dnummerierngsbrche_nummrrngsbrchpsrrngsbrchps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.NetzkreuzNetzkreuz_von','dm01vch24lv95dplanrahmen_netzkreuznetzkreuz_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6PLZ6_von','plzoch1lv95dplzortschaft_plz6plz6_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Nachfuehrung','dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNameBenannte','dm01vch24lv95dgebaeudeadressen_lokalisationsnamebenannte');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckEntstehung','dm01vch24lv95dliegenschaften_grundstueckentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeeingangEntstehung','dm01vch24lv95dgebaeudeadressen_gebaeudeeingangentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Pos','dm01vch24lv95dfixpunktekatgrie3_lfp3pos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPosHausnummerPos_von','dm01vch24lv95dgebaeudeadressen_hausnummerposhausnummerps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheEntstehung','dm01vch24lv95dbodenbedeckung_boflaecheentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjSelbstRechtProjSelbstRecht_von','dm01vch24lv95dliegenschaften_projselbstrechtprjslbstrcht_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Einzelpunkt','dm01vch24lv95dbodenbedeckung_einzelpunkt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaft','dm01vch24lv95dliegenschaften_projliegenschaft');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementSymbolLinienelementSymbol_von','dm01vch24lv95deinzelobjekte_linienelmntsymbllnnlmntsymbl_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktSymbolHoheitsgrenzpunktSymbol_von','dm01vch24lv95dgemeindegrenzen_hohtsgrnzpnktsynzpnktsymbl_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Punktelement','dm01vch24lv95drohrleitungen_punktelement');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektname','dm01vch24lv95dbodenbedeckung_projobjektname');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Hoehen.GelaendekanteEntstehung','dm01vch24lv95dhoehen_gelaendekanteentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktEntstehung','dm01vch24lv95deinzelobjekte_einzelpunktentstehung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_Pos','dm01vch24lv95dplzortschaft_ortschaftsname_pos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6','plzoch1lv95dplzortschaft_plz6');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPos','dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPos','dm01vch24lv95dplaneinteilungen_planpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbolPlanLayoutSymbol_von','dm01vch24lv95dplanrahmen_planlayoutsymbolplanlayoutsymbl_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Flaechenelement','dm01vch24lv95deinzelobjekte_flaechenelement');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1','dm01vch24lv95dfixpunktekatgrie1_lfp1');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheSymbolBoFlaecheSymbol_von','dm01vch24lv95dbodenbedeckung_boflaechesymbolboflachsymbl_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePos','dm01vch24lv95deinzelobjekte_objektnamepos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LineAttrib7','dm01vch24lv95drohrleitungen_lineattrib7');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1PosHFP1Pos_von','dm01vch24lv95dfixpunktekatgrie1_hfp1poshfp1pos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePos','dm01vch24lv95dtseinteilung_toleranzstufepos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePosObjektnamePos_von','dm01vch24lv95deinzelobjekte_objektnameposobjektnamepos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung','dm01vch24lv95dbodenbedeckung_bbnachfuehrung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPos','dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von','plzoch1lv95dnummerierngsbrche_nbgeometrienbgeometrie_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von','dm01vch24lv95dplzortschaft_ortschaftsnam_psrtschftsnm_ps_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjBergwerkProjBergwerk_von','dm01vch24lv95dliegenschaften_projbergwerkprojbergwerk_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementSymbol','dm01vch24lv95deinzelobjekte_linienelementsymbol');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Symbol','dm01vch24lv95dfixpunktekatgrie3_lfp3symbol');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePosGelaendenamePos_von','dm01vch24lv95dnomenklatur_gelaendenameposgelaendenamepos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3SymbolLFP3Symbol_von','dm01vch24lv95dfixpunktekatgrie3_lfp3symbollfp3symbol_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Einzelpunkt','dm01vch24lv95drohrleitungen_einzelpunkt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Flaechenelement','dm01vch24lv95drohrleitungen_flaechenelement');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.LineAttrib8','dm01vch24lv95dgemeindegrenzen_lineattrib8');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummer','dm01vch24lv95dbodenbedeckung_projgebaeudenummer');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementLinienelement_von','dm01vch24lv95deinzelobjekte_linienelementlinienelement_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Pos','dm01vch24lv95dfixpunktekatgrie2_lfp2pos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.Ortschaft','dm01vch24lv95dplzortschaft_ortschaft');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementFlaechenelement_von','dm01vch24lv95deinzelobjekte_flaechenelementflaechenelmnt_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von','plzoch1lv95dplzortschaft_ortschaftsnameortschaftsname_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2PosLFP2Pos_von','dm01vch24lv95dfixpunktekatgrie2_lfp2poslfp2pos_von');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Linienelement','dm01vch24lv95deinzelobjekte_linienelement');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPos','dm01vch24lv95deinzelobjekte_einzelpunktpos');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPosPlanbeschriftungPos_von','dm01vch24lv95dplanrahmen_planbeschriftngpsplnbschrftngps_von');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.Aussparung.Geometrie','geometrie','dm01vch24lv95dhoehen_aussparung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlangeometriePlangeometrie_von.Plangeometrie_von','plangeometrie_von','dm01vch24lv95dplaneinteilungen_plangeometrie','dm01vch24lv95dplaneinteilungen_plan');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OSNachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grundstueck.Gueltigkeit','gueltigkeit','dm01vch24lv95dliegenschaften_grundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Nachfuehrung.Identifikator','identifikator','dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2.Geometrie','geometrie','dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung.NBIdent','nbident','dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Perimeter','perimeter','dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1.Geometrie','geometrie','dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Nachfuehrung.Identifikator','identifikator','dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerGebaeudenummer_von.Gebaeudenummer_von','gebaeudenummer_von','dm01vch24lv95dbodenbedeckung_gebaeudenummer','dm01vch24lv95dbodenbedeckung_boflaeche');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Einzelpunkt.Identifikator','identifikator','dm01vch24lv95drohrleitungen_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Pos.Pos','pos','dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.NKNachfuehrung.Perimeter','perimeter','dm01vch24lv95dnomenklatur_nknachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang.GWR_EGID','gwr_egid','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPos.VAli','vali','dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.UebersichtPlannullpunkt','uebersichtplannullpunkt','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung.NBIdent','nbident','dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.UebersichtMassstabszahl','uebersichtmassstabszahl','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Nachfuehrung.Identifikator','identifikator','dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.Zusatzziffern','zusatzziffern','plzoch1lv95dplzortschaft_plz6',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePos.Pos','pos','dm01vch24lv95dtseinteilung_toleranzstufepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2.Nummer','nummer','dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePos.Ori','ori','dm01vch24lv95dtseinteilung_toleranzstufepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektEntstehung.Entstehung','entstehung','dm01vch24lv95drohrleitungen_leitungsobjekt','dm01vch24lv95drohrleitungen_rlnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich.Kt','kt','plzoch1lv95dnummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName.Sprache','sprache','plzoch1lv95dplzortschaft_ortschaftsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2.HoeheZuv','hoehezuv','dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Nachfuehrung.Identifikator','identifikator','dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPos.Groesse','groesse','dm01vch24lv95deinzelobjekte_objektnummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsName.Sprache','sprache','dm01vch24lv95dgebaeudeadressen_lokalisationsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Pos.Pos','pos','dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3.HoeheGen','hoehegen','dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheSymbol.Ori','ori','dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.Toleranzstufe.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dtseinteilung_toleranzstufe',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.Netzkreuz.Art','art','dm01vch24lv95dplanrahmen_netzkreuz',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1SymbolLFP1Symbol_von.LFP1Symbol_von','lfp1symbol_von','dm01vch24lv95dfixpunktekatgrie1_lfp1symbol','dm01vch24lv95dfixpunktekatgrie1_lfp1');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktSymbolGrenzpunktSymbol_von.GrenzpunktSymbol_von','grenzpunktsymbol_von','dm01vch24lv95dliegenschaften_grenzpunktsymbol','dm01vch24lv95dliegenschaften_grenzpunkt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang.AttributeProvisorisch','attributeprovisorisch','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Nachfuehrung.Perimeter','perimeter','dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.Rutschung.Identifikator','identifikator','dm01vch24lv95drutschgebiete_rutschung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.Rutschung.Name','aname','dm01vch24lv95drutschgebiete_rutschung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.Linienobjekt.Geometrie','geometrie','dm01vch24lv95dplanrahmen_linienobjekt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Punktelement.Geometrie','geometrie','dm01vch24lv95deinzelobjekte_punktelement',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3.Geometrie','geometrie','dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktEntstehung.Entstehung','entstehung','dm01vch24lv95dliegenschaften_grenzpunkt','dm01vch24lv95dliegenschaften_lsnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePos.VAli','vali','dm01vch24lv95dnomenklatur_gelaendenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPos.HAli','hali','dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.Ortschaft.Flaeche','flaeche','dm01vch24lv95dplzortschaft_ortschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grundstueck.Art','art','dm01vch24lv95dliegenschaften_grundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPos.Hilfslinie','hilfslinie','dm01vch24lv95dliegenschaften_grundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeName.IndexText','indextext','dm01vch24lv95dgebaeudeadressen_gebaeudename',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1.Nummer','nummer','dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Nachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPosGrundstueckPos_von.GrundstueckPos_von','grundstueckpos_von','dm01vch24lv95dliegenschaften_grundstueckpos','dm01vch24lv95dliegenschaften_grundstueck');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPos.Groesse','groesse','dm01vch24lv95drutschgebiete_rutschungpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePos.Groesse','groesse','dm01vch24lv95dnomenklatur_flurnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3.LageGen','lagegen','dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2PosHFP2Pos_von.HFP2Pos_von','hfp2pos_von','dm01vch24lv95dfixpunktekatgrie2_hfp2pos','dm01vch24lv95dfixpunktekatgrie2_hfp2');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.DarstellungsflaecheDarstellungsflaeche_von.Darstellungsflaeche_von','darstellungsflaeche_von','dm01vch24lv95dplanrahmen_darstellungsflaeche','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePosGebaeudeNamePos_von.GebaeudeNamePos_von','gebaeudenamepos_von','dm01vch24lv95dgebaeudeadressen_gebaeudenamepos','dm01vch24lv95dgebaeudeadressen_gebaeudename');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePos.Groesse','groesse','dm01vch24lv95deinzelobjekte_objektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Nachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Objektname.Name','aname','dm01vch24lv95deinzelobjekte_objektname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePos.HAli','hali','dm01vch24lv95deinzelobjekte_objektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos.EndIndex','endindex','dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plan.NBIdent','nbident','dm01vch24lv95dplaneinteilungen_plan',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Pos.VAli','vali','dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von.NummerierungsbereichPos_von','nummerierungsbereichpos_von','dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos','dm01vch24lv95dnummerierngsbrche_nummerierungsbereich');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2.LageGen','lagegen','dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Bergwerk.Geometrie','geometrie','dm01vch24lv95dliegenschaften_bergwerk',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Nachfuehrung.Datum1','datum1','dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Strassenstueck.Geometrie','geometrie','dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Pos.VAli','vali','dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Symbol.Ori','ori','dm01vch24lv95dfixpunktekatgrie3_lfp3symbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NBGeometrie.Geometrie','geometrie','dm01vch24lv95dnummerierngsbrche_nbgeometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung.Identifikator','identifikator','dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1.LageZuv','lagezuv','dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheSymbolProjBoFlaecheSymbol_von.ProjBoFlaecheSymbol_von','projboflaechesymbol_von','dm01vch24lv95dbodenbedeckung_projboflaechesymbol','dm01vch24lv95dbodenbedeckung_projboflaeche');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Liegenschaft.Geometrie','geometrie','dm01vch24lv95dliegenschaften_liegenschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Signalpunkt.Nummer','nummer','dm01vch24lv95drohrleitungen_signalpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbol.Pos','pos','dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPos.VAli','vali','dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GEBNachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plan.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dplaneinteilungen_plan',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Gebaeudenummer.Nummer','nummer','dm01vch24lv95dbodenbedeckung_gebaeudenummer',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Signalpunkt.Qualitaet','qualitaet','dm01vch24lv95drohrleitungen_signalpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationEntstehung.Entstehung','entstehung','dm01vch24lv95dgebaeudeadressen_lokalisation','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPos.Pos','pos','dm01vch24lv95drutschgebiete_rutschungpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Nachfuehrung.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPos.VAli','vali','dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Nachfuehrung.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grenzpunkt.Identifikator','identifikator','dm01vch24lv95dliegenschaften_grenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPos.Groesse','groesse','dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung.Gueltigkeit','gueltigkeit','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePos.Groesse','groesse','dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grundstueck.EGRIS_EGRID','egris_egrid','dm01vch24lv95dliegenschaften_grundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GEBNachfuehrung.Identifikator','identifikator','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.Aussparung.Art','art','dm01vch24lv95dhoehen_aussparung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktSymbol.Ori','ori','dm01vch24lv95dliegenschaften_grenzpunktsymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang.InAenderung','inaenderung','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePos.HAli','hali','dm01vch24lv95dnomenklatur_gelaendenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrie.Geometrie','geometrie','plzoch1lv95dnummerierngsbrche_nbgeometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Leitungsobjekt.Betreiber','betreiber','dm01vch24lv95drohrleitungen_leitungsobjekt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt.LageZuv','lagezuv','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Einzelpunkt.LageZuv','lagezuv','dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.Nummerierungsbereich.NBNummer','nbnummer','dm01vch24lv95dnummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementSymbol.Ori','ori','dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung.Perimeter','perimeter','dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementSymbol.Pos','pos','dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePos.Groesse','groesse','dm01vch24lv95dnomenklatur_gelaendenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt.Geometrie','geometrie','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HONachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dhoehen_honachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePos.Stil','stil','dm01vch24lv95dnomenklatur_flurnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaeche.Geometrie','geometrie','dm01vch24lv95dbodenbedeckung_projboflaeche',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheSymbol.Pos','pos','dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Linienelement.Geometrie','geometrie','dm01vch24lv95deinzelobjekte_linienelement',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OSNachfuehrung.NBIdent','nbident','dm01vch24lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang.Hausnummer','hausnummer','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaeche.Geometrie','geometrie','dm01vch24lv95dbodenbedeckung_boflaeche',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos.VAli','vali','dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Nachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Pos.Ori','ori','dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPos.HAli','hali','dm01vch24lv95drohrleitungen_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GEBNachfuehrung.NBIdent','nbident','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.PunktelementPunktelement_von.Punktelement_von','punktelement_von','dm01vch24lv95drohrleitungen_punktelement','dm01vch24lv95drohrleitungen_leitungsobjekt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1.LageGen','lagegen','dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenze.Geometrie','geometrie','dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPos.Groesse','groesse','dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktSymbol.Ori','ori','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPos.Groesse','groesse','dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Pos.Ori','ori','dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Pos.HAli','hali','dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.Planbeschriftung.Art','art','dm01vch24lv95dplanrahmen_planbeschriftung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2PosLFP2Pos_von.LFP2Pos_von','lfp2pos_von','dm01vch24lv95dfixpunktekatgrie2_lfp2pos','dm01vch24lv95dfixpunktekatgrie2_lfp2');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.GueltigerEintrag','gueltigereintrag','plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Nachfuehrung.Datum1','datum1','dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPos.VAli','vali','dm01vch24lv95dhoehen_hoehenpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GEBNachfuehrung.Gueltigkeit','gueltigkeit','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Nachfuehrung.Perimeter','perimeter','dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPosRutschungPos_von.RutschungPos_von','rutschungpos_von','dm01vch24lv95drutschgebiete_rutschungpos','dm01vch24lv95drutschgebiete_rutschung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePosProjObjektnamePos_von.ProjObjektnamePos_von','projobjektnamepos_von','dm01vch24lv95dbodenbedeckung_projobjektnamepos','dm01vch24lv95dbodenbedeckung_projobjektname');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPosKoordinatenanschriftPos_von.KoordinatenanschriftPos_von','koordinatenanschriftpos_von','dm01vch24lv95dplanrahmen_koordinatenanschriftpos','dm01vch24lv95dplanrahmen_koordinatenanschrift');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePos.Groesse','groesse','dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName.Text','atext','dm01vch24lv95dplzortschaft_ortschaftsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbol.Ori','ori','dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.Nachfuehrungsdatum','nachfuehrungsdatum','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.Mit_Koordinatennetz','mit_koordinatennetz','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjBergwerkProjBergwerk_von.ProjBergwerk_von','projbergwerk_von','dm01vch24lv95dliegenschaften_projbergwerk','dm01vch24lv95dliegenschaften_projgrundstueck');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPos.Ori','ori','dm01vch24lv95dliegenschaften_grundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Linienelement.Geometrie','geometrie','dm01vch24lv95drohrleitungen_linienelement',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.Massstabszahl','massstabszahl','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.Ortschaft.Status','astatus','dm01vch24lv95dplzortschaft_ortschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2SymbolLFP2Symbol_von.LFP2Symbol_von','lfp2symbol_von','dm01vch24lv95dfixpunktekatgrie2_lfp2symbol','dm01vch24lv95dfixpunktekatgrie2_lfp2');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Entstehung.Entstehung','entstehung','dm01vch24lv95dfixpunktekatgrie1_hfp1','dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Pos.HAli','hali','dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnameEntstehung.Entstehung','entstehung','dm01vch24lv95dnomenklatur_ortsname','dm01vch24lv95dnomenklatur_nknachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPos.Pos','pos','dm01vch24lv95dliegenschaften_grundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnameProjObjektname_von.ProjObjektname_von','projobjektname_von','dm01vch24lv95dbodenbedeckung_projobjektname','dm01vch24lv95dbodenbedeckung_projboflaeche');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePos.Hilfslinie','hilfslinie','dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelobjekt.Art','art','dm01vch24lv95deinzelobjekte_einzelobjekt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.AussparungEntstehung.Entstehung','entstehung','dm01vch24lv95dhoehen_aussparung','dm01vch24lv95dhoehen_honachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Nachfuehrung.Datum1','datum1','dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsName.Text','atext','dm01vch24lv95dgebaeudeadressen_lokalisationsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung.Datum1','datum1','dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft.Flaeche','flaeche','plzoch1lv95dplzortschaft_ortschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von.NBGeometrie_von','nbgeometrie_von','dm01vch24lv95dnummerierngsbrche_nbgeometrie','dm01vch24lv95dnummerierngsbrche_nummerierungsbereich');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePos.VAli','vali','dm01vch24lv95dnomenklatur_flurnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos.Groesse','groesse','dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.Linienobjekt.Art','art','dm01vch24lv95dplanrahmen_linienobjekt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.Netzkreuz.Pos','pos','dm01vch24lv95dplanrahmen_netzkreuz',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Landesgrenzen.Landesgrenzabschnitt.Geometrie','geometrie','dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck.EGRIS_EGRID','egris_egrid','dm01vch24lv95dliegenschaften_projgrundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.Netzkreuz.Ori','ori','dm01vch24lv95dplanrahmen_netzkreuz',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt.Punktzeichen','punktzeichen','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung.GBEintrag','gbeintrag','dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grenzpunkt.LageZuv','lagezuv','dm01vch24lv95dliegenschaften_grenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Nachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Nachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von.NummerierungsbereichPos_von','nummerierungsbereichpos_von','plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos','plzoch1lv95dnummerierngsbrche_nummerierungsbereich');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bezirksgrenzen.Bezirksgrenzabschnitt.Gueltigkeit','gueltigkeit','dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.Plannullpunkt','plannullpunkt','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1PosLFP1Pos_von.LFP1Pos_von','lfp1pos_von','dm01vch24lv95dfixpunktekatgrie1_lfp1pos','dm01vch24lv95dfixpunktekatgrie1_lfp1');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPosProjGebaeudenummerPos_von.ProjGebaeudenummerPos_von','projgebaeudenummerpos_von','dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos','dm01vch24lv95dbodenbedeckung_projgebaeudenummer');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenzeEntstehung.Entstehung','entstehung','dm01vch24lv95dgemeindegrenzen_projgemeindegrenze','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Entstehung.Entstehung','entstehung','plzoch1lv95dplzortschaft_plz6','plzoch1lv95dplzortschaft_plz6nachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plan.Nummer','nummer','dm01vch24lv95dplaneinteilungen_plan',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1.HoeheGeom','hoehegeom','dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung.Beschreibung','beschreibung','dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPos.Groesse','groesse','dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2.HoeheGeom','hoehegeom','dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePos.Ori','ori','dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Einzelpunkt.ExaktDefiniert','exaktdefiniert','dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3.HoeheGeom','hoehegeom','dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Einzelpunkt.LageGen','lagegen','dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang.Status','astatus','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.NetzkreuzNetzkreuz_von.Netzkreuz_von','netzkreuz_von','dm01vch24lv95dplanrahmen_netzkreuz','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt.ExaktDefiniert','exaktdefiniert','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos.Hilfslinie','hilfslinie','dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPos.Groesse','groesse','dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName.KurzText','kurztext','dm01vch24lv95dplzortschaft_ortschaftsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPos.VAli','vali','dm01vch24lv95drohrleitungen_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Nachfuehrung.Datum1','datum1','dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Pos.Pos','pos','dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPos.HAli','hali','dm01vch24lv95deinzelobjekte_objektnummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung.Perimeter','perimeter','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.PLZ','plz','plzoch1lv95dplzortschaft_plz6',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.Nummerierungsbereich.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dnummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Einzelpunkt.Geometrie','geometrie','dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von.OrtschaftsVerbundText_von','ortschaftsverbundtext_von','dm01vch24lv95dplzortschaft_ortschaftsverbundtext','dm01vch24lv95dplzortschaft_ortschaftsverbund');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation.Status','astatus','dm01vch24lv95dgebaeudeadressen_lokalisation',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePos.Pos','pos','dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePos.Ori','ori','dm01vch24lv95dbodenbedeckung_objektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummer.Nummer','nummer','dm01vch24lv95dbodenbedeckung_projgebaeudenummer',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPos.Pos','pos','dm01vch24lv95drohrleitungen_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.LiegenschaftLiegenschaft_von.Liegenschaft_von','liegenschaft_von','dm01vch24lv95dliegenschaften_liegenschaft','dm01vch24lv95dliegenschaften_grundstueck');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung.Perimeter','perimeter','dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPosHoehenpunktPos_von.HoehenpunktPos_von','hoehenpunktpos_von','dm01vch24lv95dhoehen_hoehenpunktpos','dm01vch24lv95dhoehen_hoehenpunkt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePosObjektnamePos_von.ObjektnamePos_von','objektnamepos_von','dm01vch24lv95dbodenbedeckung_objektnamepos','dm01vch24lv95dbodenbedeckung_objektname');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjBergwerk.Flaechenmass','flaechenmass','dm01vch24lv95dliegenschaften_projbergwerk',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grundstueck.Vollstaendigkeit','vollstaendigkeit','dm01vch24lv95dliegenschaften_grundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Liegenschaft.NummerTeilGrundstueck','nummerteilgrundstueck','dm01vch24lv95dliegenschaften_liegenschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von.OrtschaftsName_Pos_von','ortschaftsname_pos_von','dm01vch24lv95dplzortschaft_ortschaftsname_pos','dm01vch24lv95dplzortschaft_ortschaftsname');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2.HoeheZuv','hoehezuv','dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Entstehung.Entstehung','entstehung','dm01vch24lv95dfixpunktekatgrie3_hfp3','dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung.Datum1','datum1','dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbundText.Text','atext','dm01vch24lv95dplzortschaft_ortschaftsverbundtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1.HoeheZuv','hoehezuv','dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3.Nummer','nummer','dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.Hoehenpunkt.Qualitaet','qualitaet','dm01vch24lv95dhoehen_hoehenpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Nachfuehrung.NBIdent','nbident','dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Pos.VAli','vali','dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePos.Pos','pos','dm01vch24lv95dbodenbedeckung_objektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPos.HAli','hali','dm01vch24lv95drutschgebiete_rutschungpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.Gueltigkeit','gueltigkeit','plzoch1lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPos.HAli','hali','dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjBergwerk.NummerTeilGrundstueck','nummerteilgrundstueck','dm01vch24lv95dliegenschaften_projbergwerk',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPosLeitungsobjektPos_von.LeitungsobjektPos_von','leitungsobjektpos_von','dm01vch24lv95drohrleitungen_leitungsobjektpos','dm01vch24lv95drohrleitungen_leitungsobjekt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6.Status','astatus','dm01vch24lv95dplzortschaft_plz6',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePos.HAli','hali','dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Kantonsgrenzen.Kantonsgrenzabschnitt.Gueltigkeit','gueltigkeit','dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung.Gueltigkeit','gueltigkeit','dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPos.Ori','ori','dm01vch24lv95drohrleitungen_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPosEinzelpunktPos_von.EinzelpunktPos_von','einzelpunktpos_von','dm01vch24lv95dbodenbedeckung_einzelpunktpos','dm01vch24lv95dbodenbedeckung_einzelpunkt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePosObjektnamePos_von.ObjektnamePos_von','objektnamepos_von','dm01vch24lv95deinzelobjekte_objektnamepos','dm01vch24lv95deinzelobjekte_objektname');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePos.Stil','stil','dm01vch24lv95dnomenklatur_ortsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.Ortschaft.InAenderung','inaenderung','dm01vch24lv95dplzortschaft_ortschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.NBIdent','nbident','plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeBeschreibung.Text','atext','dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.SelbstRecht.Flaechenmass','flaechenmass','dm01vch24lv95dliegenschaften_selbstrecht',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HONachfuehrung.Identifikator','identifikator','dm01vch24lv95dhoehen_honachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.Ortsname.Geometrie','geometrie','dm01vch24lv95dnomenklatur_ortsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePos.Pos','pos','dm01vch24lv95dnomenklatur_gelaendenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Nachfuehrung.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaft.NummerTeilGrundstueck','nummerteilgrundstueck','dm01vch24lv95dliegenschaften_projliegenschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos.Groesse','groesse','plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaeche.Qualitaet','qualitaet','dm01vch24lv95dbodenbedeckung_boflaeche',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPos.VAli','vali','dm01vch24lv95drutschgebiete_rutschungpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPosPlanbeschriftungPos_von.PlanbeschriftungPos_von','planbeschriftungpos_von','dm01vch24lv95dplanrahmen_planbeschriftungpos','dm01vch24lv95dplanrahmen_planbeschriftung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPos.Ori','ori','dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.NKNachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dnomenklatur_nknachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung.NBIdent','nbident','dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePos.Stil','stil','dm01vch24lv95dnomenklatur_gelaendenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPos.Hilfslinie','hilfslinie','dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grenzpunkt.Punktzeichen','punktzeichen','dm01vch24lv95dliegenschaften_grenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LinienelementLinienelement_von.Linienelement_von','linienelement_von','dm01vch24lv95drohrleitungen_linienelement','dm01vch24lv95drohrleitungen_leitungsobjekt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Pos.Pos','pos','dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPos.Pos','pos','dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.Plannummer','plannummer','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OSNachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6PLZ6_von.PLZ6_von','plz6_von','plzoch1lv95dplzortschaft_plz6','plzoch1lv95dplzortschaft_ortschaft');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPos.VAli','vali','dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.FlaechenelementFlaechenelement_von.Flaechenelement_von','flaechenelement_von','dm01vch24lv95drohrleitungen_flaechenelement','dm01vch24lv95drohrleitungen_leitungsobjekt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPosPlanPos_von.PlanPos_von','planpos_von','dm01vch24lv95dplaneinteilungen_planpos','dm01vch24lv95dplaneinteilungen_plan');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Nachfuehrung.Datum1','datum1','dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang.IstOffizielleBezeichnung','istoffiziellebezeichnung','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grenzpunkt.HoheitsgrenzsteinAlt','hoheitsgrenzsteinalt','dm01vch24lv95dliegenschaften_grenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.Toleranzstufe.Art','art','dm01vch24lv95dtseinteilung_toleranzstufe',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Nachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Entstehung.Entstehung','entstehung','dm01vch24lv95dfixpunktekatgrie2_hfp2','dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePos.VAli','vali','dm01vch24lv95deinzelobjekte_objektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang.Lage','lage','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsName.KurzText','kurztext','dm01vch24lv95dgebaeudeadressen_lokalisationsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.BergwerkBergwerk_von.Bergwerk_von','bergwerk_von','dm01vch24lv95dliegenschaften_bergwerk','dm01vch24lv95dliegenschaften_grundstueck');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grundstueck.GesamteFlaechenmass','gesamteflaechenmass','dm01vch24lv95dliegenschaften_grundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung.Perimeter','perimeter','dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.InAenderung','inaenderung','plzoch1lv95dplzortschaft_plz6',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenzeProjGemeindegrenze_von.ProjGemeindegrenze_von','projgemeindegrenze_von','dm01vch24lv95dgemeindegrenzen_projgemeindegrenze','dm01vch24lv95dgemeindegrenzen_gemeinde');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjSelbstRecht.Geometrie','geometrie','dm01vch24lv95dliegenschaften_projselbstrecht',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang.GWR_EDID','gwr_edid','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2.Begehbarkeit','begehbarkeit','dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos.HAli','hali','dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktEntstehung.Entstehung','entstehung','dm01vch24lv95dbodenbedeckung_einzelpunkt','dm01vch24lv95dbodenbedeckung_bbnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPos.HAli','hali','dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Pos.Ori','ori','dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3.HoeheGen','hoehegen','dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnameObjektname_von.Objektname_von','objektname_von','dm01vch24lv95dbodenbedeckung_objektname','dm01vch24lv95dbodenbedeckung_boflaeche');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPos.Pos','pos','dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Bergwerk.Flaechenmass','flaechenmass','dm01vch24lv95dliegenschaften_bergwerk',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePos.Pos','pos','dm01vch24lv95deinzelobjekte_objektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPos.Ori','ori','dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.SelbstRecht.NummerTeilGrundstueck','nummerteilgrundstueck','dm01vch24lv95dliegenschaften_selbstrecht',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Leitungsobjekt.Qualitaet','qualitaet','dm01vch24lv95drohrleitungen_leitungsobjekt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Pos.HAli','hali','dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePos.HAli','hali','dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.E_Azimut','e_azimut','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Pos.HAli','hali','dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.Rutschung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95drutschgebiete_rutschung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPos.Pos','pos','dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Punktelement.HoeheGeom','hoehegeom','dm01vch24lv95drohrleitungen_punktelement',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPos.HAli','hali','dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Nachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPos.Ori','ori','dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelpunkt.Identifikator','identifikator','dm01vch24lv95deinzelobjekte_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6PLZ6_von.PLZ6_von','plz6_von','dm01vch24lv95dplzortschaft_plz6','dm01vch24lv95dplzortschaft_ortschaft');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText.Sprache','sprache','plzoch1lv95dplzortschaft_ortschaftsverbundtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Einzelpunkt.Identifikator','identifikator','dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.NKNachfuehrung.Identifikator','identifikator','dm01vch24lv95dnomenklatur_nknachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.GelaendekanteEntstehung.Entstehung','entstehung','dm01vch24lv95dhoehen_gelaendekante','dm01vch24lv95dhoehen_honachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPos.Groesse','groesse','dm01vch24lv95dplaneinteilungen_planpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_Pos.Groesse','groesse','dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeName.Text','atext','dm01vch24lv95dgebaeudeadressen_gebaeudename',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPlanbeschriftung_von.Planbeschriftung_von','planbeschriftung_von','dm01vch24lv95dplanrahmen_planbeschriftung','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenLinie.Geometrie','geometrie','dm01vch24lv95dplanrahmen_koordinatenlinie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.SelbstRecht.Geometrie','geometrie','dm01vch24lv95dliegenschaften_selbstrecht',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Entstehung.Entstehung','entstehung','dm01vch24lv95dfixpunktekatgrie2_lfp2','dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung.Perimeter','perimeter','dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Einzelpunkt.LageZuv','lagezuv','dm01vch24lv95drohrleitungen_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePos.Ori','ori','dm01vch24lv95deinzelobjekte_objektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt.Hoheitsgrenzstein','hoheitsgrenzstein','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePos.VAli','vali','dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grenzpunkt.LageGen','lagegen','dm01vch24lv95dliegenschaften_grenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPosEinzelpunktPos_von.EinzelpunktPos_von','einzelpunktpos_von','dm01vch24lv95drohrleitungen_einzelpunktpos','dm01vch24lv95drohrleitungen_einzelpunkt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePos.Ori','ori','dm01vch24lv95dnomenklatur_gelaendenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang.HoehenLage','hoehenlage','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePos.HAli','hali','dm01vch24lv95dnomenklatur_flurnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3.Protokoll','protokoll','dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePosGelaendenamePos_von.GelaendenamePos_von','gelaendenamepos_von','dm01vch24lv95dnomenklatur_gelaendenamepos','dm01vch24lv95dnomenklatur_gelaendename');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1.HoeheGen','hoehegen','dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeBeschreibungGebaeudeBeschreibung_von.GebaeudeBeschreibung_von','gebaeudebeschreibung_von','dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2.HoeheGen','hoehegen','dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPosGebaeudenummerPos_von.GebaeudenummerPos_von','gebaeudenummerpos_von','dm01vch24lv95dbodenbedeckung_gebaeudenummerpos','dm01vch24lv95dbodenbedeckung_gebaeudenummer');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Pos.HAli','hali','dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von.OrtschaftsName_von','ortschaftsname_von','dm01vch24lv95dplzortschaft_ortschaftsname','dm01vch24lv95dplzortschaft_ortschaft');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Nachfuehrung.Identifikator','identifikator','dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Pos.VAli','vali','dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText.Text','atext','plzoch1lv95dplzortschaft_ortschaftsverbundtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung.NBIdent','nbident','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName.KurzText','kurztext','plzoch1lv95dplzortschaft_ortschaftsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Objektnummer.Nummer','nummer','dm01vch24lv95deinzelobjekte_objektnummer',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Strassenstueck.IstAchse','istachse','dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePos.Groesse','groesse','dm01vch24lv95dnomenklatur_ortsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Nachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePosLokalisationsNamePos_von.LokalisationsNamePos_von','lokalisationsnamepos_von','dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos','dm01vch24lv95dgebaeudeadressen_lokalisationsname');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung.Identifikator','identifikator','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OSNachfuehrung.Perimeter','perimeter','dm01vch24lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Nachfuehrung.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPos.VAli','vali','dm01vch24lv95deinzelobjekte_objektnummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPos.VAli','vali','dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos.VAli','vali','plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich.NBNummer','nbnummer','plzoch1lv95dnummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GemeindegrenzeEntstehung.Entstehung','entstehung','dm01vch24lv95dgemeindegrenzen_gemeindegrenze','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung.Datum1','datum1','dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1.Nummer','nummer','dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.LinienobjektLinienobjekt_von.Linienobjekt_von','linienobjekt_von','dm01vch24lv95dplanrahmen_linienobjekt','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPos.HAli','hali','dm01vch24lv95dliegenschaften_grundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPos.Pos','pos','dm01vch24lv95deinzelobjekte_objektnummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1.HoeheGeom','hoehegeom','dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck.GesamteFlaechenmass','gesamteflaechenmass','dm01vch24lv95dliegenschaften_projgrundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2.HoeheGeom','hoehegeom','dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Perimeter','perimeter','plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Nachfuehrung.Identifikator','identifikator','dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Einzelpunkt.Geometrie','geometrie','dm01vch24lv95drohrleitungen_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Identifikator','identifikator','dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Nachfuehrung.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPos.VAli','vali','dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3.HoeheGeom','hoehegeom','dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HONachfuehrung.Gueltigkeit','gueltigkeit','dm01vch24lv95dhoehen_honachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaftProjLiegenschaft_von.ProjLiegenschaft_von','projliegenschaft_von','dm01vch24lv95dliegenschaften_projliegenschaft','dm01vch24lv95dliegenschaften_projgrundstueck');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Landesgrenzen.Landesgrenzabschnitt.Gueltigkeit','gueltigkeit','dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPos.Ori','ori','dm01vch24lv95deinzelobjekte_objektnummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.BenanntesGebietBenanntesGebiet_von.BenanntesGebiet_von','benanntesgebiet_von','dm01vch24lv95dgebaeudeadressen_benanntesgebiet','dm01vch24lv95dgebaeudeadressen_lokalisation');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Beschreibung','beschreibung','plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaft.Geometrie','geometrie','dm01vch24lv95dliegenschaften_projliegenschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1.Punktzeichen','punktzeichen','dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Pos.Ori','ori','dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPos.HAli','hali','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Signalpunkt.Geometrie','geometrie','dm01vch24lv95drohrleitungen_signalpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePosToleranzstufePos_von.ToleranzstufePos_von','toleranzstufepos_von','dm01vch24lv95dtseinteilung_toleranzstufepos','dm01vch24lv95dtseinteilung_toleranzstufe');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt.LageGen','lagegen','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPosProjGrundstueckPos_von.ProjGrundstueckPos_von','projgrundstueckpos_von','dm01vch24lv95dliegenschaften_projgrundstueckpos','dm01vch24lv95dliegenschaften_projgrundstueck');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.Aussparung.Qualitaet','qualitaet','dm01vch24lv95dhoehen_aussparung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.NBIdent','nbident','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos.Ori','ori','plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos.Pos','pos','plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Pos.Ori','ori','dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.Erstellungsdatum','erstellungsdatum','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2.Nummer','nummer','dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plan.TechDossier','techdossier','dm01vch24lv95dplaneinteilungen_plan',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaeche.Qualitaet','qualitaet','dm01vch24lv95dbodenbedeckung_projboflaeche',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3.HoeheZuv','hoehezuv','dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung.Gueltigkeit','gueltigkeit','dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.NKNachfuehrung.Datum1','datum1','dm01vch24lv95dnomenklatur_nknachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.Koordinatenanschrift.Beschriftung','beschriftung','dm01vch24lv95dplanrahmen_koordinatenanschrift',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von.OrtschaftsName_Pos_von','ortschaftsname_pos_von','plzoch1lv95dplzortschaft_ortschaftsname_pos','plzoch1lv95dplzortschaft_ortschaftsname');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePos.Groesse','groesse','dm01vch24lv95dbodenbedeckung_objektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Nachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPos.HAli','hali','dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPosObjektnummerPos_von.ObjektnummerPos_von','objektnummerpos_von','dm01vch24lv95deinzelobjekte_objektnummerpos','dm01vch24lv95deinzelobjekte_objektnummer');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePos.VAli','vali','dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPos.HAli','hali','dm01vch24lv95dhoehen_hoehenpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsName.IndexText','indextext','dm01vch24lv95dgebaeudeadressen_lokalisationsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von.NBGeometrie_von','nbgeometrie_von','plzoch1lv95dnummerierngsbrche_nbgeometrie','plzoch1lv95dnummerierngsbrche_nummerierungsbereich');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePos.Ori','ori','dm01vch24lv95dnomenklatur_flurnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Objektname.Name','aname','dm01vch24lv95dbodenbedeckung_objektname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.Ortsname.Typ','typ','dm01vch24lv95dnomenklatur_ortsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftEntstehung.Entstehung','entstehung','plzoch1lv95dplzortschaft_ortschaft','plzoch1lv95dplzortschaft_osnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_Pos.VAli','vali','dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Einzelpunkt.LageGen','lagegen','dm01vch24lv95drohrleitungen_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.Darstellungsflaeche.Auswahlart','auswahlart','dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HONachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dhoehen_honachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftOrtschaft_von.Ortschaft_von','ortschaft_von','dm01vch24lv95dplzortschaft_ortschaft','dm01vch24lv95dplzortschaft_ortschaftsverbund');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerObjektnummer_von.Objektnummer_von','objektnummer_von','dm01vch24lv95deinzelobjekte_objektnummer','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3PosHFP3Pos_von.HFP3Pos_von','hfp3pos_von','dm01vch24lv95dfixpunktekatgrie3_hfp3pos','dm01vch24lv95dfixpunktekatgrie3_hfp3');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPos.HAli','hali','dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung.Beschreibung','beschreibung','dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPos.Ori','ori','dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck.NBIdent','nbident','dm01vch24lv95dliegenschaften_projgrundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktEntstehung.Entstehung','entstehung','dm01vch24lv95drohrleitungen_einzelpunkt','dm01vch24lv95drohrleitungen_rlnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbolPlanLayoutSymbol_von.PlanLayoutSymbol_von','planlayoutsymbol_von','dm01vch24lv95dplanrahmen_planlayoutsymbol','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjSelbstRecht.Flaechenmass','flaechenmass','dm01vch24lv95dliegenschaften_projselbstrecht',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Einzelpunkt.ExaktDefiniert','exaktdefiniert','dm01vch24lv95drohrleitungen_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1PosHFP1Pos_von.HFP1Pos_von','hfp1pos_von','dm01vch24lv95dfixpunktekatgrie1_hfp1pos','dm01vch24lv95dfixpunktekatgrie1_hfp1');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPos.Pos','pos','dm01vch24lv95drohrleitungen_signalpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPos.Ori','ori','dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePos.Pos','pos','dm01vch24lv95dnomenklatur_flurnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPos.VAli','vali','dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.Gelaendename.Name','aname','dm01vch24lv95dnomenklatur_gelaendename',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPos.Groesse','groesse','dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePos.HAli','hali','dm01vch24lv95dtseinteilung_toleranzstufepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Strassenstueck.Anfangspunkt','anfangspunkt','dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.Rutschung.Geometrie','geometrie','dm01vch24lv95drutschgebiete_rutschung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OSNachfuehrung.Identifikator','identifikator','dm01vch24lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.Identifikator','identifikator','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3.LageZuv','lagezuv','dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grenzpunkt.Geometrie','geometrie','dm01vch24lv95dliegenschaften_grenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Entstehung.Entstehung','entstehung','dm01vch24lv95dfixpunktekatgrie3_lfp3','dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPos.Pos','pos','dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPos.Ori','ori','dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.Ortsname.Name','aname','dm01vch24lv95dnomenklatur_ortsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich.TechDossier','techdossier','plzoch1lv95dnummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Pos.Pos','pos','dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung.Gueltigkeit','gueltigkeit','dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelobjektEntstehung.Entstehung','entstehung','dm01vch24lv95deinzelobjekte_einzelobjekt','dm01vch24lv95deinzelobjekte_eonachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeBeschreibung.Sprache','sprache','dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.Flaeche','flaeche','plzoch1lv95dplzortschaft_plz6',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3.LageZuv','lagezuv','dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Flaechenelement.Geometrie','geometrie','dm01vch24lv95deinzelobjekte_flaechenelement',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementSymbolLinienelementSymbol_von.LinienelementSymbol_von','linienelementsymbol_von','dm01vch24lv95deinzelobjekte_linienelementsymbol','dm01vch24lv95deinzelobjekte_linienelement');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2.HoeheGen','hoehegen','dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Strassenstueck.Ordnung','ordnung','dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheEntstehung.Entstehung','entstehung','dm01vch24lv95dbodenbedeckung_projboflaeche','dm01vch24lv95dbodenbedeckung_bbnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck.Nummer','nummer','dm01vch24lv95dliegenschaften_projgrundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Nachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPos.HAli','hali','dm01vch24lv95drohrleitungen_signalpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation.AttributeProvisorisch','attributeprovisorisch','dm01vch24lv95dgebaeudeadressen_lokalisation',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementSymbol.Ori','ori','dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.NKNachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dnomenklatur_nknachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Gueltigkeit','gueltigkeit','dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Entstehung.Entstehung','entstehung','dm01vch24lv95dfixpunktekatgrie1_lfp1','dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktEntstehung.Entstehung','entstehung','dm01vch24lv95deinzelobjekte_einzelpunkt','dm01vch24lv95deinzelobjekte_eonachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementSymbol.Pos','pos','dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Gueltigkeit','gueltigkeit','plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2.Punktzeichen','punktzeichen','dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelpunkt.ExaktDefiniert','exaktdefiniert','dm01vch24lv95deinzelobjekte_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos.Pos','pos','plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos.Ori','ori','plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePos.VAli','vali','dm01vch24lv95dbodenbedeckung_objektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaft.Flaechenmass','flaechenmass','dm01vch24lv95dliegenschaften_projliegenschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Flaechenelement.Geometrie','geometrie','dm01vch24lv95drohrleitungen_flaechenelement',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.Perimeter','perimeter','plzoch1lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft.Status','astatus','plzoch1lv95dplzortschaft_ortschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektname.Name','aname','dm01vch24lv95dbodenbedeckung_projobjektname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPos.VAli','vali','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Punktelement.Ori','ori','dm01vch24lv95drohrleitungen_punktelement',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftOrtschaft_von.Ortschaft_von','ortschaft_von','plzoch1lv95dplzortschaft_ortschaft','plzoch1lv95dplzortschaft_ortschaftsverbund');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos.VAli','vali','plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.GueltigerEintrag','gueltigereintrag','plzoch1lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Pos.HAli','hali','dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation.Nummerierungsprinzip','nummerierungsprinzip','dm01vch24lv95dgebaeudeadressen_lokalisation',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePos.VAli','vali','dm01vch24lv95dnomenklatur_ortsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.Gelaendekante.Art','art','dm01vch24lv95dhoehen_gelaendekante',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung.Gueltigkeit','gueltigkeit','dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPosGrenzpunktPos_von.GrenzpunktPos_von','grenzpunktpos_von','dm01vch24lv95dliegenschaften_grenzpunktpos','dm01vch24lv95dliegenschaften_grenzpunkt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.NKNachfuehrung.NBIdent','nbident','dm01vch24lv95dnomenklatur_nknachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Symbol.Ori','ori','dm01vch24lv95dfixpunktekatgrie2_lfp2symbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung.Identifikator','identifikator','dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Liegenschaft.Flaechenmass','flaechenmass','dm01vch24lv95dliegenschaften_liegenschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPos.HAli','hali','dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPos.VAli','vali','dm01vch24lv95dliegenschaften_grundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.Nummerierungsbereich.TechDossier','techdossier','dm01vch24lv95dnummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePosFlurnamePos_von.FlurnamePos_von','flurnamepos_von','dm01vch24lv95dnomenklatur_flurnamepos','dm01vch24lv95dnomenklatur_flurname');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.Hoehenpunkt.Geometrie','geometrie','dm01vch24lv95dhoehen_hoehenpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPos.Pos','pos','dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6.Flaeche','flaeche','dm01vch24lv95dplzortschaft_plz6',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.Rutschung.NBIdent','nbident','dm01vch24lv95drutschgebiete_rutschung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.NBIdent','nbident','plzoch1lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3.Punktzeichen','punktzeichen','dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.Toleranzstufe.Geometrie','geometrie','dm01vch24lv95dtseinteilung_toleranzstufe',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckEntstehung.Entstehung','entstehung','dm01vch24lv95dliegenschaften_projgrundstueck','dm01vch24lv95dliegenschaften_lsnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.Flurname.Name','aname','dm01vch24lv95dnomenklatur_flurname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPos.Groesse','groesse','dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckEntstehung.Entstehung','entstehung','dm01vch24lv95dliegenschaften_grundstueck','dm01vch24lv95dliegenschaften_lsnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung.Identifikator','identifikator','dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheEntstehung.Entstehung','entstehung','dm01vch24lv95dbodenbedeckung_boflaeche','dm01vch24lv95dbodenbedeckung_bbnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_Pos.Ori','ori','dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6.PLZ','plz','dm01vch24lv95dplzortschaft_plz6',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GEBNachfuehrung.Perimeter','perimeter','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.PunktelementPunktelement_von.Punktelement_von','punktelement_von','dm01vch24lv95deinzelobjekte_punktelement','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPos.VAli','vali','dm01vch24lv95dliegenschaften_grenzpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.Identifikator','identifikator','plzoch1lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation.Art','art','dm01vch24lv95dgebaeudeadressen_lokalisation',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grenzpunkt.ExaktDefiniert','exaktdefiniert','dm01vch24lv95dliegenschaften_grenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPos.HAli','hali','dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPos.VAli','vali','dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPos.Ori','ori','dm01vch24lv95drohrleitungen_signalpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GEBNachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_Pos.Pos','pos','dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GemeindegrenzeGemeindegrenze_von.Gemeindegrenze_von','gemeindegrenze_von','dm01vch24lv95dgemeindegrenzen_gemeindegrenze','dm01vch24lv95dgemeindegrenzen_gemeinde');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OSNachfuehrung.Gueltigkeit','gueltigkeit','dm01vch24lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2.LageZuv','lagezuv','dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheSymbol.Ori','ori','dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3.LageGen','lagegen','dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Pos.VAli','vali','dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_Pos.HAli','hali','dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2.Geometrie','geometrie','dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1.Geometrie','geometrie','dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePos.Ori','ori','dm01vch24lv95dnomenklatur_ortsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6.Zusatzziffern','zusatzziffern','dm01vch24lv95dplzortschaft_plz6',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.Toleranzstufe.Identifikator','identifikator','dm01vch24lv95dtseinteilung_toleranzstufe',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeName.KurzText','kurztext','dm01vch24lv95dgebaeudeadressen_gebaeudename',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementFlaechenelement_von.Flaechenelement_von','flaechenelement_von','dm01vch24lv95deinzelobjekte_flaechenelement','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.Nummerierungsbereich.Kt','kt','dm01vch24lv95dnummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePos.Pos','pos','dm01vch24lv95dnomenklatur_ortsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Nachfuehrung.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck.Art','art','dm01vch24lv95dliegenschaften_projgrundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName.Sprache','sprache','dm01vch24lv95dplzortschaft_ortschaftsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Leitungsobjekt.Art','art','dm01vch24lv95drohrleitungen_leitungsobjekt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.Gelaendekante.Qualitaet','qualitaet','dm01vch24lv95dhoehen_gelaendekante',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeName.Sprache','sprache','dm01vch24lv95dgebaeudeadressen_gebaeudename',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPos.VAli','vali','dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.Toleranzstufe.NBIdent','nbident','dm01vch24lv95dtseinteilung_toleranzstufe',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPos.HAli','hali','dm01vch24lv95dliegenschaften_grenzpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1.LageGen','lagegen','dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPos.HAli','hali','dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheSymbol.Pos','pos','dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Bergwerk.NummerTeilGrundstueck','nummerteilgrundstueck','dm01vch24lv95dliegenschaften_bergwerk',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelpunkt.Geometrie','geometrie','dm01vch24lv95deinzelobjekte_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnameEntstehung.Entstehung','entstehung','dm01vch24lv95dnomenklatur_flurname','dm01vch24lv95dnomenklatur_nknachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName.IndexText','indextext','dm01vch24lv95dplzortschaft_ortschaftsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjBergwerk.Geometrie','geometrie','dm01vch24lv95dliegenschaften_projbergwerk',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6.Status','astatus','plzoch1lv95dplzortschaft_plz6',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.SelbstRechtSelbstRecht_von.SelbstRecht_von','selbstrecht_von','dm01vch24lv95dliegenschaften_selbstrecht','dm01vch24lv95dliegenschaften_grundstueck');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftKoordinatenanschrift_von.Koordinatenanschrift_von','koordinatenanschrift_von','dm01vch24lv95dplanrahmen_koordinatenanschrift','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNameGebaeudeName_von.GebaeudeName_von','gebaeudename_von','dm01vch24lv95dgebaeudeadressen_gebaeudename','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bezirksgrenzen.Bezirksgrenzabschnitt.Geometrie','geometrie','dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1.LageZuv','lagezuv','dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1.HoeheGen','hoehegen','dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Pos.Pos','pos','dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung.NBIdent','nbident','dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePosOrtsnamePos_von.OrtsnamePos_von','ortsnamepos_von','dm01vch24lv95dnomenklatur_ortsnamepos','dm01vch24lv95dnomenklatur_ortsname');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePos.Groesse','groesse','dm01vch24lv95dtseinteilung_toleranzstufepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPos.Pos','pos','dm01vch24lv95dliegenschaften_grenzpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnameObjektname_von.Objektname_von','objektname_von','dm01vch24lv95deinzelobjekte_objektname','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftEntstehung.Entstehung','entstehung','dm01vch24lv95dplzortschaft_ortschaft','dm01vch24lv95dplzortschaft_osnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3.Geometrie','geometrie','dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbund.Leer','leer','plzoch1lv95dplzortschaft_ortschaftsverbund',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPos.Ori','ori','dm01vch24lv95dliegenschaften_grenzpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelobjekt.Qualitaet','qualitaet','dm01vch24lv95deinzelobjekte_einzelobjekt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Nachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPosSignalpunktPos_von.SignalpunktPos_von','signalpunktpos_von','dm01vch24lv95drohrleitungen_signalpunktpos','dm01vch24lv95drohrleitungen_signalpunkt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPos.HAli','hali','dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.NachfuehrungsGeometername','nachfuehrungsgeometername','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Symbol.Ori','ori','dm01vch24lv95dfixpunktekatgrie1_lfp1symbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktEntstehung.Entstehung','entstehung','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Nachfuehrung.Perimeter','perimeter','dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPos.Groesse','groesse','dm01vch24lv95dliegenschaften_grundstueckpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPos.Ori','ori','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos.HAli','hali','plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Nachfuehrung.Datum1','datum1','dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPos.Ori','ori','dm01vch24lv95drutschgebiete_rutschungpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNameBenannte.Benannte','benannte','dm01vch24lv95dgebaeudeadressen_lokalisationsname','dm01vch24lv95dgebaeudeadressen_lokalisation');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.Planbeschriftung.Beschriftung','beschriftung','dm01vch24lv95dplanrahmen_planbeschriftung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.Darstellungsflaeche.Geometrie','geometrie','dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt.Identifikator','identifikator','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementLinienelement_von.Linienelement_von','linienelement_von','dm01vch24lv95deinzelobjekte_linienelement','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3.NBIdent','nbident','dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPosHoheitsgrenzpunktPos_von.HoheitsgrenzpunktPos_von','hoheitsgrenzpunktpos_von','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerProjGebaeudenummer_von.ProjGebaeudenummer_von','projgebaeudenummer_von','dm01vch24lv95dbodenbedeckung_projgebaeudenummer','dm01vch24lv95dbodenbedeckung_projboflaeche');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos.Ori','ori','dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPos.VAli','vali','dm01vch24lv95drohrleitungen_signalpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos.Pos','pos','dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbol.Art','art','dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.StrassenstueckStrassenstueck_von.Strassenstueck_von','strassenstueck_von','dm01vch24lv95dgebaeudeadressen_strassenstueck','dm01vch24lv95dgebaeudeadressen_lokalisation');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft.InAenderung','inaenderung','plzoch1lv95dplzortschaft_ortschaft',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPos.Pos','pos','dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.Layouttyp','layouttyp','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos.Groesse','groesse','plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenameEntstehung.Entstehung','entstehung','dm01vch24lv95dnomenklatur_gelaendename','dm01vch24lv95dnomenklatur_nknachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung.Identifikator','identifikator','dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbund.Leer','leer','dm01vch24lv95dplzortschaft_ortschaftsverbund',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Pos.VAli','vali','dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Gemeindegrenze.Geometrie','geometrie','dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plangeometrie.Geometrie','geometrie','dm01vch24lv95dplaneinteilungen_plangeometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Nachfuehrung.Perimeter','perimeter','dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPos.Pos','pos','dm01vch24lv95dhoehen_hoehenpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbundText.Sprache','sprache','dm01vch24lv95dplzortschaft_ortschaftsverbundtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6.InAenderung','inaenderung','dm01vch24lv95dplzortschaft_plz6',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grundstueck.NBIdent','nbident','dm01vch24lv95dliegenschaften_grundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePos.VAli','vali','dm01vch24lv95dtseinteilung_toleranzstufepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaeche.Art','art','dm01vch24lv95dbodenbedeckung_boflaeche',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPos.Ori','ori','dm01vch24lv95dhoehen_hoehenpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Entstehung.Entstehung','entstehung','dm01vch24lv95dplzortschaft_plz6','dm01vch24lv95dplzortschaft_plz6nachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation.InAenderung','inaenderung','dm01vch24lv95dgebaeudeadressen_lokalisation',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HONachfuehrung.NBIdent','nbident','dm01vch24lv95dhoehen_honachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung.Datum1','datum1','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Nachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Objektnummer.GWR_EGID','gwr_egid','dm01vch24lv95deinzelobjekte_objektnummer',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos.AnfIndex','anfindex','dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Punktelement.Geometrie','geometrie','dm01vch24lv95drohrleitungen_punktelement',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPos.VAli','vali','dm01vch24lv95dplaneinteilungen_planpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3PosLFP3Pos_von.LFP3Pos_von','lfp3pos_von','dm01vch24lv95dfixpunktekatgrie3_lfp3pos','dm01vch24lv95dfixpunktekatgrie3_lfp3');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Gemeinde.BFSNr','bfsnr','dm01vch24lv95dgemeindegrenzen_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos.HAli','hali','plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePos.Ori','ori','dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePos.Pos','pos','dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck.Gueltigkeit','gueltigkeit','dm01vch24lv95dliegenschaften_projgrundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheSymbolBoFlaecheSymbol_von.BoFlaecheSymbol_von','boflaechesymbol_von','dm01vch24lv95dbodenbedeckung_boflaechesymbol','dm01vch24lv95dbodenbedeckung_boflaeche');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPos.Pos','pos','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3SymbolLFP3Symbol_von.LFP3Symbol_von','lfp3symbol_von','dm01vch24lv95dfixpunktekatgrie3_lfp3symbol','dm01vch24lv95dfixpunktekatgrie3_lfp3');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3.Nummer','nummer','dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1.HoeheZuv','hoehezuv','dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelpunkt.LageGen','lagegen','dm01vch24lv95deinzelobjekte_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPos.Ori','ori','dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Linienelement.Linienart','linienart','dm01vch24lv95drohrleitungen_linienelement',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.Flurname.Geometrie','geometrie','dm01vch24lv95dnomenklatur_flurname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Signalpunkt.Punktart','punktart','dm01vch24lv95drohrleitungen_signalpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummer.GWR_EGID','gwr_egid','dm01vch24lv95dbodenbedeckung_projgebaeudenummer',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3.HoeheZuv','hoehezuv','dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaeche.Art','art','dm01vch24lv95dbodenbedeckung_projboflaeche',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePos.HAli','hali','dm01vch24lv95dnomenklatur_ortsnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck.Vollstaendigkeit','vollstaendigkeit','dm01vch24lv95dliegenschaften_projgrundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2.LageGen','lagegen','dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang.Im_Gebaeude','im_gebaeude','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Nachfuehrung.GueltigerEintrag','gueltigereintrag','dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.Gelaendekante.Geometrie','geometrie','dm01vch24lv95dhoehen_gelaendekante',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HONachfuehrung.Perimeter','perimeter','dm01vch24lv95dhoehen_honachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPos.HAli','hali','dm01vch24lv95dplaneinteilungen_planpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktEntstehung.Entstehung','entstehung','dm01vch24lv95drohrleitungen_signalpunkt','dm01vch24lv95drohrleitungen_rlnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPos.Pos','pos','dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName.IndexText','indextext','plzoch1lv95dplzortschaft_ortschaftsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von.OrtschaftsVerbundText_von','ortschaftsverbundtext_von','plzoch1lv95dplzortschaft_ortschaftsverbundtext','plzoch1lv95dplzortschaft_ortschaftsverbund');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPos.Ori','ori','dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung.Datum1','datum1','dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPos.Groesse','groesse','dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung.Beschreibung','beschreibung','dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPosHausnummerPos_von.HausnummerPos_von','hausnummerpos_von','dm01vch24lv95dgebaeudeadressen_hausnummerpos','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Signalpunkt.Art','art','dm01vch24lv95drohrleitungen_signalpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Kantonsgrenzen.Kantonsgrenzabschnitt.Geometrie','geometrie','dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.Geometername','geometername','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grundstueck.Nummer','nummer','dm01vch24lv95dliegenschaften_grundstueck',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktEntstehung.Entstehung','entstehung','dm01vch24lv95dhoehen_hoehenpunkt','dm01vch24lv95dhoehen_honachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPos.Pos','pos','dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Signalpunkt.Betreiber','betreiber','dm01vch24lv95drohrleitungen_signalpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName.Text','atext','plzoch1lv95dplzortschaft_ortschaftsname',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPos.Ori','ori','dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPos.Ori','ori','dm01vch24lv95dplaneinteilungen_planpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPos.VAli','vali','dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenLinieKoordinatenLinie_von.KoordinatenLinie_von','koordinatenlinie_von','dm01vch24lv95dplanrahmen_koordinatenlinie','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPos.Pos','pos','dm01vch24lv95dplaneinteilungen_planpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Nachfuehrung.Perimeter','perimeter','dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelpunkt.LageZuv','lagezuv','dm01vch24lv95deinzelobjekte_einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung.Datum2','datum2','dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Pos.Ori','ori','dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePos.HAli','hali','dm01vch24lv95dbodenbedeckung_objektnamepos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPos.Pos','pos','dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeeingangEntstehung.Entstehung','entstehung','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation.LokalisationNummer','lokalisationnummer','dm01vch24lv95dgebaeudeadressen_lokalisation',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung.Identifikator','identifikator','plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich.GueltigerEintrag','gueltigereintrag','plzoch1lv95dnummerierngsbrche_nummerierungsbereich',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Nachfuehrung.Perimeter','perimeter','dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung.Beschreibung','beschreibung','plzoch1lv95dplzortschaft_osnachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktSymbolHoheitsgrenzpunktSymbol_von.HoheitsgrenzpunktSymbol_von','hoheitsgrenzpunktsymbol_von','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Punktelement.Ori','ori','dm01vch24lv95deinzelobjekte_punktelement',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.BenanntesGebiet.Flaeche','flaeche','dm01vch24lv95dgebaeudeadressen_benanntesgebiet',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1.Begehbarkeit','begehbarkeit','dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Gebaeudenummer.GWR_EGID','gwr_egid','dm01vch24lv95dbodenbedeckung_gebaeudenummer',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPosEinzelpunktPos_von.EinzelpunktPos_von','einzelpunktpos_von','dm01vch24lv95deinzelobjekte_einzelpunktpos','dm01vch24lv95deinzelobjekte_einzelpunkt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Gemeinde.Name','aname','dm01vch24lv95dgemeindegrenzen_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2.LageZuv','lagezuv','dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation.IstOffizielleBezeichnung','istoffiziellebezeichnung','dm01vch24lv95dgebaeudeadressen_lokalisation',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPos.Ori','ori','dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementSymbolFlaechenelementSymbol_von.FlaechenelementSymbol_von','flaechenelementsymbol_von','dm01vch24lv95deinzelobjekte_flaechenelementsymbol','dm01vch24lv95deinzelobjekte_flaechenelement');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjSelbstRechtProjSelbstRecht_von.ProjSelbstRecht_von','projselbstrecht_von','dm01vch24lv95dliegenschaften_projselbstrecht','dm01vch24lv95dliegenschaften_projgrundstueck');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von.OrtschaftsName_von','ortschaftsname_von','plzoch1lv95dplzortschaft_ortschaftsname','plzoch1lv95dplzortschaft_ortschaft');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjSelbstRecht.NummerTeilGrundstueck','nummerteilgrundstueck','dm01vch24lv95dliegenschaften_projselbstrecht',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeeingangGebaeudeeingang_von.Gebaeudeeingang_von','gebaeudeeingang_von','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang','dm01vch24lv95dgebaeudeadressen_lokalisation');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Hoehen.HONachfuehrung.Datum1','datum1','dm01vch24lv95dhoehen_honachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout.Gemeindename','gemeindename','dm01vch24lv95dplanrahmen_planlayout',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPos.Pos','pos','dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL);
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnameObjektname_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.TSEinteilung.Toleranzstufe','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plan','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1SymbolLFP1Symbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPosGebaeudenummerPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePosObjektnamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.Nummerierungsbereich','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlangeometriePlangeometrie_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelobjektEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.Darstellungsflaeche','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Landesgrenzen.Landesgrenzabschnitt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPosEinzelpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPosLeitungsobjektPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnameEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPosSignalpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPosGrundstueckPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPosRutschungPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Gemeinde','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Linienelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.Netzkreuz','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2SymbolLFP2Symbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerProjGebaeudenummer_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPosGrenzpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjBergwerk','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Hoehen.AussparungEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeBeschreibungGebaeudeBeschreibung_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnameObjektname_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeName','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPosProjGrundstueckPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Hoehen.HONachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.BergwerkBergwerk_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsName','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GemeindegrenzeGemeindegrenze_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.Linienobjekt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenLinieKoordinatenLinie_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnameEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Leitungsobjekt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerGebaeudenummer_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenzeProjGemeindegrenze_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbundText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.BenanntesGebiet','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbund','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPosEinzelpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.SelbstRecht','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Hoehen.Gelaendekante','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheSymbolProjBoFlaecheSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Punktelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePosToleranzstufePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePosGebaeudeNamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaftProjLiegenschaft_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjSelbstRecht','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Symbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3PosLFP3Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Objektname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNameGebaeudeName_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Kantonsgrenzen.Kantonsgrenzabschnitt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1PosLFP1Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Hoehen.Hoehenpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenze','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenLinie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grundstueck','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.FlaechenelementFlaechenelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plangeometrie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaeche','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPlanbeschriftung_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePosFlurnamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Objektname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.LinienobjektLinienobjekt_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib6','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnameProjObjektname_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePosProjObjektnamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.Planbeschriftung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib1','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelobjekt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib2','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib3','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib4','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.LineAttrib5','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.BenanntesGebietBenanntesGebiet_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftKoordinatenanschrift_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenameEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPosObjektnummerPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GEBNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LinienelementLinienelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rutschgebiete.Rutschung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPosHoehenpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeeingangGebaeudeeingang_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bezirksgrenzen.Bezirksgrenzabschnitt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.SelbstRechtSelbstRecht_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.PunktelementPunktelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GemeindegrenzeEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenzeEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbund','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Gemeindegrenze','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.PunktelementPunktelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Objektnummer','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.LiegenschaftLiegenschaft_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.Flurname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPosHoheitsgrenzpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaeche','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktSymbolGrenzpunktSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Strassenstueck','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Entstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.Gelaendename','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeBeschreibung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementSymbolFlaechenelementSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.NKNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerObjektnummer_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePosLokalisationsNamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.Ortsname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.Liegenschaft','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.DarstellungsflaecheDarstellungsflaeche_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grenzpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2PosHFP2Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftOrtschaft_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPosKoordinatenanschriftPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.Bergwerk','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.StrassenstueckStrassenstueck_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.Koordinatenanschrift','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePosOrtsnamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6PLZ6_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Signalpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3PosHFP3Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPosProjGebaeudenummerPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OSNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Hoehen.Aussparung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftOrtschaft_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPosPlanPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Symbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Gebaeudenummer','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPosEinzelpunktPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NBGeometrie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.NetzkreuzNetzkreuz_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6PLZ6_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Nachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNameBenannte','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeeingangEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPosHausnummerPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjSelbstRechtProjSelbstRecht_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Einzelpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaft','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementSymbolLinienelementSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktSymbolHoheitsgrenzpunktSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Punktelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Hoehen.GelaendekanteEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktEntstehung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbolPlanLayoutSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Flaechenelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheSymbolBoFlaecheSymbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LineAttrib7','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1PosHFP1Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePosObjektnamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjBergwerkProjBergwerk_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementSymbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Symbol','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePosGelaendenamePos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3SymbolLFP3Symbol_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Einzelpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Flaechenelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.LineAttrib8','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummer','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementLinienelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.Ortschaft','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementFlaechenelement_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2PosLFP2Pos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Linienelement','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPosPlanbeschriftungPos_von','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Pos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.Ortschaft',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnameEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OSNachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6PLZ6_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Pos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPosGrundstueckPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plangeometrie',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OSNachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheSymbol',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Pos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktSymbol',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementLinienelement_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPosLeitungsobjektPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.Flurname',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.PunktelementPunktelement_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Gebaeudenummer',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjBergwerkProjBergwerk_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bezirksgrenzen.Bezirksgrenzabschnitt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.PunktelementPunktelement_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeeingangGebaeudeeingang_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Lokalisation',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.SelbstRechtSelbstRecht_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BBNachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Hoehen.Hoehenpunkt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.FlaechenelementFlaechenelement_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftKoordinatenanschrift_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeBeschreibungGebaeudeBeschreibung_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.SelbstRecht',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPosRutschungPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPosProjGebaeudenummerPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Entstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePosGebaeudeNamePos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenzeProjGemeindegrenze_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Punktelement',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenamePosGelaendenamePos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.Linienobjekt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.Darstellungsflaeche',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Symbol',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPosObjektnummerPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPosEinzelpunktPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Hoehen.Aussparung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePosOrtsnamePos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Linienelement',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenzeEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Entstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPosGrenzpunktPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3PosLFP3Pos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaftProjLiegenschaft_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2PosLFP2Pos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.RLNachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.BenanntesGebiet',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementFlaechenelement_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnameProjObjektname_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Objektnummer',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktPosEinzelpunktPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.StrassenstueckStrassenstueck_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Gemeindegrenze',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3PosHFP3Pos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Entstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaeche',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.ProjGemeindegrenze',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Pos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelobjektEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbundTextOrtschaftsVerbundText_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPosProjGrundstueckPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeeingangEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektname',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeName',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2Entstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Linienelement',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.TSEinteilung.Toleranzstufe',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementSymbol',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Hoehen.GelaendekanteEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.NetzkreuzNetzkreuz_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Pos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktSymbolGrenzpunktSymbol_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePosObjektnamePos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Objektname',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjSelbstRechtProjSelbstRecht_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePosObjektnamePos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerProjGebaeudenummer_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.Nummerierungsbereich',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.Ortsname',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EinzelpunktEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeBeschreibung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NBGeometrie',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Entstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrieNBGeometrie_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjBergwerk',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePosProjObjektnamePos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenLinie',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.Planbeschriftung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.Ortschaft',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjSelbstRecht',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftOrtschaft_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planeinteilungen.Plan',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1SymbolLFP1Symbol_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Gemeinde',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheSymbolProjBoFlaecheSymbol_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Symbol',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1PosHFP1Pos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Objektname',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenLinieKoordinatenLinie_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPosHausnummerPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnamePos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummerPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjLiegenschaft',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.OrtsnameEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rutschgebiete.RutschungPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.Hoheitsgrenzpunkt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPlanbeschriftung_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktSymbol',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPosEinzelpunktPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnamePos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1PosLFP1Pos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GemeindegrenzeEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsName',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbundText',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Hoehen.Gelaendekante',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrenzpunktPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerObjektnummer_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.GelaendenameEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.NKNachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktSymbolHoheitsgrenzpunktSymbol_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.FlurnamePosFlurnamePos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementSymbolFlaechenelementSymbol_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NummerierungsbereichPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNameGebaeudeName_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Einzelobjekt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.Nummerierungsbereich',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nummerierungsbereiche.NummerierungsbereichPosNummerierungsbereichPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GEMNachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.HFP2PosHFP2Pos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbundText',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Strassenstueck',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsVerbund',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.Liegenschaft',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePosToleranzstufePos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.LSNachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Hoehen.AussparungEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.BenanntesGebietBenanntesGebiet_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Signalpunkt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3SymbolLFP3Symbol_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNamePosLokalisationsNamePos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnamePos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GEBNachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Hoehen.HONachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6Nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerPosGebaeudenummerPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjGebaeudenummer',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.GebaeudeNamePos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_Pos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlangeometriePlangeometrie_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbolPlanLayoutSymbol_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.HausnummerPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.LinienobjektLinienobjekt_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheSymbolBoFlaecheSymbol_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.EinzelpunktPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.PLZ6Entstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayout',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsName_PosOrtschaftsName_Pos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2Nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Landesgrenzen.Landesgrenzabschnitt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftsNameOrtschaftsName_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.Bergwerk',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.Koordinatenanschrift',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.GrundstueckPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.PLZOrtschaft.OrtschaftOrtschaft_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaecheEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planeinteilungen.PlanPosPlanPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanLayoutSymbol',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueck',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.LFP1Symbol',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.Einzelpunkt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.Gebaeudeeingang',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.TSEinteilung.ToleranzstufePos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Nomenklatur.Gelaendename',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gebaeudeadressen.LokalisationsNameBenannte',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Pos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.BoFlaeche',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Kantonsgrenzen.Kantonsgrenzabschnitt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.LFP3Entstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.HoheitsgrenzpunktPosHoheitsgrenzpunktPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheSymbol',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnameObjektname_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie1.HFP1Nachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.DarstellungsflaecheDarstellungsflaeche_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.ProjGrundstueckEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('PLZOCH1LV95D.Nummerierungsbereiche.NBGeometrie',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6PLZ6_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.Grundstueck',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.Flaechenelement',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Flaechenelement',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.PLZ6',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Hoehen.HoehenpunktPosHoehenpunktPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Gemeindegrenzen.GemeindegrenzeGemeindegrenze_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ObjektnameObjektname_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.LiegenschaftLiegenschaft_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.GebaeudenummerGebaeudenummer_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Leitungsobjekt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.Netzkreuz',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.EinzelpunktPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.LinienelementSymbolLinienelementSymbol_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Liegenschaften.BergwerkBergwerk_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.SignalpunktPosSignalpunktPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie3.HFP3Entstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjObjektnamePos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.EONachfuehrung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rutschgebiete.Rutschung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.Punktelement',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.FlaechenelementSymbol',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Einzelobjekte.ObjektnummerPos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LinienelementLinienelement_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsVerbund',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Rohrleitungen.LeitungsobjektEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Bodenbedeckung.ProjBoFlaecheEntstehung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.PlanbeschriftungPosPlanbeschriftungPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.PLZOrtschaft.OrtschaftsName_Pos',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.Planrahmen.KoordinatenanschriftPosKoordinatenanschriftPos_von',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('DM01AVCH24LV95D.FixpunkteKategorie2.LFP2SymbolLFP2Symbol_von',NULL);
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie3_lfp3pos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelement',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_linienelement"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunkt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drohrleitungen_signalpunkt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_flaechenelement',NULL,'flaechenelement_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95drohrleitungen_leitungsobjekt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplanrahmen_planbeschriftungpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_nknachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dnomenklatur_nknachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2symbol',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie2_lfp2symbol"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunkt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_grenzpunkt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie2_hfp2"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunktpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drohrleitungen_signalpunktpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplanrahmen_darstellungsflaeche"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3symbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95drohrleitungen_rlnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_gebaeudenummerpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisation',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname',NULL,'ortschaftsname_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplzortschaft_ortschaft');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_bbnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsverbundtext',NULL,'ortschaftsverbundtext_von','ch.ehi.ili2db.foreignKey','plzoch1lv95dplzortschaft_ortschaftsverbund');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_liegenschaft',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_liegenschaft"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_strassenstueck"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschungpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drutschgebiete_rutschungpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_plangeometrie',NULL,'plangeometrie_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplaneinteilungen_plan');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL,'lfp2pos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie2_lfp2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dplzortschaft_ortschaftsname"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie3_lfp3"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschungpos',NULL,'rutschungpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95drutschgebiete_rutschung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2symbol',NULL,'lfp2symbol_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie2_lfp2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunkt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drohrleitungen_einzelpunkt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95drohrleitungen_rlnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplanrahmen_koordinatenanschriftpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_selbstrecht',NULL,'selbstrecht_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_grundstueck');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL,'darstellungsflaeche_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektname',NULL,'objektname_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_boflaeche');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c3Min','-200.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunktpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dhoehen_hoehenpunktpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummer',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_gebaeudenummer"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgemeindegrenzen_gemnachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_bergwerk',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_liegenschaft',NULL,'liegenschaft_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_grundstueck');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_bergwerk',NULL,'bergwerk_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_grundstueck');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_hausnummerpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplzortschaft_plz6nachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnamepos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_objektnamepos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendenamepos',NULL,'gelaendenamepos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dnomenklatur_gelaendename');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1symbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL,'linienelementsymbol_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_linienelement');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueck',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_grundstueck"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL,'hoheitsgrenzpunktpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelement',NULL,'linienelement_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'grundstueckpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_grundstueck');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_gebaeudeeingang"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_linienobjekt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplanrahmen_linienobjekt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_linienobjekt',NULL,'linienobjekt_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL,'projboflaechesymbol_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_projboflaeche');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftung',NULL,'planbeschriftung_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueck',NULL,'gesamteflaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsname',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_lokalisationsname"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunktpos',NULL,'hoehenpunktpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dhoehen_hoehenpunkt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsnamepos',NULL,'ortsnamepos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dnomenklatur_ortsname');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereich',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dnummerierngsbrche_nummerierungsbereich"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsnamepos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dnomenklatur_ortsnamepos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaft',NULL,'entstehung','ch.ehi.ili2db.foreignKey','plzoch1lv95dplzortschaft_osnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenlinie',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplanrahmen_koordinatenlinie"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurnamepos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dnomenklatur_flurnamepos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktsymbol',NULL,'grenzpunktsymbol_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_grenzpunkt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2symbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL,'leitungsobjektpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95drohrleitungen_leitungsobjekt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nbgeometrie',NULL,'nbgeometrie_von','ch.ehi.ili2db.foreignKey','plzoch1lv95dnummerierngsbrche_nummerierungsbereich');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktpos',NULL,'grenzpunktpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_grenzpunkt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_benanntesgebiet',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_benanntesgebiet"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname',NULL,'ortschaftsname_von','ch.ehi.ili2db.foreignKey','plzoch1lv95dplzortschaft_ortschaft');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelement',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_flaechenelement"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_gebnachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL,'projgemeindegrenze_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgemeindegrenzen_gemeinde');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL,'projobjektnamepos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_projobjektname');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'projgrundstueckpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_projgrundstueck');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL,'hausnummerpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL,'gebaeudenummerpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_gebaeudenummer');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsverbund',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplzortschaft_ortschaftsverbund"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL,'projgebaeudenummerpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_projgebaeudenummer');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudename',NULL,'gebaeudename_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drohrleitungen_leitungsobjektpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenlinie',NULL,'koordinatenlinie_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelobjekt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_eonachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL,'einzelpunktpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_einzelpunkt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunkt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_einzelpunkt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummer',NULL,'objektnummer_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_lsnachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL,'hfp1pos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie1_hfp1');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaeche',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_bbnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufepos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dtseinteilung_toleranzstufepos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplzortschaft_ortschaftsname_pos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1symbol',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie1_lfp1symbol"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_linienelementsymbol"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektnamepos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_objektnamepos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projliegenschaft',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_projliegenschaft"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueck',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_projgrundstueck"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dplzortschaft_plz6nachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_projobjektnamepos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_liegenschaft',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_linienelement',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drohrleitungen_linienelement"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsverbund',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dplzortschaft_ortschaftsverbund"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummerpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_objektnummerpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL,'hfp3pos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie3_hfp3');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL,'flaechenelementsymbol_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_flaechenelement');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drohrleitungen_punktelement"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereich',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dnummerierngsbrche_nummerierungsbereich"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'strassenstueck_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_lokalisation');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplanrahmen_planbeschriftung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummerpos',NULL,'objektnummerpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_objektnummer');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dhoehen_gelaendekante"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_punktelement',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_punktelement"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplanrahmen_planlayoutsymbol"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL,'planlayoutsymbol_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projselbstrecht',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dplzortschaft_plz6"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgemeindegrenzen_gemeindegrenze"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drutschgebiete_rutschung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaft',NULL,'ortschaft_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplzortschaft_ortschaftsverbund');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueck',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_lsnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendenamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktsymbol',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_grenzpunktsymbol"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie1_lfp1"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_boflaechesymbol"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisation',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_lokalisation"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projbergwerk',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudename',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_gebaeudename"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplzortschaft_plz6nachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummer',NULL,'gebaeudenummer_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_boflaeche');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelement',NULL,'flaechenelement_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie2_hfp2pos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaft',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dplzortschaft_ortschaft"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_flaechenelementsymbol"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_eonachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_einzelpunktpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'e_azimut','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projliegenschaft',NULL,'projliegenschaft_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_projgrundstueck');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'punktelement_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95drohrleitungen_leitungsobjekt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL,'lfp1pos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie1_lfp1');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projliegenschaft',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie1_hfp1"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummer',NULL,'projgebaeudenummer_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_projboflaeche');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueck',NULL,'gesamteflaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL,'gemeindegrenze_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgemeindegrenzen_gemeinde');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjekt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95drohrleitungen_rlnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'gebaeudenamepos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_gebaeudename');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_osnachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplzortschaft_osnachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie3_hfp3pos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_netzkreuz',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummerpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurname',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dnomenklatur_nknachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufe',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dtseinteilung_toleranzstufe"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunktpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drohrleitungen_einzelpunktpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.coordDimension','3');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projbergwerk',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'nummerierungsbereichpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dnummerierngsbrche_nummerierungsbereich');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektname',NULL,'objektname_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschungpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschrift',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplanrahmen_koordinatenanschrift"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsverbundtext',NULL,'ortschaftsverbundtext_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplzortschaft_ortschaftsverbund');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaft',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplzortschaft_ortschaft"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_gebnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_netzkreuz',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplanrahmen_netzkreuz"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_netzkreuz',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL,'gebaeudeeingang_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_lokalisation');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsname',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dnomenklatur_ortsname"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_einzelpunktpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurname',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dnomenklatur_flurname"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschung',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie1_lfp1pos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL,'einzelpunktpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_einzelpunkt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_gebaeudenamepos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dhoehen_hoehenpunkt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_bergwerk',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_bergwerk"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL,'ortschaftsname_pos_von','ch.ehi.ili2db.foreignKey','plzoch1lv95dplzortschaft_ortschaftsname');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_selbstrecht',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1symbol',NULL,'lfp1symbol_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie1_lfp1');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_punktelement',NULL,'punktelement_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_einzelobjekt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsname',NULL,'benannte','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_lokalisation');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgemeindegrenzen_projgemeindegrenze"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_bbnachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudeeingang',NULL,'lage','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_plangeometrie',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektname',NULL,'projobjektname_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_projboflaeche');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbezirksgrenzen_bezirksgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','3');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektname',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_objektname"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueck',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_lsnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_aussparung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dhoehen_aussparung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c3Max','5000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_linienelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projselbstrecht',NULL,'projselbstrecht_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_projgrundstueck');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschriftpos',NULL,'koordinatenanschriftpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplanrahmen_koordinatenanschrift');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_projboflaechesymbol"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dplzortschaft_ortschaftsname_pos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplanrahmen_planlayout"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie1_hfp1pos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6',NULL,'plz6_von','ch.ehi.ili2db.foreignKey','plzoch1lv95dplzortschaft_ortschaft');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummer',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_projgebaeudenummer"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktsymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_benanntesgebiet',NULL,'flaeche','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_planpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projbergwerk',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_projbergwerk"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudebeschreibung',NULL,'gebaeudebeschreibung_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_gebaeudeeingang');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunktpos',NULL,'einzelpunktpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95drohrleitungen_einzelpunkt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_linienelement',NULL,'linienelement_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95drohrleitungen_leitungsobjekt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektnamepos',NULL,'objektnamepos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_objektname');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projbergwerk',NULL,'projbergwerk_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_projgrundstueck');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drutschgebiete_rutschungpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nbgeometrie',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dnummerierngsbrche_nbgeometrie"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplzortschaft_plz6"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie2_lfp2pos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaechesymbol',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_projgrundstueckpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_aussparung',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL,'hfp2pos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie2_hfp2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nbgeometrie',NULL,'nbgeometrie_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dnummerierngsbrche_nummerierungsbereich');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projliegenschaft',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_selbstrecht',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_selbstrecht"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL,'boflaechesymbol_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_boflaeche');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendename',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dnomenklatur_gelaendename"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_netzkreuz',NULL,'netzkreuz_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaeche',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dbodenbedeckung_bbnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_rlnachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drohrleitungen_rlnachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'hilfslinie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_lokalisationsnamepos',NULL,'lokalisationsnamepos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_lokalisationsname');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaeche',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_selbstrecht',NULL,'flaechenmass','ch.ehi.ili2db.unit','m2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL,'planbeschriftungpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplanrahmen_planbeschriftung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_grenzpunktpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunktpos',NULL,'signalpunktpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95drohrleitungen_signalpunkt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaeche',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_boflaeche"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunkt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_einzelpunkt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_flaechenelement',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drohrleitungen_flaechenelement"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie2_lfp2"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_aussparung',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dhoehen_honachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_linienelementsymbol',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_plan',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplaneinteilungen_plan"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_projgemeindegrenze',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgemeindegrenzen_gemnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dhoehen_honachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c3Min','-200.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3symbol',NULL,'lfp3symbol_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie3_lfp3');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurnamepos',NULL,'flurnamepos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dnomenklatur_flurname');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsname_pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenanschrift',NULL,'koordinatenanschrift_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplanrahmen_planlayout');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_planpos',NULL,'planpos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplaneinteilungen_plan');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektname',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_objektname"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendenamepos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dnomenklatur_gelaendenamepos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsverbundtext',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplzortschaft_ortschaftsverbundtext"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplzortschaft_ortschaftsname"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planbeschriftungpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendenamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dliegenschaften_lsnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'nummerierungsbereichpos_von','ch.ehi.ili2db.foreignKey','plzoch1lv95dnummerierngsbrche_nummerierungsbereich');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelobjekt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_einzelobjekt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_osnachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dplzortschaft_osnachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsname',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_plangeometrie',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplaneinteilungen_plangeometrie"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_honachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dhoehen_honachfuehrung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_gelaendekante',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dhoehen_honachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_objektnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nummerierungsbereichpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projselbstrecht',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_projselbstrecht"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_planpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_eonachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaft',NULL,'flaeche','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_darstellungsflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projgebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnamepos',NULL,'objektnamepos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_objektname');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_flurname',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaftsverbundtext',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dplzortschaft_ortschaftsverbundtext"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_lfp2',NULL,'hoehegeom','ch.ehi.ili2db.unit','m');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_bergwerk',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'hilfslinie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaeche',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dlandesgrenzen_landesgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_ortschaft',NULL,'ortschaft_von','ch.ehi.ili2db.foreignKey','plzoch1lv95dplzortschaft_ortschaftsverbund');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6',NULL,'entstehung','ch.ehi.ili2db.foreignKey','plzoch1lv95dplzortschaft_plz6nachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nbgeometrie',NULL,'T_Type','ch.ehi.ili2db.types','["plzoch1lv95dnummerierngsbrche_nbgeometrie"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_signalpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_einzelpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dkantonsgrenzen_kantonsgrenzabschnitt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie3_hfp3"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6',NULL,'flaeche','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grundstueckpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dliegenschaften_grundstueckpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunktsymbol',NULL,'hoheitsgrenzpunktsymbol_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgemeindegrenzen_hoheitsgrenzpunkt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsname',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dnomenklatur_nknachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayoutsymbol',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'uebersichtplannullpunkt','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummer',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95deinzelobjekte_objektnummer"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_liegenschaft',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_hfp3pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_bbnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dnummerierngsbrche_nbgeometrie',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3pos',NULL,'lfp3pos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dfixpunktekatgrie3_lfp3');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_honachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_linienobjekt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_lfp1pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplaneinteilungen_planpos',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dplaneinteilungen_planpos"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjektpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_planlayout',NULL,'plannullpunkt','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'hilfslinie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_osnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnamepos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplanrahmen_koordinatenlinie',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie3_lfp3symbol',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie3_lfp3symbol"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_punktelement',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_ortsnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projgrundstueckpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaft',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplzortschaft_osnachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('plzoch1lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie2_hfp2pos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_boflaechesymbol',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projboflaeche',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_projboflaeche"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_gebaeudenummerpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6nachfuehrung',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufe',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dbodenbedeckung_projobjektname',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dbodenbedeckung_projobjektname"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktpos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_projselbstrecht',NULL,'geometrie','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_leitungsobjekt',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95drohrleitungen_leitungsobjekt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1pos',NULL,'ori','ch.ehi.ili2db.unit','Grads');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunkt',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95deinzelobjekte_eonachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_gebaeudenamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_objektnummerpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_nknachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c2Min','1070000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_benanntesgebiet',NULL,'benanntesgebiet_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dgebaeudeadressen_lokalisation');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95drohrleitungen_punktelement',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_ortschaftsname_pos',NULL,'ortschaftsname_pos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplzortschaft_ortschaftsname');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufepos',NULL,'toleranzstufepos_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dtseinteilung_toleranzstufe');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dplzortschaft_plz6',NULL,'plz6_von','ch.ehi.ili2db.foreignKey','dm01vch24lv95dplzortschaft_ortschaft');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2850000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dhoehen_hoehenpunkt',NULL,'geometrie','ch.ehi.ili2db.c3Max','5000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_strassenstueck',NULL,'anfangspunkt','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_lsnachfuehrung',NULL,'perimeter','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgemeindegrenzen_gemeinde',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dgemeindegrenzen_gemeinde"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dgebaeudeadressen_hausnummerpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_flaechenelementsymbol',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_einzelpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dliegenschaften_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dtseinteilung_toleranzstufepos',NULL,'pos','ch.ehi.ili2db.c1Min','2480000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95deinzelobjekte_punktelement',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dnomenklatur_gelaendename',NULL,'entstehung','ch.ehi.ili2db.foreignKey','dm01vch24lv95dnomenklatur_nknachfuehrung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung',NULL,'T_Type','ch.ehi.ili2db.types','["dm01vch24lv95dfixpunktekatgrie1_hfp1nachfuehrung"]');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('DM.01-AV-CH_LV95_24d_ili1.ili','1.0','DM01AVCH24LV95D','
TRANSFER INTERLIS1;

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!! Datenmodell 2001 der Amtlichen Vermessung "Bund" (DM.01-AV-CH)
!! beschrieben in INTERLIS Version 1 (SN 612030)
!!
!! Bundesamt fuer Landestopographie (swisstopo)
!! Eidg. Vermessungsdirektion (V+D)
!! CH-3084 Wabern
!! www.cadastre.ch und www.interlis.ch
!!
!! Version: 24 deutsch
!! Dateiname: DM.01-AV-CH_LV95_24d_ili1.ili (Datum: 04. Juni 2004)
!!
!! Das vorliegende Datenmodell gilt fuer den Bezugsrahmen "Landesvermessung 1903+
!! (LV95)".
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


MODEL DM01AVCH24LV95D

  DOMAIN

    LKoord = COORD2 2480000.000   1070000.000
                    2850000.000  1310000.000;

    HKoord = COORD3 2480000.000   1070000.000  -200.000
                    2850000.000  1310000.000  5000.000;

    Hoehe = DIM1      -200.000    5000.000;

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
      PEP, !! Provisorischen Ersatzprodukte
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
        WITHOUT OVERLAPS > 0.200;
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
        WITHOUT OVERLAPS > 0.200;
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
        WITHOUT OVERLAPS > 0.200;
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
        WITHOUT OVERLAPS > 0.200;
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
        WITHOUT OVERLAPS > 0.200;
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

    TABLE HFP3Nachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.200;
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
          uebrige_befestigte),
        humusiert (
          Acker_Wiese_Weide,
          Intensivkultur (
            Reben,
            uebrige_Intensivkultur),
          Gartenanlage,
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
          uebrige_bestockte),
        vegetationslos (
          Fels,
          Gletscher_Firn,
          Geroell_Sand,
          Abbau_Deponie,
          uebrige_vegetationslose));


    TABLE BBNachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.050;
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
        WITHOUT OVERLAPS > 0.050;
      Qualitaet: Qualitaetsstandard;
      Art: BBArt;
    NO IDENT
    END ProjBoFlaeche;

    TABLE ProjGebaeudenummer =
      ProjGebaeudenummer_von: -> ProjBoFlaeche // Art = Gebaeude //
                            ;!! Beziehung 1-mc
      Nummer: TEXT*12;  !! Vergabe durch Kanton (bzw. Gemeinde)
      !! GWR_EGID falls die Definition der Gebaeude mit jener des
      !! BFS uebereinstimmt
      GWR_EGID: OPTIONAL [1..999999999]; 
    NO IDENT
    END ProjGebaeudenummer;

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
        WITHOUT OVERLAPS > 0.050;
      Qualitaet: Qualitaetsstandard;
      Art: BBArt;
    NO IDENT
    END BoFlaeche;

    TABLE Gebaeudenummer =
      Gebaeudenummer_von: -> BoFlaeche // Art = Gebaeude //;  !! Beziehung 1-mc
      Nummer: TEXT*12;
      !! GWR_EGID falls die Definition der Gebaeude mit jener des
      !! BFS uebereinstimmt
      GWR_EGID: OPTIONAL [1..999999999];
    NO IDENT
    END Gebaeudenummer;

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
        Mauer,
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
        Mast_Antenne,
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
        schmaler_Weg,
        Hochspannungsfreileitung,
        Druckleitung,
        Bahngeleise,
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
        weitere); !! Keine Objekte in der Kategorie weitere, nur fuer Erweiterungen


    TABLE EONachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.050;
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
        WITHOUT OVERLAPS > 0.050;
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
        WITHOUT OVERLAPS > 0.200;
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
        WITHOUT OVERLAPS > 0.200;
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
        WITHOUT OVERLAPS > 0.200;
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
        WITHOUT OVERLAPS > 0.200;
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
        WITHOUT OVERLAPS > 0.050;
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
        WITHOUT OVERLAPS > 0.050
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
      ProjSelbstRecht_von: -> ProjGrundstueck // Art = Baurecht, Quellenrecht, Konzessionsrecht oder weitere//; 
                                 !! Beziehung 1-mc
     !! NummerTeilGrundstueck ist fuer Teil ProjGrundstueck noetig
      NummerTeilGrundstueck: OPTIONAL TEXT*12; 
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //
        WITHOUT OVERLAPS > 0.050
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
        WITHOUT OVERLAPS > 0.050
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
        WITHOUT OVERLAPS > 0.050
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
      SelbstRecht_von: -> Grundstueck // Art = Baurecht, Quellenrecht, Konzessionsrecht oder weitere//; 
                             !! Beziehung 1-mc
      !! NummerTeilGrundstueck ist fuer Teil Grundstueck noetig
      NummerTeilGrundstueck: OPTIONAL TEXT*12; 
      Geometrie: SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur LFP1, LFP2, LFP3, Grenzpunkt oder Hoheitsgrenzpunkt //
        WITHOUT OVERLAPS > 0.050
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
        WITHOUT OVERLAPS > 0.050
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
        WITHOUT OVERLAPS > 0.050;
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
        WITHOUT OVERLAPS > 0.050
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



 
  TOPIC Gemeindegrenzen =

    TABLE GEMNachfuehrung =
      NBIdent: TEXT*12;  !! Beziehung 1-m zu Nummerierungsbereich
      Identifikator: TEXT*12;  !! z.B. Nummer des technischen Dossiers
      Beschreibung: TEXT*30;
      Perimeter: OPTIONAL SURFACE WITH (STRAIGHTS, ARCS) VERTEX LKoord
        WITHOUT OVERLAPS > 0.050;
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
        WITHOUT OVERLAPS > 0.050;
    NO IDENT
    END ProjGemeindegrenze;

    TABLE Gemeindegrenze =  !! auch als Exklave moeglich
      Entstehung: -> GEMNachfuehrung
        // Gueltigkeit = gueltig // ;  !! Beziehung 1-mc
      Gemeindegrenze_von: -> Gemeinde;  !! Beziehung 1-m
      Geometrie: AREA WITH (STRAIGHTS, ARCS) VERTEX LKoord BASE
        // Geometrie nur Hoheitsgrenzpunkt
           wenn Linienart = rechtskraeftig oder streitig //
        WITHOUT OVERLAPS > 0.050
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
        WITHOUT OVERLAPS > 0.050;
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
        WITHOUT OVERLAPS > 0.200;
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
        WITHOUT OVERLAPS > 0.200;
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
        WITHOUT OVERLAPS > 0.500; !! DM01: zusaetzlich zur SN
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
        WITHOUT OVERLAPS > 0.500; 
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
      Anfangspunkt: OPTIONAL LKoord; !! DM01: zusaetzlich zur SN
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
        WITHOUT OVERLAPS > 0.050;
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

END DM01AVCH24LV95D.



FORMAT FREE;
!! FORMAT FIX WITH LINESIZE = 107, TIDSIZE = 16;



CODE
  BLANK = DEFAULT, UNDEFINED = DEFAULT, CONTINUE = DEFAULT;
  TID = ANY;
END.

','2019-10-04 14:54:54.961');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('PLZO-CH_LV95_1d_ili1.ili','1.0','PLZOCH1LV95D','
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

','2019-10-04 14:54:54.961');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','disable');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.1.0-aa1d00a37ee431852bdee6b990f34b3620f9c1c1');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','%ILI_FROM_DB;%XTF_DIR;http://models.interlis.ch/;%JAR_DIR');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.TidHandling','property');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.typeDiscriminator','always');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.importTabs','simple');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.BasketHandling','readWrite');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
