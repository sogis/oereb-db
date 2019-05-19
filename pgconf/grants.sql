-- Create additional DB users
CREATE USER :PG_WRITE_USER WITH PASSWORD :'PG_WRITE_PASSWORD';
CREATE USER :PG_READ_USER WITH PASSWORD :'PG_READ_PASSWORD';

-- Revoke some default privileges
REVOKE TEMPORARY ON DATABASE :PG_DATABASE FROM PUBLIC;
REVOKE CREATE ON SCHEMA public FROM PUBLIC;

-- Grant privileges on schemas
GRANT USAGE
ON SCHEMA agi_oereb, agi_oereb_staging, agi_avdpool, agi_plzortschaft
TO public, :PG_WRITE_USER, :PG_READ_USER;

-- Grant read privileges
GRANT SELECT
ON ALL TABLES IN SCHEMA agi_oereb, agi_oereb_staging, agi_avdpool, agi_plzortschaft
TO public, :PG_READ_USER;

-- Grant write privileges
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA agi_oereb, agi_oereb_staging, agi_avdpool, agi_plzortschaft
TO :PG_WRITE_USER;
GRANT USAGE
ON ALL SEQUENCES IN SCHEMA agi_oereb, agi_oereb_staging, agi_avdpool, agi_plzortschaft
TO :PG_WRITE_USER;
