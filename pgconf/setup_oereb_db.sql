DROP DATABASE :PG_DATABASE;

CREATE DATABASE :PG_DATABASE;

GRANT ALL PRIVILEGES ON DATABASE :PG_DATABASE TO :PG_USER;

\c :PG_DATABASE

-- Default Crunchy extensions, with those not wanted for OEREB commented out:
CREATE EXTENSION postgis;
--CREATE EXTENSION postgis_topology;
CREATE EXTENSION fuzzystrmatch;
--CREATE EXTENSION postgis_tiger_geocoder;
CREATE EXTENSION pg_stat_statements;
--CREATE EXTENSION pgaudit;
--CREATE EXTENSION plr;

-- Additional extensions needed for OEREB:
CREATE EXTENSION "uuid-ossp";
--CREATE EXTENSION plpythonu; -- Not needed right now
