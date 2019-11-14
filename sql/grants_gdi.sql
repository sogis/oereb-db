-- Grant privileges on schemas
GRANT USAGE
ON SCHEMA live, stage
TO public, :PG_WRITE_USER, :PG_READ_USER;


-- Grant read privileges
GRANT SELECT
ON ALL TABLES IN SCHEMA live, stage
TO public, :PG_READ_USER;

-- Grant read privileges for views
GRANT SELECT
ON ALL VIEWS IN SCHEMA live, stage
TO public, :PG_READ_USER;

-- Grant write privileges
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA live, stage
TO :PG_WRITE_USER;

GRANT USAGE
ON ALL SEQUENCES IN SCHEMA live, stage
TO :PG_WRITE_USER;
