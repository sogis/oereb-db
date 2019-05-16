GRANT USAGE
ON SCHEMA agi_oereb, agi_oereb_staging, agi_avdpool, agi_plzortschaft
TO public, :PG_WRITE_USER, :PG_READ_USER;

-- Grant read permissions
GRANT SELECT
ON ALL TABLES IN SCHEMA agi_oereb, agi_oereb_staging, agi_avdpool, agi_plzortschaft
TO public, :PG_READ_USER;

-- Grant write permissions
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA agi_oereb, agi_oereb_staging, agi_avdpool, agi_plzortschaft
TO :PG_WRITE_USER;
GRANT USAGE
ON ALL SEQUENCES IN SCHEMA agi_oereb, agi_oereb_staging, agi_avdpool, agi_plzortschaft
TO :PG_WRITE_USER;
