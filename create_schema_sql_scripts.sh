#!/bin/bash

declare -A models
models[DM01AVSO24LV95]=agi_avdpool
models[PLZOCH1LV95D]=agi_plzortschaft

for model in ${!models[@]}; do
  java -jar $ILI2PG_PATH/ili2pg-4.1.0.jar \
  --dbschema ${models[${model}]} --models ${model} \
  --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
  --createBasketCol --createDatasetCol \
  --createImportTabs --createscript ${models[${model}]}.sql
done
