-- Create additional DB users
CREATE USER :PG_WRITE_USER WITH PASSWORD :'PG_WRITE_PASSWORD';
CREATE USER :PG_READ_USER WITH PASSWORD :'PG_READ_PASSWORD';


-- Revoke some default privileges
REVOKE TEMPORARY ON DATABASE :PG_DATABASE FROM PUBLIC;
REVOKE CREATE ON SCHEMA public FROM PUBLIC;


-- Grant privileges on schemas
GRANT USAGE
ON SCHEMA live, stage
TO public, :PG_WRITE_USER, :PG_READ_USER;


-- Grant read privileges
GRANT SELECT
ON ALL TABLES IN SCHEMA live, stage
TO public, :PG_READ_USER;


-- Grant write privileges
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA live, stage
TO :PG_WRITE_USER;

GRANT USAGE
ON ALL SEQUENCES IN SCHEMA live, stage
TO :PG_WRITE_USER;


-- PG_WRITE_USER must be the owner of the materialized views
-- so he can refresh them. See https://github.com/sogis/oereb-db/issues/12
-- for a SQL command that may be used to generate these commands.
ALTER TABLE live.vw_oerebwms_laermempfindlichkeitsstufen_flaeche OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_nutzungsplanung_baulinien_linie OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_nutzungsplanung_ueberlagernd_linie OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_waldabstandslinien_linie OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_waldgrenzen_linie OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_weiteres_thema_einzelschutz_flaeche OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_weiteres_thema_einzelschutz_punkt OWNER TO :PG_WRITE_USER;
ALTER TABLE live.vw_oerebwms_municipality_with_plrc OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_laermempfindlichkeitsstufen_flaeche OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_nutzungsplanung_baulinien_linie OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_nutzungsplanung_ueberlagernd_linie OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_waldabstandslinien_linie OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_waldgrenzen_linie OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_weiteres_thema_einzelschutz_flaeche OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_weiteres_thema_einzelschutz_punkt OWNER TO :PG_WRITE_USER;
ALTER TABLE stage.vw_oerebwms_municipality_with_plrc OWNER TO :PG_WRITE_USER;
