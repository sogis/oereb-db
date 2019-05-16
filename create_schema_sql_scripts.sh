#!/bin/bash

declare -A schemas
schemas[agi_avdpool]=DM01AVSO24LV95
schemas[agi_plzortschaft]=PLZOCH1LV95D

for schema in ${!schemas[@]}; do
  java -jar $ILI2PG_PATH/ili2pg-4.1.0.jar \
  --dbschema ${schema} --models ${schemas[${schema}]} \
  --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
  --createBasketCol --createDatasetCol \
  --createImportTabs --createscript ${schema}.sql
done
