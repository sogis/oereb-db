

-- schema nr 1 is stage
---------------------------      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_ueberlagernd_linie' with thema 'Nutzungsplanung', subthema 'NutzungsplanungUeberlagernd' and geometry 'linie'
DROP MATERIALIZED VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_ueberlagernd_linie;
CREATE MATERIALIZED VIEW IF NOT EXISTS stage.vw_oerebwms_nutzungsplanung_ueberlagernd_linie AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.linie_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    stage.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'NutzungsplanungUeberlagernd'
    AND
    geometrie.linie_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_linie_geom
  ON stage.vw_oerebwms_nutzungsplanung_ueberlagernd_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_linie_artcode
  ON stage.vw_oerebwms_nutzungsplanung_ueberlagernd_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'weiteres_thema_einzelschutz_flaeche' with thema 'WeiteresThema', subthema 'ch.so.Einzelschutz' and geometry 'flaeche'
DROP MATERIALIZED VIEW IF EXISTS stage.vw_oerebwms_weiteres_thema_einzelschutz_flaeche;
CREATE MATERIALIZED VIEW IF NOT EXISTS stage.vw_oerebwms_weiteres_thema_einzelschutz_flaeche AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.flaeche_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    stage.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'WeiteresThema'
    AND
    eigentumsbeschraenkung.subthema = 'ch.so.Einzelschutz'
    AND
    geometrie.flaeche_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_flaeche_geom
  ON stage.vw_oerebwms_weiteres_thema_einzelschutz_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_flaeche_artcode
  ON stage.vw_oerebwms_weiteres_thema_einzelschutz_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'weiteres_thema_einzelschutz_punkt' with thema 'WeiteresThema', subthema 'ch.so.Einzelschutz' and geometry 'punkt'
DROP MATERIALIZED VIEW IF EXISTS stage.vw_oerebwms_weiteres_thema_einzelschutz_punkt;
CREATE MATERIALIZED VIEW IF NOT EXISTS stage.vw_oerebwms_weiteres_thema_einzelschutz_punkt AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.punkt_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    stage.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'WeiteresThema'
    AND
    eigentumsbeschraenkung.subthema = 'ch.so.Einzelschutz'
    AND
    geometrie.punkt_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_punkt_geom
  ON stage.vw_oerebwms_weiteres_thema_einzelschutz_punkt
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_punkt_artcode
  ON stage.vw_oerebwms_weiteres_thema_einzelschutz_punkt
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_baulinien_linie' with thema 'Nutzungsplanung', subthema 'Baulinien' and geometry 'linie'
DROP MATERIALIZED VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_baulinien_linie;
CREATE MATERIALIZED VIEW IF NOT EXISTS stage.vw_oerebwms_nutzungsplanung_baulinien_linie AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.linie_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    stage.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'Baulinien'
    AND
    geometrie.linie_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_baulinien_linie_geom
  ON stage.vw_oerebwms_nutzungsplanung_baulinien_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_baulinien_linie_artcode
  ON stage.vw_oerebwms_nutzungsplanung_baulinien_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_sondernutzungsplaene_flaeche' with thema 'Nutzungsplanung', subthema 'NutzungsplanungSondernutzungsplaene' and geometry 'flaeche'
DROP MATERIALIZED VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche;
CREATE MATERIALIZED VIEW IF NOT EXISTS stage.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.flaeche_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    stage.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'NutzungsplanungSondernutzungsplaene'
    AND
    geometrie.flaeche_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche_geom
  ON stage.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche_artcode
  ON stage.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'waldgrenzen_linie' with thema 'Waldgrenzen', subthema '' and geometry 'linie'
DROP MATERIALIZED VIEW IF EXISTS stage.vw_oerebwms_waldgrenzen_linie;
CREATE MATERIALIZED VIEW IF NOT EXISTS stage.vw_oerebwms_waldgrenzen_linie AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.linie_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    stage.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Waldgrenzen'
    AND
    eigentumsbeschraenkung.subthema = ''
    AND
    geometrie.linie_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_waldgrenzen_linie_geom
  ON stage.vw_oerebwms_waldgrenzen_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_waldgrenzen_linie_artcode
  ON stage.vw_oerebwms_waldgrenzen_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_ueberlagernd_flaeche' with thema 'Nutzungsplanung', subthema 'NutzungsplanungUeberlagernd' and geometry 'flaeche'
DROP MATERIALIZED VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche;
CREATE MATERIALIZED VIEW IF NOT EXISTS stage.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.flaeche_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    stage.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'NutzungsplanungUeberlagernd'
    AND
    geometrie.flaeche_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_flaeche_geom
  ON stage.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_flaeche_artcode
  ON stage.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_ueberlagernd_punkt' with thema 'Nutzungsplanung', subthema 'NutzungsplanungUeberlagernd' and geometry 'punkt'
DROP MATERIALIZED VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt;
CREATE MATERIALIZED VIEW IF NOT EXISTS stage.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.punkt_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    stage.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'NutzungsplanungUeberlagernd'
    AND
    geometrie.punkt_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_punkt_geom
  ON stage.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_punkt_artcode
  ON stage.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_grundnutzung_flaeche' with thema 'Nutzungsplanung', subthema 'NutzungsplanungGrundnutzung' and geometry 'flaeche'
DROP MATERIALIZED VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche;
CREATE MATERIALIZED VIEW IF NOT EXISTS stage.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN stage.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        stage.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                stage.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN stage.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.flaeche_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    stage.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN stage.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'NutzungsplanungGrundnutzung'
    AND
    geometrie.flaeche_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_grundnutzung_flaeche_geom
  ON stage.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_grundnutzung_flaeche_artcode
  ON stage.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche
  USING btree ( artcode );


-- schema nr 2 is live
---------------------------      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_ueberlagernd_linie' with thema 'Nutzungsplanung', subthema 'NutzungsplanungUeberlagernd' and geometry 'linie'
DROP MATERIALIZED VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_ueberlagernd_linie;
CREATE MATERIALIZED VIEW IF NOT EXISTS live.vw_oerebwms_nutzungsplanung_ueberlagernd_linie AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.linie_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    live.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN live.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'NutzungsplanungUeberlagernd'
    AND
    geometrie.linie_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_linie_geom
  ON live.vw_oerebwms_nutzungsplanung_ueberlagernd_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_linie_artcode
  ON live.vw_oerebwms_nutzungsplanung_ueberlagernd_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'weiteres_thema_einzelschutz_flaeche' with thema 'WeiteresThema', subthema 'ch.so.Einzelschutz' and geometry 'flaeche'
DROP MATERIALIZED VIEW IF EXISTS live.vw_oerebwms_weiteres_thema_einzelschutz_flaeche;
CREATE MATERIALIZED VIEW IF NOT EXISTS live.vw_oerebwms_weiteres_thema_einzelschutz_flaeche AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.flaeche_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    live.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN live.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'WeiteresThema'
    AND
    eigentumsbeschraenkung.subthema = 'ch.so.Einzelschutz'
    AND
    geometrie.flaeche_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_flaeche_geom
  ON live.vw_oerebwms_weiteres_thema_einzelschutz_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_flaeche_artcode
  ON live.vw_oerebwms_weiteres_thema_einzelschutz_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'weiteres_thema_einzelschutz_punkt' with thema 'WeiteresThema', subthema 'ch.so.Einzelschutz' and geometry 'punkt'
DROP MATERIALIZED VIEW IF EXISTS live.vw_oerebwms_weiteres_thema_einzelschutz_punkt;
CREATE MATERIALIZED VIEW IF NOT EXISTS live.vw_oerebwms_weiteres_thema_einzelschutz_punkt AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.punkt_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    live.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN live.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'WeiteresThema'
    AND
    eigentumsbeschraenkung.subthema = 'ch.so.Einzelschutz'
    AND
    geometrie.punkt_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_punkt_geom
  ON live.vw_oerebwms_weiteres_thema_einzelschutz_punkt
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_weiteres_thema_einzelschutz_punkt_artcode
  ON live.vw_oerebwms_weiteres_thema_einzelschutz_punkt
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_baulinien_linie' with thema 'Nutzungsplanung', subthema 'Baulinien' and geometry 'linie'
DROP MATERIALIZED VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_baulinien_linie;
CREATE MATERIALIZED VIEW IF NOT EXISTS live.vw_oerebwms_nutzungsplanung_baulinien_linie AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.linie_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    live.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN live.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'Baulinien'
    AND
    geometrie.linie_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_baulinien_linie_geom
  ON live.vw_oerebwms_nutzungsplanung_baulinien_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_baulinien_linie_artcode
  ON live.vw_oerebwms_nutzungsplanung_baulinien_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_sondernutzungsplaene_flaeche' with thema 'Nutzungsplanung', subthema 'NutzungsplanungSondernutzungsplaene' and geometry 'flaeche'
DROP MATERIALIZED VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche;
CREATE MATERIALIZED VIEW IF NOT EXISTS live.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.flaeche_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    live.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN live.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'NutzungsplanungSondernutzungsplaene'
    AND
    geometrie.flaeche_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche_geom
  ON live.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche_artcode
  ON live.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'waldgrenzen_linie' with thema 'Waldgrenzen', subthema '' and geometry 'linie'
DROP MATERIALIZED VIEW IF EXISTS live.vw_oerebwms_waldgrenzen_linie;
CREATE MATERIALIZED VIEW IF NOT EXISTS live.vw_oerebwms_waldgrenzen_linie AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.linie_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    live.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN live.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Waldgrenzen'
    AND
    eigentumsbeschraenkung.subthema = ''
    AND
    geometrie.linie_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_waldgrenzen_linie_geom
  ON live.vw_oerebwms_waldgrenzen_linie
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_waldgrenzen_linie_artcode
  ON live.vw_oerebwms_waldgrenzen_linie
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_ueberlagernd_flaeche' with thema 'Nutzungsplanung', subthema 'NutzungsplanungUeberlagernd' and geometry 'flaeche'
DROP MATERIALIZED VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche;
CREATE MATERIALIZED VIEW IF NOT EXISTS live.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.flaeche_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    live.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN live.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'NutzungsplanungUeberlagernd'
    AND
    geometrie.flaeche_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_flaeche_geom
  ON live.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_flaeche_artcode
  ON live.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_ueberlagernd_punkt' with thema 'Nutzungsplanung', subthema 'NutzungsplanungUeberlagernd' and geometry 'punkt'
DROP MATERIALIZED VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt;
CREATE MATERIALIZED VIEW IF NOT EXISTS live.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.punkt_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    live.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN live.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'NutzungsplanungUeberlagernd'
    AND
    geometrie.punkt_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_punkt_geom
  ON live.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_ueberlagernd_punkt_artcode
  ON live.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt
  USING btree ( artcode );
      
-- -----------------------------------------------------------------------------
-- materialized view 'nutzungsplanung_grundnutzung_flaeche' with thema 'Nutzungsplanung', subthema 'NutzungsplanungGrundnutzung' and geometry 'flaeche'
DROP MATERIALIZED VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche;
CREATE MATERIALIZED VIEW IF NOT EXISTS live.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche AS 
WITH RECURSIVE x(ursprung, hinweis, parents, last_ursprung, depth) AS 
(
    SELECT 
        ursprung, 
        hinweis, 
        ARRAY[ursprung] AS parents, 
        ursprung AS last_ursprung, 
        0 AS "depth" 
    FROM 
        live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente
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
        INNER JOIN live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente t1 
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
        LEFT JOIN live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        ON dokument.t_id = x.last_ursprung
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        live.oerbkrmvs_v1_1vorschriften_dokument AS dokument
        LEFT JOIN 
        (
            SELECT
                atext AS textimweb,
                oerbkrmvs_vrftn_dkment_textimweb AS dokument_t_id
                
            FROM
                live.oerebkrm_v1_1_localiseduri AS localiseduri
                LEFT JOIN live.oerebkrm_v1_1_multilingualuri AS multilingualuri
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
                live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
                RIGHT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
        LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift AS hinweisvorschrift
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
    geometrie.flaeche_lv95 AS geom,
    --geometrie.rechtsstatus AS geometrie_rechtsstatus,
    --geometrie.publiziertab AS geometrie_publiziertab,
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
    live.oerbkrmfr_v1_1transferstruktur_geometrie AS geometrie
    LEFT JOIN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung AS eigentumsbeschraenkung
    ON eigentumsbeschraenkung.t_id = geometrie.eigentumsbeschraenkung
    LEFT JOIN grouped_json_documents
    ON grouped_json_documents.eigentumsbeschraenkung = eigentumsbeschraenkung.t_id
    LEFT JOIN live.oerbkrmvs_v1_1vorschriften_amt zustaendigestelle
    ON eigentumsbeschraenkung.zustaendigestelle = zustaendigestelle.t_id
WHERE
    eigentumsbeschraenkung.thema = 'Nutzungsplanung'
    AND
    eigentumsbeschraenkung.subthema = 'NutzungsplanungGrundnutzung'
    AND
    geometrie.flaeche_lv95 IS NOT NULL
;
-- spatial index
CREATE INDEX in_oerebwms_nutzungsplanung_grundnutzung_flaeche_geom
  ON live.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche
  USING GIST ( geom );
-- attribute index on artcode
CREATE INDEX in_oerebwms_nutzungsplanung_grundnutzung_flaeche_artcode
  ON live.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche
  USING btree ( artcode );
