

-- schema nr 1 is stage
---------------------------

-- view 'nutzungsplanung_ueberlagernd_linie' with thema 'Nutzungsplanung', subthema 'Nutzungsplanung_Ueberlagernd' and geometry 'linie
DROP VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_ueberlagernd_linie;
CREATE OR replace VIEW stage.vw_oerebwms_nutzungsplanung_ueberlagernd_linie
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.linie_lv95 AS geom,
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
  FROM   stage.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join stage.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Nutzungsplanung'
         AND eigbe.subthema = 'Nutzungsplanung_Ueberlagernd'
         AND geom.linie_lv95 IS NOT NULL;

-- view 'weiteres_thema_einzelschutz_flaeche' with thema 'WeiteresThema', subthema 'ch.so.Einzelschutz' and geometry 'flaeche
DROP VIEW IF EXISTS stage.vw_oerebwms_weiteres_thema_einzelschutz_flaeche;
CREATE OR replace VIEW stage.vw_oerebwms_weiteres_thema_einzelschutz_flaeche
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.flaeche_lv95 AS geom,
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
  FROM   stage.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join stage.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'WeiteresThema'
         AND eigbe.subthema = 'ch.so.Einzelschutz'
         AND geom.flaeche_lv95 IS NOT NULL;

-- view 'weiteres_thema_einzelschutz_punkt' with thema 'WeiteresThema', subthema 'ch.so.Einzelschutz' and geometry 'punkt
DROP VIEW IF EXISTS stage.vw_oerebwms_weiteres_thema_einzelschutz_punkt;
CREATE OR replace VIEW stage.vw_oerebwms_weiteres_thema_einzelschutz_punkt
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.punkt_lv95 AS geom,
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
  FROM   stage.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join stage.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'WeiteresThema'
         AND eigbe.subthema = 'ch.so.Einzelschutz'
         AND geom.punkt_lv95 IS NOT NULL;

-- view 'nutzungsplanung_sondernutzungsplaene_flaeche' with thema 'Nutzungsplanung', subthema 'Nutzungsplanung_Sondernutzungsplaene' and geometry 'flaeche
DROP VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche;
CREATE OR replace VIEW stage.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.flaeche_lv95 AS geom,
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
  FROM   stage.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join stage.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Nutzungsplanung'
         AND eigbe.subthema = 'Nutzungsplanung_Sondernutzungsplaene'
         AND geom.flaeche_lv95 IS NOT NULL;

-- view 'waldgrenzen_linie' with thema 'Waldgrenzen', subthema '' and geometry 'linie
DROP VIEW IF EXISTS stage.vw_oerebwms_waldgrenzen_linie;
CREATE OR replace VIEW stage.vw_oerebwms_waldgrenzen_linie
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.linie_lv95 AS geom,
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
  FROM   stage.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join stage.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Waldgrenzen'
         AND eigbe.subthema = ''
         AND geom.linie_lv95 IS NOT NULL;

-- view 'nutzungsplanung_ueberlagernd_flaeche' with thema 'Nutzungsplanung', subthema 'Nutzungsplanung_Ueberlagernd' and geometry 'flaeche
DROP VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche;
CREATE OR replace VIEW stage.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.flaeche_lv95 AS geom,
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
  FROM   stage.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join stage.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Nutzungsplanung'
         AND eigbe.subthema = 'Nutzungsplanung_Ueberlagernd'
         AND geom.flaeche_lv95 IS NOT NULL;

-- view 'nutzungsplanung_ueberlagernd_punkt' with thema 'Nutzungsplanung', subthema 'Nutzungsplanung_Ueberlagernd' and geometry 'punkt
DROP VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt;
CREATE OR replace VIEW stage.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.punkt_lv95 AS geom,
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
  FROM   stage.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join stage.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Nutzungsplanung'
         AND eigbe.subthema = 'Nutzungsplanung_Ueberlagernd'
         AND geom.punkt_lv95 IS NOT NULL;

-- view 'nutzungsplanung_grundnutzung_flaeche' with thema 'Nutzungsplanung', subthema 'Grundnutzung_Zonenflaeche' and geometry 'flaeche
DROP VIEW IF EXISTS stage.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche;
CREATE OR replace VIEW stage.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.flaeche_lv95 AS geom,
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
  FROM   stage.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join stage.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join stage.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Nutzungsplanung'
         AND eigbe.subthema = 'Grundnutzung_Zonenflaeche'
         AND geom.flaeche_lv95 IS NOT NULL;

-- schema nr 2 is live
---------------------------

-- view 'nutzungsplanung_ueberlagernd_linie' with thema 'Nutzungsplanung', subthema 'Nutzungsplanung_Ueberlagernd' and geometry 'linie
DROP VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_ueberlagernd_linie;
CREATE OR replace VIEW live.vw_oerebwms_nutzungsplanung_ueberlagernd_linie
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.linie_lv95 AS geom,
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
  FROM   live.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join live.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Nutzungsplanung'
         AND eigbe.subthema = 'Nutzungsplanung_Ueberlagernd'
         AND geom.linie_lv95 IS NOT NULL;

-- view 'weiteres_thema_einzelschutz_flaeche' with thema 'WeiteresThema', subthema 'ch.so.Einzelschutz' and geometry 'flaeche
DROP VIEW IF EXISTS live.vw_oerebwms_weiteres_thema_einzelschutz_flaeche;
CREATE OR replace VIEW live.vw_oerebwms_weiteres_thema_einzelschutz_flaeche
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.flaeche_lv95 AS geom,
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
  FROM   live.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join live.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'WeiteresThema'
         AND eigbe.subthema = 'ch.so.Einzelschutz'
         AND geom.flaeche_lv95 IS NOT NULL;

-- view 'weiteres_thema_einzelschutz_punkt' with thema 'WeiteresThema', subthema 'ch.so.Einzelschutz' and geometry 'punkt
DROP VIEW IF EXISTS live.vw_oerebwms_weiteres_thema_einzelschutz_punkt;
CREATE OR replace VIEW live.vw_oerebwms_weiteres_thema_einzelschutz_punkt
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.punkt_lv95 AS geom,
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
  FROM   live.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join live.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'WeiteresThema'
         AND eigbe.subthema = 'ch.so.Einzelschutz'
         AND geom.punkt_lv95 IS NOT NULL;

-- view 'nutzungsplanung_sondernutzungsplaene_flaeche' with thema 'Nutzungsplanung', subthema 'Nutzungsplanung_Sondernutzungsplaene' and geometry 'flaeche
DROP VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche;
CREATE OR replace VIEW live.vw_oerebwms_nutzungsplanung_sondernutzungsplaene_flaeche
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.flaeche_lv95 AS geom,
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
  FROM   live.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join live.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Nutzungsplanung'
         AND eigbe.subthema = 'Nutzungsplanung_Sondernutzungsplaene'
         AND geom.flaeche_lv95 IS NOT NULL;

-- view 'waldgrenzen_linie' with thema 'Waldgrenzen', subthema '' and geometry 'linie
DROP VIEW IF EXISTS live.vw_oerebwms_waldgrenzen_linie;
CREATE OR replace VIEW live.vw_oerebwms_waldgrenzen_linie
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.linie_lv95 AS geom,
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
  FROM   live.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join live.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Waldgrenzen'
         AND eigbe.subthema = ''
         AND geom.linie_lv95 IS NOT NULL;

-- view 'nutzungsplanung_ueberlagernd_flaeche' with thema 'Nutzungsplanung', subthema 'Nutzungsplanung_Ueberlagernd' and geometry 'flaeche
DROP VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche;
CREATE OR replace VIEW live.vw_oerebwms_nutzungsplanung_ueberlagernd_flaeche
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.flaeche_lv95 AS geom,
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
  FROM   live.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join live.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Nutzungsplanung'
         AND eigbe.subthema = 'Nutzungsplanung_Ueberlagernd'
         AND geom.flaeche_lv95 IS NOT NULL;

-- view 'nutzungsplanung_ueberlagernd_punkt' with thema 'Nutzungsplanung', subthema 'Nutzungsplanung_Ueberlagernd' and geometry 'punkt
DROP VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt;
CREATE OR replace VIEW live.vw_oerebwms_nutzungsplanung_ueberlagernd_punkt
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.punkt_lv95 AS geom,
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
  FROM   live.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join live.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Nutzungsplanung'
         AND eigbe.subthema = 'Nutzungsplanung_Ueberlagernd'
         AND geom.punkt_lv95 IS NOT NULL;

-- view 'nutzungsplanung_grundnutzung_flaeche' with thema 'Nutzungsplanung', subthema 'Grundnutzung_Zonenflaeche' and geometry 'flaeche
DROP VIEW IF EXISTS live.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche;
CREATE OR replace VIEW live.vw_oerebwms_nutzungsplanung_grundnutzung_flaeche
AS 
  SELECT geom.t_id,
         geom.t_type,
         geom.t_ili_tid,
         geom.flaeche_lv95 AS geom,
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
  FROM   live.oerbkrmfr_v1_1transferstruktur_geometrie geom
         left join live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung eigbe
                ON geom.eigentumsbeschraenkung = eigbe.t_id
         left join live.oerbkrmvs_v1_1vorschriften_amt zust
                ON eigbe.zustaendigestelle = zust.t_id
  WHERE  eigbe.thema = 'Nutzungsplanung'
         AND eigbe.subthema = 'Grundnutzung_Zonenflaeche'
         AND geom.flaeche_lv95 IS NOT NULL;