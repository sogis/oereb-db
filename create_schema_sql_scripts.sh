#!/bin/bash

declare -A schemas
schemas[ili2]="OeREBKRM_V1_1;OeREBKRMtrsfr_V1_1;OeREBKRMvs_V1_1;SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822;OeREB_ExtractAnnex_V1_0"
schemas[ili1]="DM01AVCH24LV95D;PLZOCH1LV95D"

for env in "stage" "live"; do
  for schema in ${!schemas[@]}; do
    schemaname="${env}_${schema}"
    java -jar ${ILI2PG_PATH} \
    --dbschema ${env} --models ${schemas[${schema}]} \
    --strokeArcs --createFk --createFkIdx --createGeomIdx   --createTidCol --createBasketCol --createTypeDiscriminator --createImportTabs --createMetaInfo --disableNameOptimization --defaultSrsCode 2056 --createUnique --createNumChecks \
    --createscript sql/${schemaname}.sql
  done
done
