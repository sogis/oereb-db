#!/bin/bash

declare -A schemas
schemas[oereb]="OeREBKRMtrsfr_V1_1;OeREBKRMvs_V1_1"
schemas[dm01avso24]=DM01AVSO24LV95
schemas[plzoch1d]=PLZOCH1LV95D

for env in "stage" "live"; do
  for schema in ${!schemas[@]}; do
    schemaname="${env}_${schema}"
    java -jar $ILI2PG_PATH/ili2pg-4.1.0.jar \
    --dbschema ${schemaname} --models ${schemas[${schema}]} \
    --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
    --createBasketCol --createDatasetCol \
    --createImportTabs --createscript sql/${schemaname}.sql
  done
done
