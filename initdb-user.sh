#!/bin/bash
set -e

psql --set=PG_READ_PWD="$PG_READ_PWD" --set=PG_WRITE_PWD="$PG_WRITE_PWD" --set=PG_GRETL_PWD="$PG_GRETL_PWD" -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    SET password_encryption = md5;

    CREATE ROLE ddluser LOGIN SUPERUSER PASSWORD :'PG_WRITE_PWD';
    CREATE USER gretl LOGIN ENCRYPTED PASSWORD :'PG_GRETL_PWD';
    GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_DB TO ddluser, gretl; 

    GRANT ALL ON SCHEMA 
        stage, 
        live, 
        agi_oereb_konfiguration,
        afu_gewaesserschutz,
        afu_grundwasserschutz_oereb,
        arp_naturreservate,
        arp_naturreservate_oereb,
        afu_geotope,
        afu_geotope_oereb,
        ada_denkmalschutz,
        ada_denkmalschutz_oereb,
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb,
        agi_dm01avso24,
        arp_nutzungsplanung,
        arp_nutzungsplanung_kanton,
        arp_nutzungsplanung_oereb,
        arp_planungszonen_oereb,
        afu_gewaesserraum_oereb
    TO gretl;

    GRANT SELECT ON ALL TABLES IN SCHEMA 
        stage, 
        live, 
        agi_oereb_konfiguration,
        afu_gewaesserschutz,
        afu_grundwasserschutz_oereb,
        arp_naturreservate,
        arp_naturreservate_oereb,
        afu_geotope,
        afu_geotope_oereb,
        ada_denkmalschutz,
        ada_denkmalschutz_oereb,
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb,
        agi_dm01avso24,
        arp_nutzungsplanung,
        arp_nutzungsplanung_kanton,
        arp_nutzungsplanung_oereb,
        arp_planungszonen_oereb,
        afu_gewaesserraum_oereb
    TO gretl;

    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA 
        stage, 
        live, 
        agi_oereb_konfiguration,
        afu_gewaesserschutz,
        afu_grundwasserschutz_oereb,
        arp_naturreservate,
        arp_naturreservate_oereb,
        afu_geotope,
        afu_geotope_oereb,
        ada_denkmalschutz,
        ada_denkmalschutz_oereb,
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb,
        agi_dm01avso24,
        arp_nutzungsplanung,
        arp_nutzungsplanung_kanton,
        arp_nutzungsplanung_oereb,
        arp_planungszonen_oereb,
        afu_gewaesserraum_oereb
    TO gretl;

    GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA 
        stage, 
        live, 
        agi_oereb_konfiguration,
        afu_gewaesserschutz,
        afu_grundwasserschutz_oereb,
        arp_naturreservate,
        arp_naturreservate_oereb,
        afu_geotope,
        afu_geotope_oereb,
        ada_denkmalschutz,
        ada_denkmalschutz_oereb,
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb,
        agi_dm01avso24,
        arp_nutzungsplanung,
        arp_nutzungsplanung_kanton,
        arp_nutzungsplanung_oereb,
        arp_planungszonen_oereb,
        afu_gewaesserraum_oereb
    TO gretl;

    CREATE USER dmluser LOGIN ENCRYPTED PASSWORD :'PG_READ_PWD'; 
    GRANT USAGE ON SCHEMA 
        stage, 
        live,
        agi_oereb_konfiguration,
        afu_gewaesserschutz,
        afu_grundwasserschutz_oereb,
        arp_naturreservate,
        arp_naturreservate_oereb,
        afu_geotope,
        afu_geotope_oereb,
        ada_denkmalschutz,
        ada_denkmalschutz_oereb,
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb,
        agi_dm01avso24,
        arp_nutzungsplanung,
        arp_nutzungsplanung_kanton,
        arp_nutzungsplanung_oereb,
        arp_planungszonen_oereb,
        afu_gewaesserraum_oereb
    TO dmluser;

    GRANT SELECT ON ALL TABLES IN SCHEMA 
        stage, 
        live,
        agi_oereb_konfiguration,
        afu_gewaesserschutz,
        afu_grundwasserschutz_oereb,
        arp_naturreservate,
        arp_naturreservate_oereb,
        afu_geotope,
        afu_geotope_oereb,
        ada_denkmalschutz,
        ada_denkmalschutz_oereb,
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb,
        agi_dm01avso24,
        arp_nutzungsplanung,
        arp_nutzungsplanung_kanton,
        arp_nutzungsplanung_oereb,
        arp_planungszonen_oereb,
        afu_gewaesserraum_oereb
    TO dmluser;
EOSQL
