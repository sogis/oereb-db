# oereb-db
Configuration for running a Docker PostGIS database with ÖREB tables

## Running the image

```
docker run --rm --name oereb_db -p 54321:5432 \
-e PG_DATABASE=oereb -e PG_LOCALE=en_US.utf8 -e PG_PRIMARY_PORT=5432 -e PG_MODE=primary \
-e PG_USER=admin -e PG_PASSWORD=admin \
-e PG_PRIMARY_USER=repl -e PG_PRIMARY_PASSWORD=repl \
-e PG_ROOT_PASSWORD=secret \
-e PG_WRITE_USER=gretl -e PG_WRITE_PASSWORD=gretl \
-e PG_READ_USER=ogc_server -e PG_READ_PASSWORD=ogc_server \
-v $(pwd)/pgconf:/pgconf \
crunchydata/crunchy-postgres-gis:centos7-11.2-2.3.1
```

## Logging into the container

```
docker exec -it oereb_db /bin/bash
```

## Connecting to the database

```
psql -h localhost -p 54321 -d oereb -U admin
```

## Creating or updating the SQL scripts that populate the database

Run `ILI2PG_PATH=/opt/ili2pg-4.1.0/ ./create_schema_sql_scripts.sh` for generating the SQL scripts that create the DB schemas and tables. (Set `ILI2PG_PATH` according to your installation.) In case only a specific model needs an update, adapt the script to your needs before running it.

After updating the SQL scripts, remember to commit the changes to the repository.
