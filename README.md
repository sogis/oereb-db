# oereb-db
Configuration for running a Docker PostGIS database with ÖREB tables

## Building the image

```
docker build -t oereb-db:latest .
```

## Running the image

```
docker run --rm --name oereb-db -p 54321:5432 --hostname primary \
-e PG_DATABASE=oereb -e PG_LOCALE=de_CH.UTF-8 -e PG_PRIMARY_PORT=5432 -e PG_MODE=primary \
-e PG_USER=admin -e PG_PASSWORD=admin \
-e PG_PRIMARY_USER=repl -e PG_PRIMARY_PASSWORD=repl \
-e PG_ROOT_PASSWORD=secret \
-e PG_WRITE_USER=gretl -e PG_WRITE_PASSWORD=gretl \
-e PG_READ_USER=ogc_server -e PG_READ_PASSWORD=ogc_server \
-v /tmp:/pgdata \
oereb-db:latest
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
oereb-db:latest
```

## Logging into the container

```
docker exec -it oereb-db /bin/bash
```

## Connecting to the database

```
psql -h localhost -p 54321 -d oereb -U admin
```

## Creating or updating the SQL scripts that populate the database

Run `ILI2PG_PATH=/opt/ili2pg-4.1.0/ ./create_schema_sql_scripts.sh` for generating the SQL scripts that create the DB schemas and tables. (Set `ILI2PG_PATH` according to your installation.) In case only a specific model needs an update, adapt the script to your needs before running it.

After updating the SQL scripts, remember to commit the changes to the repository. And to re-generate the `pgconf/setup.sql` file with the following command:

```
cat sql/setup_original.sql sql/set_role.sql sql/begin_transaction.sql \
sql/agi_oereb.sql sql/agi_oereb_staging.sql \
sql/agi_avdpool.sql sql/agi_plzortschaft.sql \
sql/commit_transaction.sql > pgconf/setup.sql
```

## Commands for importing data manually (example)

```
curl -O https://data.geo.admin.ch/ch.swisstopo-vd.ortschaftenverzeichnis_plz/PLZO_INTERLIS_LV95.zip
unzip PLZO_INTERLIS_LV95.zip PLZO_INTERLIS_LV95/PLZO_ITF_LV95.itf
ILI2PG_PATH=/opt/ili2pg-4.1.0/ && java -jar $ILI2PG_PATH/ili2pg-4.1.0.jar \
--dbhost localhost --dbport 54321 --dbdatabase oereb --dbusr gretl --dbpwd gretl \
--dbschema agi_plzortschaft --models PLZOCH1LV95D \
--dataset ch --deleteData --import PLZO_INTERLIS_LV95/PLZO_ITF_LV95.itf
```
