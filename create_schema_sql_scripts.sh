#!/bin/bash

models_ili1="DM01AVCH24LV95D;PLZOCH1LV95D"
models_ili2="OeREBKRM_V1_1;OeREBKRMtrsfr_V1_1;OeREBKRMvs_V1_1;SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822;OeREB_ExtractAnnex_V1_0"

for env in "stage" "live"; do
  java -jar ${ILI2PG_PATH} \
  --dbschema ${env} --models $models_ili1 \
  --strokeArcs --createFk --createFkIdx --createGeomIdx --createTidCol --createBasketCol --createTypeDiscriminator --createImportTabs --createMetaInfo --disableNameOptimization --defaultSrsCode 2056 --createNumChecks \
  --createscript "sql/${env}_ili1.sql"
  # the option --createUnique is omitted for these models as it's not suitable for DM01AVCH24LV95D, see https://github.com/sogis/oereb-db/issues/5, and it's not needed for PLZOCH1LV95D

  java -jar ${ILI2PG_PATH} \
  --dbschema ${env} --models $models_ili2 \
  --modeldir http://models.interlis.ch/\;. \
  --strokeArcs --createFk --createFkIdx --createGeomIdx --createTidCol --createBasketCol --createTypeDiscriminator --createImportTabs --createMetaInfo --disableNameOptimization --defaultSrsCode 2056 --createNumChecks \
  --createUnique \
  --createscript "sql/${env}_ili2.sql"
done
