#!/bin/bash
#script for the creation of view for each combination of oereb subthema and geometry types
#to be used by QGIS server

# Create Arrays for all OEREB topics and their corresponding geometry types
declare -a pg_schemas=("stage" "live")
# bash 4 doesn't support nested associative arrays, so we need to fake them with string and eval
# see also https://stackoverflow.com/questions/6149679/multidimensional-associative-arrays-in-bash
declare -A pg_views
declare -A pg_view
pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="Grundnutzung_Zonenflaeche"; pg_view[geom]="flaeche"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_grundnutzung_flaeche]=${string}
pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="Nutzungsplanung_Ueberlagernd"; pg_view[geom]="flaeche"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_ueberlagernd_flaeche]=${string}
pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="Nutzungsplanung_Ueberlagernd"; pg_view[geom]="linie"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_ueberlagernd_linie]=${string}
pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="Nutzungsplanung_Ueberlagernd"; pg_view[geom]="punkt"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_ueberlagernd_punkt]=${string}
pg_view[thema]="Nutzungsplanung"; pg_view[subthema]="Nutzungsplanung_Sondernutzungsplaene"; pg_view[geom]="flaeche"
string=$(declare -p pg_view)
pg_views[nutzungsplanung_sondernutzungsplaene_flaeche]=${string}
pg_view[thema]="WeiteresThema"; pg_view[subthema]="ch.so.Einzelschutz"; pg_view[geom]="flaeche"
string=$(declare -p pg_view)
pg_views[weiteres_thema_einzelschutz_flaeche]=${string}
pg_view[thema]="WeiteresThema"; pg_view[subthema]="ch.so.Einzelschutz"; pg_view[geom]="punkt"
string=$(declare -p pg_view)
pg_views[weiteres_thema_einzelschutz_punkt]=${string}
pg_view[thema]="Waldgrenzen"; pg_view[subthema]=""; pg_view[geom]="linie"
string=$(declare -p pg_view)
pg_views[waldgrenzen_linie]=${string}

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


-- view '$view_name' with thema '${pg_view[thema]}', subthema '${pg_view[subthema]}' and geometry '${pg_view[geom]}
DROP VIEW IF EXISTS $schema.vw_oerebwms_$view_name;
CREATE OR replace VIEW $schema.vw_oerebwms_$view_name
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.${pg_view[geom]}_lv95 AS geom,
         eigbe.aussage,
         eigbe.thema,
         eigbe.subthema AS sub_thema,
         eigbe.weiteresthema AS weiteres_thema,
         eigbe.rechtsstatus,
         eigbe.publiziertab AS publiziert_ab,
         zust.aname     AS zustaendige_stelle,
         zust.amtimweb  AS amt_im_web,
         geom.metadatengeobasisdaten,
         eigbe.artcode,
         eigbe.artcodeliste
  FROM   $schema.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join $schema.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join $schema.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = '${pg_view[thema]}'
         AND eigbe.subthema = '${pg_view[subthema]}'
         AND geom.${pg_view[geom]}_lv95 IS NOT NULL;

EOM
)
      printf "%s" "$sql"
    done
  let "ctr++"
  done
