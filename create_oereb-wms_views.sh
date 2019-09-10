#!/usr/bin/env bash
#script for the creation of view for each combination of oereb subthema and geometry types
#to be used by QGIS server

# Create Arrays for all OEREB topics and their corresponding geometry types
declare -a pg_schemas=("stage" "live")
# bash 4 doesn't support nested associative arrays, so we need to fake them with string and eval
# see also https://stackoverflow.com/questions/6149679/multidimensional-associative-arrays-in-bash

# if subthema is empty, use "-"
declare -A pg_views
declare -A pg_view
pg_view[thema]="Laermemfindlichkeitsstufen"; pg_view[subthema]="-"; pg_view[geom]="flaeche"
string=$(declare -p pg_view)
pg_views[laermempfindlichkeitsstufen_flaeche]=${string}

pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="ch.so.Nutzungsplanung.NutzungsplanungGrundnutzung"; pg_view[geom]="flaeche"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_grundnutzung_flaeche]=${string}

pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="ch.so.Nutzungsplanung.NutzungsplanungUeberlagernd"; pg_view[geom]="flaeche"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_ueberlagernd_flaeche]=${string}

pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="ch.so.Nutzungsplanung.NutzungsplanungUeberlagernd"; pg_view[geom]="linie"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_ueberlagernd_linie]=${string}

pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="ch.so.Nutzungsplanung.NutzungsplanungUeberlagernd"; pg_view[geom]="punkt"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_ueberlagernd_punkt]=${string}

pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="ch.so.Nutzungsplanung.NutzungsplanungSondernutzungsplaene"; pg_view[geom]="flaeche"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_sondernutzungsplaene_flaeche]=${string}

pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="ch.so.Nutzungsplanung.Baulinien"; pg_view[geom]="linie"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_baulinien_linie]=${string}

pg_view[thema]="WeiteresThema"; pg_view[subthema]="ch.so.Einzelschutz"; pg_view[geom]="flaeche"
string=$(declare -p pg_view)
pg_views[weiteres_thema_einzelschutz_flaeche]=${string}

pg_view[thema]="WeiteresThema"; pg_view[subthema]="ch.so.Einzelschutz"; pg_view[geom]="punkt"
string=$(declare -p pg_view)
pg_views[weiteres_thema_einzelschutz_punkt]=${string}

pg_view[thema]="Waldgrenzen"; pg_view[subthema]="-"; pg_view[geom]="linie"
string=$(declare -p pg_view)
pg_views[waldgrenzen_linie]=${string}

pg_view[thema]="Waldabstandslinien"; pg_view[subthema]="-"; pg_view[geom]="linie"
string=$(declare -p pg_view)
pg_views[waldabstandslinien_linie]=${string}

declare -i ctr=1

#loop over each pg_schema
for schema in "${pg_schemas[@]}"
  do
  printf "\n\n-- schema nr $ctr is $schema\n---------------------------" 
  for view_name in "${!pg_views[@]}"
    do
      eval "${pg_views[$view_name]}"
      #printf "view '$view_name' with thema '${pg_view[thema]}', subthema '${pg_view[subthema]}' and geometry '${pg_view[geom]}'\n"
      sql=$(cat << EOM
      
-- -----------------------------------------------------------------------------
-- materialized view '$view_name' with thema '${pg_view[thema]}', subthema '${pg_view[subthema]}' and geometry '${pg_view[geom]}'
DROP MATERIALIZED VIEW IF EXISTS $schema.vw_oerebwms_$view_name;
CREATE MATERIALIZED VIEW IF NOT EXISTS $schema.vw_oerebwms_$view_name AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        $schema.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
    WHERE
        ursprung != hinweis

    UNION ALL
  
    SELECT 
        x.ursprung, 
        x.hinweis, 
        parents||t1.hinweis, 
        t1.hinweis AS last_ursprung, 
        x."depth" + 1
    FROM 
        x 
        INNER JOIN $schema.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
        ON (last_ursprung = t1.ursprung)
    WHERE 
        t1.hinweis IS NOT NULL
)
,
flattened_documents AS 
(
    SELECT 
        DISTINCT ON (x.last_ursprung, x.ursprung)
        x.ursprung AS top_level_dokument,
        x.last_ursprung AS t_id,
        dokument.t_ili_tid AS t_ili_tid,  
        dokument.t_type AS t_type,
        dokument.titel_de AS titel,
        dokument.offiziellertitel_de AS offiziellertitel,
        dokument.abkuerzung_de AS abkuerzung,
        dokument.offiziellenr AS offiziellenr,
        dokument.kanton AS kanton,
        dokument.gemeinde AS gemeinde,
        dokument.rechtsstatus AS rechtsstatus,
        dokument.publiziertab AS publiziertab,
        url.textimweb AS textimweb
    FROM 
        x
        LEFT JOIN $schema.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                $schema.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN $schema.oerebkrm_v1_1_multilingualuri AS multilingualuri
                ON localiseduri.oerbkrm_v1__mltlngluri_localisedtext = multilingualuri.t_id
            WHERE
                localiseduri.alanguage = 'de'
        ) AS url
        ON url.dokument_t_id = dokument.t_id
    WHERE
        last_ursprung NOT IN
        (
            SELECT 
                DISTINCT ON (eigentumsbeschraenkung.t_id)
                eigentumsbeschraenkung.t_id
            FROM
                $schema.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN $schema.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
                ON eigentumsbeschraenkung.t_id = hinweisvorschrift.eigentumsbeschraenkung
        )
    UNION ALL
    
    -- Hinzufügen der direkt verlinkten Dokumente.
    SELECT 
        dokument.t_id AS top_level_dokument,
        dokument.t_id,
        dokument.t_ili_tid AS t_ili_tid,  
        dokument.t_type AS t_type,
        dokument.titel_de AS titel,
        dokument.offiziellertitel_de AS offiziellertitel,
        dokument.abkuerzung_de AS abkuerzung,
        dokument.offiziellenr AS offiziellenr,
        dokument.kanton AS kanton,
        dokument.gemeinde AS gemeinde,
        dokument.rechtsstatus AS rechtsstatus,
        dokument.publiziertab AS publiziertab,
        url.textimweb AS textimweb
    FROM
        $schema.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                $schema.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN $schema.oerebkrm_v1_1_multilingualuri AS multilingualuri
                ON localiseduri.oerbkrm_v1__mltlngluri_localisedtext = multilingualuri.t_id
            WHERE
                localiseduri.alanguage = 'de'
        ) AS url
        ON url.dokument_t_id = dokument.t_id
    WHERE
        dokument.t_id IN 
        (
            SELECT 
                DISTINCT ON (hinweisvorschrift.vorschrift_oerbkrmvs_v1_1vorschriften_dokument)
                hinweisvorschrift.vorschrift_oerbkrmvs_v1_1vorschriften_dokument
            FROM
                $schema.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN $schema.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
                ON eigentumsbeschraenkung.t_id = hinweisvorschrift.eigentumsbeschraenkung
        )
)
,
-- remove duplicate documents with distinct first, then group them.
json_documents AS 
(
    SELECT
        DISTINCT ON (eigentumsbeschraenkung, flattened_documents.t_id)
        hinweisvorschrift.eigentumsbeschraenkung,
        json_strip_nulls(row_to_json(flattened_documents)) AS dokumente
        
    FROM  
        flattened_documents
        LEFT JOIN $schema.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
        ON hinweisvorschrift.vorschrift_oerbkrmvs_v1_1vorschriften_dokument = flattened_documents.top_level_dokument
    WHERE
        eigentumsbeschraenkung IS NOT NULL
)
,
grouped_json_documents AS
(
    SELECT
        eigentumsbeschraenkung,
        json_agg(dokumente) AS dokumente
    FROM
        json_documents
    GROUP BY
        eigentumsbeschraenkung
)
SELECT
    geometrie.t_id AS t_id,
    geometrie.${pg_view[geom]}_lv95 AS geom,
    eigentumsbeschraenkung.aussage_de AS aussage,
    grouped_json_documents.dokumente AS dokumente,
    eigentumsbeschraenkung.thema,
    eigentumsbeschraenkung.subthema AS sub_thema,
    eigentumsbeschraenkung.weiteresthema AS weiteres_thema,
    eigentumsbeschraenkung.rechtsstatus,
    eigentumsbeschraenkung.publiziertab,
    zustaendigestelle.aname_de AS zustaendige_stelle,
    zustaendigestelle.amtimweb AS amt_im_web,
    eigentumsbeschraenkung.artcode,
    eigentumsbeschraenkung.artcodeliste AS artcode_liste
FROM
    $schema.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN $schema.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN $schema.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = '${pg_view[thema]}'
EOM
)
      if [ ${pg_view[subthema]} != '-' ]; then
        sql+=$(cat << EOM
 AND
    eigentumsbeschraenkung.subthema = '${pg_view[subthema]}'
EOM
)
      fi
      sql+=$(cat << EOM
 AND
    geometrie.${pg_view[geom]}_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_${view_name}_geom
  ON $schema.vw_oerebwms_$view_name
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_${view_name}_artcode
  ON $schema.vw_oerebwms_$view_name
  USING btree ( artcode );
EOM
)
      printf "%s\n" "$sql"
    done
  let "ctr++"
  done
