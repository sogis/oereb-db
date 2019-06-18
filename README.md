# OEREB Database

[![Build Status](https://travis-ci.com/schmandr/oereb-db.svg?branch=master)](https://travis-ci.com/schmandr/oereb-db)
[![Docker Pulls](https://img.shields.io/docker/pulls/schmandr/oereb-db.svg)](https://hub.docker.com/r/schmandr/oereb-db)

Docker image providing a PostGIS database with OEREB tables

## Building and testing the image

The image is built and tested automatically by Travis CI and is available from https://hub.docker.com/r/schmandr/oereb-db.

If you want to build the image manually:

```
docker build -t schmandr/oereb-db:latest .
```

If you want to test the image manually:

```
docker-compose -f docker-compose.test.yml --project-name ci up -d --build
docker logs -f ci_sut_1
docker wait ci_sut_1
```

## Running the image

Run the command below for running the image. The meaning of the environment variables used is as follows:

- `PG_DATABASE`: The name of the database to create
- `PG_LOCALE`: Locale for the database to create
- `PG_PRIMARY_PORT`: The port PostgreSQL is running on
- `PG_MODE`: If set to primary, PostgreSQL runs as primary instance (as opposed to a standby or replica instance)
- `PG_USER`: This is the database user that owns all database objects in the PG_DATABASE database (except system objects); this user is granted all privileges on the PG_DATABASE database
- `PG_PRIMARY_USER`: The database user that replicates data to a possible standby DB instance (not used currently, but this environment variable is mandatory)
- `PG_ROOT_PASSWORD`: The password of the postgres database user (the built-in database superuser)
- `PG_WRITE_USER`: The database user that has write (and read) privileges for all tables in the database (except system tables); use this user for importing data into the database
- `PG_READ_USER`: The database user that has read privileges for all database tables; use this user for querying data

```
docker run --rm --name oereb-db -p 54321:5432 --hostname primary \
-e PG_DATABASE=oereb -e PG_LOCALE=de_CH.UTF-8 -e PG_PRIMARY_PORT=5432 -e PG_MODE=primary \
-e PG_USER=admin -e PG_PASSWORD=admin \
-e PG_PRIMARY_USER=repl -e PG_PRIMARY_PASSWORD=repl \
-e PG_ROOT_PASSWORD=secret \
-e PG_WRITE_USER=gretl -e PG_WRITE_PASSWORD=gretl \
-e PG_READ_USER=ogc_server -e PG_READ_PASSWORD=ogc_server \
-v /tmp:/pgdata \
schmandr/oereb-db:latest
```

This places the PostgreSQL data under /tmp/primary. If you want to keep the data longer than just until you log out, run instead e.g.:
```
mkdir --mode=0777 ~/crunchy-pgdata
docker run --rm --name oereb-db -p 54321:5432 --hostname primary \
-e PG_DATABASE=oereb -e PG_LOCALE=de_CH.UTF-8 -e PG_PRIMARY_PORT=5432 -e PG_MODE=primary \
-e PG_USER=admin -e PG_PASSWORD=admin \
-e PG_PRIMARY_USER=repl -e PG_PRIMARY_PASSWORD=repl \
-e PG_ROOT_PASSWORD=secret \
-e PG_WRITE_USER=gretl -e PG_WRITE_PASSWORD=gretl \
-e PG_READ_USER=ogc_server -e PG_READ_PASSWORD=ogc_server \
-v ~/crunchy-pgdata:/pgdata \
schmandr/oereb-db:latest
```

## Logging into the container

```
docker exec -it oereb-db /bin/bash
```

## Connecting to the database (example for querying data)

```
psql -h localhost -p 54321 -d oereb -U ogc_server
```

## Creating or updating the SQL scripts that populate the database

Run `ILI2PG_PATH=/opt/ili2pg-4.1.0/ ./create_schema_sql_scripts.sh` for generating the SQL scripts that create the DB schemas and tables. (Set `ILI2PG_PATH` according to your installation.) In case only a specific model needs an update, adapt the script to your needs before running it.

After updating the SQL scripts, remember to commit the changes to the repository. And to re-generate the `pgconf/setup.sql` file with the following command:

```
cat sql/setup_original.sql sql/set_role.sql sql/begin_transaction.sql \
sql/oereb.sql sql/oereb_staging.sql \
sql/dm01avso24.sql sql/plzoch1d.sql \
sql/commit_transaction.sql > pgconf/setup.sql
```

## Commands for importing data manually (example)

```
curl -O https://data.geo.admin.ch/ch.swisstopo-vd.ortschaftenverzeichnis_plz/PLZO_INTERLIS_LV95.zip
unzip PLZO_INTERLIS_LV95.zip PLZO_INTERLIS_LV95/PLZO_ITF_LV95.itf
ILI2PG_PATH=/opt/ili2pg-4.1.0/ && java -jar $ILI2PG_PATH/ili2pg-4.1.0.jar \
--dbhost localhost --dbport 54321 --dbdatabase oereb --dbusr gretl --dbpwd gretl \
--dbschema plzoch1d --models PLZOCH1LV95D \
--dataset ch --deleteData --import PLZO_INTERLIS_LV95/PLZO_ITF_LV95.itf
```
