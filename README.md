# oereb-db
Configuration for running a Docker PostGIS database with ÖREB tables

## Running the image

```
docker run --rm --name oereb_db -p 54321:5432 \
-e PG_DATABASE=oereb -e PG_PRIMARY_PORT=5432 -e PG_MODE=primary \
-e PG_USER=admin -e PG_PASSWORD=admin \
-e PG_PRIMARY_USER=repl -e PG_PRIMARY_PASSWORD=repl \
-e PG_ROOT_PASSWORD=secret \
-e PG_WRITE_USER=gretl -e PG_WRITE_PASSWORD=gretl \
-e PG_READ_USER=ogc_server -e PG_READ_PASSWORD=ogc_server \
-v $(pwd):/pgconf \
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

```
ILI2PG_PATH=/opt/ili2pg-4.1.0/

declare -A models
models[DM01AVSO24LV95]=agi_avdpool
models[PLZOCH1LV95D]=agi_plzortschaft

for model in ${!models[@]}; do
#  echo ${model} ${models[${model}]}
  java -jar $ILI2PG_PATH/ili2pg-4.1.0.jar \
  --dbschema ${models[${model}]} --models ${model} \
  --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
  --createBasketCol --createDatasetCol \
  --createImportTabs --createscript ${models[${model}]}.sql
done
```
