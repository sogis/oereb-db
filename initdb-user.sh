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
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb 
    TO gretl;

    GRANT SELECT ON ALL TABLES IN SCHEMA 
        stage, 
        live, 
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb 
    TO gretl;

    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA 
        stage, 
        live, 
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb 
    TO gretl;

    GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA 
        stage, 
        live, 
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb 
    TO gretl;

    CREATE USER dmluser LOGIN ENCRYPTED PASSWORD :'PG_READ_PWD'; 
    GRANT USAGE ON SCHEMA 
        stage, 
        live,
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb 
    TO dmluser;

    GRANT SELECT ON ALL TABLES IN SCHEMA 
        stage, 
        live,
        awjf_statische_waldgrenze,
        awjf_statische_waldgrenzen_oereb  
    TO dmluser;
EOSQL
