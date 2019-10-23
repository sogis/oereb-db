

-- schema nr 1 is stage
---------------------------      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_ueberlagernd_linie' with thema 'Nutzungsplanung', subthema 'ch.SO.NutzungsplanungUeberlagernd' and geometry 'linie'
DROP TABLE IF EXISTS stage.oerebwms_nutzungsplanung_ueberlagernd_linie;
CREATE TABLE IF NOT EXISTS stage.oerebwms_nutzungsplanung_ueberlagernd_linie (
	t_id int8,
	geom geometry(LINESTRING, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_nutzungsplanung_ueberlagernd_linie_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_linie_geom
  ON stage.oerebwms_nutzungsplanung_ueberlagernd_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_linie_artcode
  ON stage.oerebwms_nutzungsplanung_ueberlagernd_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'weiteres_thema_einzelschutz_flaeche' with thema 'WeiteresThema', subthema 'ch.SO.Einzelschutz' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_weiteres_thema_einzelschutz_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_weiteres_thema_einzelschutz_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_weiteres_thema_einzelschutz_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_flaeche_geom
  ON stage.oerebwms_weiteres_thema_einzelschutz_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_flaeche_artcode
  ON stage.oerebwms_weiteres_thema_einzelschutz_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'weiteres_thema_einzelschutz_punkt' with thema 'WeiteresThema', subthema 'ch.SO.Einzelschutz' and geometry 'punkt'
DROP TABLE IF EXISTS stage.oerebwms_weiteres_thema_einzelschutz_punkt;
CREATE TABLE IF NOT EXISTS stage.oerebwms_weiteres_thema_einzelschutz_punkt (
	t_id int8,
	geom geometry(POINT, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_weiteres_thema_einzelschutz_punkt_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_punkt_geom
  ON stage.oerebwms_weiteres_thema_einzelschutz_punkt
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_punkt_artcode
  ON stage.oerebwms_weiteres_thema_einzelschutz_punkt
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'grundwasserschutzzonen_flaeche' with thema 'Grundwasserschutzzonen', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_grundwasserschutzzonen_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_grundwasserschutzzonen_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_grundwasserschutzzonen_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_grundwasserschutzzonen_flaeche_geom
  ON stage.oerebwms_grundwasserschutzzonen_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_grundwasserschutzzonen_flaeche_artcode
  ON stage.oerebwms_grundwasserschutzzonen_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'belastete_standorte_flaeche' with thema 'BelasteteStandorte', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_belastete_standorte_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_belastete_standorte_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_belastete_standorte_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_belastete_standorte_flaeche_geom
  ON stage.oerebwms_belastete_standorte_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_belastete_standorte_flaeche_artcode
  ON stage.oerebwms_belastete_standorte_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'belastete_standorte_militaer_flaeche' with thema 'BelasteteStandorteMilitaer', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_belastete_standorte_militaer_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_belastete_standorte_militaer_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_belastete_standorte_militaer_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_belastete_standorte_militaer_flaeche_geom
  ON stage.oerebwms_belastete_standorte_militaer_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_belastete_standorte_militaer_flaeche_artcode
  ON stage.oerebwms_belastete_standorte_militaer_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_baulinien_linie' with thema 'Nutzungsplanung', subthema 'ch.SO.Baulinien' and geometry 'linie'
DROP TABLE IF EXISTS stage.oerebwms_nutzungsplanung_baulinien_linie;
CREATE TABLE IF NOT EXISTS stage.oerebwms_nutzungsplanung_baulinien_linie (
	t_id int8,
	geom geometry(LINESTRING, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_nutzungsplanung_baulinien_linie_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_baulinien_linie_geom
  ON stage.oerebwms_nutzungsplanung_baulinien_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_baulinien_linie_artcode
  ON stage.oerebwms_nutzungsplanung_baulinien_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_sondernutzungsplaene_flaeche' with thema 'Nutzungsplanung', subthema 'ch.SO.NutzungsplanungSondernutzungsplaene' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_nutzungsplanung_sondernutzungsplaene_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche_geom
  ON stage.oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche_artcode
  ON stage.oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'laermempfindlichkeitsstufen_flaeche' with thema 'Laermemfindlichkeitsstufen', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_laermempfindlichkeitsstufen_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_laermempfindlichkeitsstufen_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_laermempfindlichkeitsstufen_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_laermempfindlichkeitsstufen_flaeche_geom
  ON stage.oerebwms_laermempfindlichkeitsstufen_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_laermempfindlichkeitsstufen_flaeche_artcode
  ON stage.oerebwms_laermempfindlichkeitsstufen_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'waldabstandslinien_linie' with thema 'Waldabstandslinien', subthema '-' and geometry 'linie'
DROP TABLE IF EXISTS stage.oerebwms_waldabstandslinien_linie;
CREATE TABLE IF NOT EXISTS stage.oerebwms_waldabstandslinien_linie (
	t_id int8,
	geom geometry(LINESTRING, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_waldabstandslinien_linie_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_waldabstandslinien_linie_geom
  ON stage.oerebwms_waldabstandslinien_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_waldabstandslinien_linie_artcode
  ON stage.oerebwms_waldabstandslinien_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'waldgrenzen_linie' with thema 'Waldgrenzen', subthema '-' and geometry 'linie'
DROP TABLE IF EXISTS stage.oerebwms_waldgrenzen_linie;
CREATE TABLE IF NOT EXISTS stage.oerebwms_waldgrenzen_linie (
	t_id int8,
	geom geometry(LINESTRING, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_waldgrenzen_linie_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_waldgrenzen_linie_geom
  ON stage.oerebwms_waldgrenzen_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_waldgrenzen_linie_artcode
  ON stage.oerebwms_waldgrenzen_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_ueberlagernd_flaeche' with thema 'Nutzungsplanung', subthema 'ch.SO.NutzungsplanungUeberlagernd' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_nutzungsplanung_ueberlagernd_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_nutzungsplanung_ueberlagernd_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_nutzungsplanung_ueberlagernd_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_flaeche_geom
  ON stage.oerebwms_nutzungsplanung_ueberlagernd_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_flaeche_artcode
  ON stage.oerebwms_nutzungsplanung_ueberlagernd_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'belastete_standorte_oev_flaeche' with thema 'BelasteteStandorteOeffentlicherVerkehr', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_belastete_standorte_oev_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_belastete_standorte_oev_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_belastete_standorte_oev_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_belastete_standorte_oev_flaeche_geom
  ON stage.oerebwms_belastete_standorte_oev_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_belastete_standorte_oev_flaeche_artcode
  ON stage.oerebwms_belastete_standorte_oev_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_ueberlagernd_punkt' with thema 'Nutzungsplanung', subthema 'ch.SO.NutzungsplanungUeberlagernd' and geometry 'punkt'
DROP TABLE IF EXISTS stage.oerebwms_nutzungsplanung_ueberlagernd_punkt;
CREATE TABLE IF NOT EXISTS stage.oerebwms_nutzungsplanung_ueberlagernd_punkt (
	t_id int8,
	geom geometry(POINT, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_nutzungsplanung_ueberlagernd_punkt_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_punkt_geom
  ON stage.oerebwms_nutzungsplanung_ueberlagernd_punkt
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_punkt_artcode
  ON stage.oerebwms_nutzungsplanung_ueberlagernd_punkt
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'belastete_standorte_zivile_flugplaetze_flaeche' with thema 'BelasteteStandorteZivileFlugplaetze', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_belastete_standorte_zivile_flugplaetze_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_belastete_standorte_zivile_flugplaetze_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_belastete_standorte_zivile_flugplaetze_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_belastete_standorte_zivile_flugplaetze_flaeche_geom
  ON stage.oerebwms_belastete_standorte_zivile_flugplaetze_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_belastete_standorte_zivile_flugplaetze_flaeche_artcode
  ON stage.oerebwms_belastete_standorte_zivile_flugplaetze_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_grundnutzung_flaeche' with thema 'Nutzungsplanung', subthema 'ch.SO.NutzungsplanungGrundnutzung' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_nutzungsplanung_grundnutzung_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_nutzungsplanung_grundnutzung_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_nutzungsplanung_grundnutzung_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_grundnutzung_flaeche_geom
  ON stage.oerebwms_nutzungsplanung_grundnutzung_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_grundnutzung_flaeche_artcode
  ON stage.oerebwms_nutzungsplanung_grundnutzung_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'grundwasserschutzareale_flaeche' with thema 'Grundwasserschutzareale', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS stage.oerebwms_grundwasserschutzareale_flaeche;
CREATE TABLE IF NOT EXISTS stage.oerebwms_grundwasserschutzareale_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_stage_grundwasserschutzareale_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_grundwasserschutzareale_flaeche_geom
  ON stage.oerebwms_grundwasserschutzareale_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_grundwasserschutzareale_flaeche_artcode
  ON stage.oerebwms_grundwasserschutzareale_flaeche
  USING btree ( artcode );


-- schema nr 2 is live
---------------------------      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_ueberlagernd_linie' with thema 'Nutzungsplanung', subthema 'ch.SO.NutzungsplanungUeberlagernd' and geometry 'linie'
DROP TABLE IF EXISTS live.oerebwms_nutzungsplanung_ueberlagernd_linie;
CREATE TABLE IF NOT EXISTS live.oerebwms_nutzungsplanung_ueberlagernd_linie (
	t_id int8,
	geom geometry(LINESTRING, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_nutzungsplanung_ueberlagernd_linie_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_linie_geom
  ON live.oerebwms_nutzungsplanung_ueberlagernd_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_linie_artcode
  ON live.oerebwms_nutzungsplanung_ueberlagernd_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'weiteres_thema_einzelschutz_flaeche' with thema 'WeiteresThema', subthema 'ch.SO.Einzelschutz' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_weiteres_thema_einzelschutz_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_weiteres_thema_einzelschutz_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_weiteres_thema_einzelschutz_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_flaeche_geom
  ON live.oerebwms_weiteres_thema_einzelschutz_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_flaeche_artcode
  ON live.oerebwms_weiteres_thema_einzelschutz_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'weiteres_thema_einzelschutz_punkt' with thema 'WeiteresThema', subthema 'ch.SO.Einzelschutz' and geometry 'punkt'
DROP TABLE IF EXISTS live.oerebwms_weiteres_thema_einzelschutz_punkt;
CREATE TABLE IF NOT EXISTS live.oerebwms_weiteres_thema_einzelschutz_punkt (
	t_id int8,
	geom geometry(POINT, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_weiteres_thema_einzelschutz_punkt_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_punkt_geom
  ON live.oerebwms_weiteres_thema_einzelschutz_punkt
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_punkt_artcode
  ON live.oerebwms_weiteres_thema_einzelschutz_punkt
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'grundwasserschutzzonen_flaeche' with thema 'Grundwasserschutzzonen', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_grundwasserschutzzonen_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_grundwasserschutzzonen_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_grundwasserschutzzonen_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_grundwasserschutzzonen_flaeche_geom
  ON live.oerebwms_grundwasserschutzzonen_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_grundwasserschutzzonen_flaeche_artcode
  ON live.oerebwms_grundwasserschutzzonen_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'belastete_standorte_flaeche' with thema 'BelasteteStandorte', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_belastete_standorte_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_belastete_standorte_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_belastete_standorte_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_belastete_standorte_flaeche_geom
  ON live.oerebwms_belastete_standorte_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_belastete_standorte_flaeche_artcode
  ON live.oerebwms_belastete_standorte_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'belastete_standorte_militaer_flaeche' with thema 'BelasteteStandorteMilitaer', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_belastete_standorte_militaer_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_belastete_standorte_militaer_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_belastete_standorte_militaer_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_belastete_standorte_militaer_flaeche_geom
  ON live.oerebwms_belastete_standorte_militaer_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_belastete_standorte_militaer_flaeche_artcode
  ON live.oerebwms_belastete_standorte_militaer_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_baulinien_linie' with thema 'Nutzungsplanung', subthema 'ch.SO.Baulinien' and geometry 'linie'
DROP TABLE IF EXISTS live.oerebwms_nutzungsplanung_baulinien_linie;
CREATE TABLE IF NOT EXISTS live.oerebwms_nutzungsplanung_baulinien_linie (
	t_id int8,
	geom geometry(LINESTRING, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_nutzungsplanung_baulinien_linie_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_baulinien_linie_geom
  ON live.oerebwms_nutzungsplanung_baulinien_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_baulinien_linie_artcode
  ON live.oerebwms_nutzungsplanung_baulinien_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_sondernutzungsplaene_flaeche' with thema 'Nutzungsplanung', subthema 'ch.SO.NutzungsplanungSondernutzungsplaene' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_nutzungsplanung_sondernutzungsplaene_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche_geom
  ON live.oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche_artcode
  ON live.oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'laermempfindlichkeitsstufen_flaeche' with thema 'Laermemfindlichkeitsstufen', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_laermempfindlichkeitsstufen_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_laermempfindlichkeitsstufen_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_laermempfindlichkeitsstufen_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_laermempfindlichkeitsstufen_flaeche_geom
  ON live.oerebwms_laermempfindlichkeitsstufen_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_laermempfindlichkeitsstufen_flaeche_artcode
  ON live.oerebwms_laermempfindlichkeitsstufen_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'waldabstandslinien_linie' with thema 'Waldabstandslinien', subthema '-' and geometry 'linie'
DROP TABLE IF EXISTS live.oerebwms_waldabstandslinien_linie;
CREATE TABLE IF NOT EXISTS live.oerebwms_waldabstandslinien_linie (
	t_id int8,
	geom geometry(LINESTRING, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_waldabstandslinien_linie_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_waldabstandslinien_linie_geom
  ON live.oerebwms_waldabstandslinien_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_waldabstandslinien_linie_artcode
  ON live.oerebwms_waldabstandslinien_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'waldgrenzen_linie' with thema 'Waldgrenzen', subthema '-' and geometry 'linie'
DROP TABLE IF EXISTS live.oerebwms_waldgrenzen_linie;
CREATE TABLE IF NOT EXISTS live.oerebwms_waldgrenzen_linie (
	t_id int8,
	geom geometry(LINESTRING, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_waldgrenzen_linie_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_waldgrenzen_linie_geom
  ON live.oerebwms_waldgrenzen_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_waldgrenzen_linie_artcode
  ON live.oerebwms_waldgrenzen_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_ueberlagernd_flaeche' with thema 'Nutzungsplanung', subthema 'ch.SO.NutzungsplanungUeberlagernd' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_nutzungsplanung_ueberlagernd_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_nutzungsplanung_ueberlagernd_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_nutzungsplanung_ueberlagernd_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_flaeche_geom
  ON live.oerebwms_nutzungsplanung_ueberlagernd_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_flaeche_artcode
  ON live.oerebwms_nutzungsplanung_ueberlagernd_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'belastete_standorte_oev_flaeche' with thema 'BelasteteStandorteOeffentlicherVerkehr', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_belastete_standorte_oev_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_belastete_standorte_oev_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_belastete_standorte_oev_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_belastete_standorte_oev_flaeche_geom
  ON live.oerebwms_belastete_standorte_oev_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_belastete_standorte_oev_flaeche_artcode
  ON live.oerebwms_belastete_standorte_oev_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_ueberlagernd_punkt' with thema 'Nutzungsplanung', subthema 'ch.SO.NutzungsplanungUeberlagernd' and geometry 'punkt'
DROP TABLE IF EXISTS live.oerebwms_nutzungsplanung_ueberlagernd_punkt;
CREATE TABLE IF NOT EXISTS live.oerebwms_nutzungsplanung_ueberlagernd_punkt (
	t_id int8,
	geom geometry(POINT, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_nutzungsplanung_ueberlagernd_punkt_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_punkt_geom
  ON live.oerebwms_nutzungsplanung_ueberlagernd_punkt
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_punkt_artcode
  ON live.oerebwms_nutzungsplanung_ueberlagernd_punkt
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'belastete_standorte_zivile_flugplaetze_flaeche' with thema 'BelasteteStandorteZivileFlugplaetze', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_belastete_standorte_zivile_flugplaetze_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_belastete_standorte_zivile_flugplaetze_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_belastete_standorte_zivile_flugplaetze_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_belastete_standorte_zivile_flugplaetze_flaeche_geom
  ON live.oerebwms_belastete_standorte_zivile_flugplaetze_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_belastete_standorte_zivile_flugplaetze_flaeche_artcode
  ON live.oerebwms_belastete_standorte_zivile_flugplaetze_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'nutzungsplanung_grundnutzung_flaeche' with thema 'Nutzungsplanung', subthema 'ch.SO.NutzungsplanungGrundnutzung' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_nutzungsplanung_grundnutzung_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_nutzungsplanung_grundnutzung_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_nutzungsplanung_grundnutzung_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_grundnutzung_flaeche_geom
  ON live.oerebwms_nutzungsplanung_grundnutzung_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_grundnutzung_flaeche_artcode
  ON live.oerebwms_nutzungsplanung_grundnutzung_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- table 'grundwasserschutzareale_flaeche' with thema 'Grundwasserschutzareale', subthema '-' and geometry 'flaeche'
DROP TABLE IF EXISTS live.oerebwms_grundwasserschutzareale_flaeche;
CREATE TABLE IF NOT EXISTS live.oerebwms_grundwasserschutzareale_flaeche (
	t_id int8,
	geom geometry(POLYGON, 2056),
	aussage text,
	dokumente json,
	thema varchar(255),
	sub_thema varchar(60),
	weiteres_thema varchar(120),
	rechtsstatus varchar(255),
	publiziertab date,
	zustaendige_stelle text,
	amt_im_web varchar(1023),
	artcode varchar(40),
	artcode_liste varchar(1023),
	CONSTRAINT pk_live_grundwasserschutzareale_flaeche_t_id PRIMARY KEY (t_id)
);

-- spatial index
CREATE INDEX in_oerebwms_grundwasserschutzareale_flaeche_geom
  ON live.oerebwms_grundwasserschutzareale_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_grundwasserschutzareale_flaeche_artcode
  ON live.oerebwms_grundwasserschutzareale_flaeche
  USING btree ( artcode );
