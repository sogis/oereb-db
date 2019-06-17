-- Check if PostGIS is installed"
SELECT postgis_version();

-- Check if the uuid-ossp extenstion is installed
SELECT uuid_generate_v1();
