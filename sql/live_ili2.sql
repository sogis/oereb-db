CREATE SCHEMA IF NOT EXISTS live;
-- CREATE SEQUENCE live.t_ili2db_seq;;
-- Localisation_V1.LocalisedText
CREATE TABLE live.localisation_v1_localisedtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext text NOT NULL
  ,loclstn_v1_mltlngltext_localisedtext bigint NULL
)
;
CREATE INDEX localisation_v1_loclsdtext_t_basket_idx ON live.localisation_v1_localisedtext ( t_basket );
CREATE INDEX localisation_v1_loclsdtext_loclstn_v1_mltxt_lclsdtext_idx ON live.localisation_v1_localisedtext ( loclstn_v1_mltlngltext_localisedtext );
-- Localisation_V1.LocalisedMText
CREATE TABLE live.localisation_v1_localisedmtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext text NOT NULL
  ,loclstn_v1_ltlnglmtext_localisedtext bigint NULL
)
;
CREATE INDEX localisation_v1_lclsdmtext_t_basket_idx ON live.localisation_v1_localisedmtext ( t_basket );
CREATE INDEX localisation_v1_lclsdmtext_loclstn_v1_lttxt_lclsdtext_idx ON live.localisation_v1_localisedmtext ( loclstn_v1_ltlnglmtext_localisedtext );
-- Localisation_V1.MultilingualText
CREATE TABLE live.localisation_v1_multilingualtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX localisatin_v1_mltlngltext_t_basket_idx ON live.localisation_v1_multilingualtext ( t_basket );
-- Localisation_V1.MultilingualMText
CREATE TABLE live.localisation_v1_multilingualmtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX localisatn_v1_mltlnglmtext_t_basket_idx ON live.localisation_v1_multilingualmtext ( t_basket );
-- GeometryCHLV95_V1.SurfaceStructure
CREATE TABLE live.geometrychlv95_v1_surfacestructure (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,surface geometry(POLYGON,2056) NULL
  ,geomtrychlv1_mltsrface_surfaces bigint NULL
)
;
CREATE INDEX geomtrychlv95_srfcstrcture_t_basket_idx ON live.geometrychlv95_v1_surfacestructure ( t_basket );
CREATE INDEX geomtrychlv95_srfcstrcture_surface_idx ON live.geometrychlv95_v1_surfacestructure USING GIST ( surface );
CREATE INDEX geomtrychlv95_srfcstrcture_geomtrychlv1_ltsrfc_srfces_idx ON live.geometrychlv95_v1_surfacestructure ( geomtrychlv1_mltsrface_surfaces );
-- GeometryCHLV95_V1.MultiSurface
CREATE TABLE live.geometrychlv95_v1_multisurface (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX geomtrychlv95_v1_mltsrface_t_basket_idx ON live.geometrychlv95_v1_multisurface ( t_basket );
-- OeREBKRM_V1_1.ArtikelNummer_
CREATE TABLE live.oerebkrm_v1_1_artikelnummer_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,avalue varchar(20) NOT NULL
  ,oerbkrmvs_vwswtrdkmnte_artikelnr bigint NULL
  ,oerbkrmfr_vwsvrschrift_artikelnr bigint NULL
)
;
CREATE INDEX oerebkrm_v1_1_artiklnmmer__t_basket_idx ON live.oerebkrm_v1_1_artikelnummer_ ( t_basket );
CREATE INDEX oerebkrm_v1_1_artiklnmmer__oerbkrmvs_vwsrdkmnt_rtklnr_idx ON live.oerebkrm_v1_1_artikelnummer_ ( oerbkrmvs_vwswtrdkmnte_artikelnr );
CREATE INDEX oerebkrm_v1_1_artiklnmmer__oerbkrmfr_vwsschrft_rtklnr_idx ON live.oerebkrm_v1_1_artikelnummer_ ( oerbkrmfr_vwsvrschrift_artikelnr );
COMMENT ON COLUMN live.oerebkrm_v1_1_artikelnummer_.oerbkrmvs_vwswtrdkmnte_artikelnr IS 'Hinweis auf spezifische Artikel.';
COMMENT ON COLUMN live.oerebkrm_v1_1_artikelnummer_.oerbkrmfr_vwsvrschrift_artikelnr IS 'Hinweis auf spezifische Artikel.';
-- OeREBKRM_V1_1.Datum_
CREATE TABLE live.oerebkrm_v1_1_datum_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,avalue date NOT NULL
)
;
CREATE INDEX oerebkrm_v1_1_datum__t_basket_idx ON live.oerebkrm_v1_1_datum_ ( t_basket );
-- OeREBKRM_V1_1.Thema_
CREATE TABLE live.oerebkrm_v1_1_thema_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,avalue varchar(255) NOT NULL
)
;
CREATE INDEX oerebkrm_v1_1_thema__t_basket_idx ON live.oerebkrm_v1_1_thema_ ( t_basket );
-- OeREBKRM_V1_1.WebReferenz_
CREATE TABLE live.oerebkrm_v1_1_webreferenz_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,avalue varchar(1023) NOT NULL
)
;
CREATE INDEX oerebkrm_v1_1_webreferenz__t_basket_idx ON live.oerebkrm_v1_1_webreferenz_ ( t_basket );
-- OeREBKRM_V1_1.LocalisedUri
CREATE TABLE live.oerebkrm_v1_1_localiseduri (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext varchar(1023) NOT NULL
  ,oerbkrm_v1__mltlngluri_localisedtext bigint NULL
)
;
CREATE INDEX oerebkrm_v1_1_localiseduri_t_basket_idx ON live.oerebkrm_v1_1_localiseduri ( t_basket );
CREATE INDEX oerebkrm_v1_1_localiseduri_oerbkrm_v1__mglr_lclsdtext_idx ON live.oerebkrm_v1_1_localiseduri ( oerbkrm_v1__mltlngluri_localisedtext );
-- OeREBKRM_V1_1.MultilingualUri
CREATE TABLE live.oerebkrm_v1_1_multilingualuri (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,oerbkrmvs_vhrftn_rtkel_textimweb bigint NULL
  ,oerbkrmvs_vrftn_dkment_textimweb bigint NULL
)
;
CREATE INDEX oerebkrm_v1_1_multilngluri_t_basket_idx ON live.oerebkrm_v1_1_multilingualuri ( t_basket );
CREATE INDEX oerebkrm_v1_1_multilngluri_oerbkrmvs_vhr_rtkl_txtmweb_idx ON live.oerebkrm_v1_1_multilingualuri ( oerbkrmvs_vhrftn_rtkel_textimweb );
CREATE INDEX oerebkrm_v1_1_multilngluri_oerbkrmvs_vrfdkmnt_txtmweb_idx ON live.oerebkrm_v1_1_multilingualuri ( oerbkrmvs_vrftn_dkment_textimweb );
COMMENT ON COLUMN live.oerebkrm_v1_1_multilingualuri.oerbkrmvs_vhrftn_rtkel_textimweb IS 'Verweis auf das Element im Web; z.B. "http://www.admin.ch/ch/d/sr/700/a18.html"';
COMMENT ON COLUMN live.oerebkrm_v1_1_multilingualuri.oerbkrmvs_vrftn_dkment_textimweb IS 'Verweis auf das Element im Web; z.B. "http://www.admin.ch/ch/d/sr/700/a18.html"';
-- OeREBKRM_V1_1.CodelistenText.RechtsStatusTxt
CREATE TABLE live.oerebkrm_v1_1codelistentext_rechtsstatustxt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(255) NOT NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
)
;
CREATE INDEX oerbkrm_v1_1c_rchtssttstxt_t_basket_idx ON live.oerebkrm_v1_1codelistentext_rechtsstatustxt ( t_basket );
COMMENT ON TABLE live.oerebkrm_v1_1codelistentext_rechtsstatustxt IS 'Anzeigetexte für die Aufzählung RechtsStatus';
-- OeREBKRM_V1_1.CodelistenText.ThemaTxt
CREATE TABLE live.oerebkrm_v1_1codelistentext_thematxt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(255) NOT NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
)
;
CREATE INDEX oerbkrm_v1_1cstntxt_thmtxt_t_basket_idx ON live.oerebkrm_v1_1codelistentext_thematxt ( t_basket );
COMMENT ON TABLE live.oerebkrm_v1_1codelistentext_thematxt IS 'Anzeigetexte für die Aufzählung Thema';
-- SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis
CREATE TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,aname varchar(255) NOT NULL
  ,art varchar(255) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,grundbuchkreisnummer integer NULL
  ,grundbuchkreis_bfsnr integer NOT NULL
  ,bfsnr integer NOT NULL
  ,perimeter geometry(MULTIPOLYGON,2056) NOT NULL
  ,amtschreiberei varchar(255) NOT NULL
  ,amt varchar(255) NULL
  ,strasse varchar(255) NOT NULL
  ,hausnummer varchar(255) NULL
  ,plz integer NOT NULL
  ,ortschaft varchar(255) NOT NULL
  ,telefon varchar(255) NOT NULL
  ,email varchar(255) NOT NULL
  ,web varchar(1023) NOT NULL
  ,auid varchar(15) NULL
)
;
CREATE INDEX so_g_v_018082_grndbchkreis_t_basket_idx ON live.so_g_v_0180822grundbuchkreise_grundbuchkreis ( t_basket );
CREATE INDEX so_g_v_018082_grndbchkreis_perimeter_idx ON live.so_g_v_0180822grundbuchkreise_grundbuchkreis USING GIST ( perimeter );
COMMENT ON TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis IS 'Grundbuchkreisaufteilung inkl. Anschrift etc. der einzelnen Kreise';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.aname IS 'Name des Grundbuches';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.art IS 'Art des Grundbuches';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.nbident IS 'Nummerierungsbereich-Identifikator aus der amtlichen Vermessung';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.grundbuchkreisnummer IS 'Kantonale Nummer des Grundbuchkreises';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.grundbuchkreis_bfsnr IS 'Ehemalige Gemeindenummer des Grundbuches (z.B. vor Gemeindefusion).';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.bfsnr IS 'Perimeter des Grundbuchkreises';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.perimeter IS 'Perimeter des Grundbuchkreises';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.amtschreiberei IS 'Amtschreiberei';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.amt IS 'Amt der Amtschreiberei';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.strasse IS 'Strassenname';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.hausnummer IS 'Hausnummer';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.plz IS 'Postleitzahl';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.ortschaft IS 'Ortschaft';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.telefon IS 'Telefonnummer';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.email IS 'E-Mail-Adresse';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.web IS 'Internetadresse';
COMMENT ON COLUMN live.so_g_v_0180822grundbuchkreise_grundbuchkreis.auid IS 'Unternehmens-Identifikationsnummer';
-- SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde
CREATE TABLE live.so_g_v_0180822nachfuehrngskrise_gemeinde (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gemeindename varchar(255) NOT NULL
  ,bfsnr integer NOT NULL
  ,perimeter geometry(MULTIPOLYGON,2056) NOT NULL
  ,nfg_name varchar(255) NOT NULL
  ,nfg_vorname varchar(255) NOT NULL
  ,nfg_titel varchar(255) NULL
  ,firma varchar(255) NOT NULL
  ,firma_zusatz varchar(255) NULL
  ,strasse varchar(255) NOT NULL
  ,hausnummer varchar(255) NULL
  ,plz integer NOT NULL
  ,ortschaft varchar(255) NOT NULL
  ,telefon varchar(255) NOT NULL
  ,web varchar(1023) NOT NULL
  ,email varchar(255) NOT NULL
  ,auid varchar(15) NULL
)
;
CREATE INDEX so_g_v_018082rngskrs_gmnde_t_basket_idx ON live.so_g_v_0180822nachfuehrngskrise_gemeinde ( t_basket );
CREATE INDEX so_g_v_018082rngskrs_gmnde_perimeter_idx ON live.so_g_v_0180822nachfuehrngskrise_gemeinde USING GIST ( perimeter );
COMMENT ON TABLE live.so_g_v_0180822nachfuehrngskrise_gemeinde IS 'Gemeinde mit zuständigem Nachführungsgeometer und Anschrift der Firma etc.';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.gemeindename IS 'Name der politischen Gemeinde';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.bfsnr IS 'BFS-Nr. der politischen Gemeinde';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.perimeter IS 'Geometrie der politischen Gemeinde';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.nfg_name IS 'Nachname des Nachführungsgeometers';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.nfg_vorname IS 'Vorname des Nachführungsgeometers';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.nfg_titel IS 'Titel des Nachführungsgeometers (z.B. Dr.)';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.firma IS 'Name der Firma';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.firma_zusatz IS 'Zusatzname der Firma';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.strasse IS 'Strassenname';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.hausnummer IS 'Hausnummer';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.plz IS 'Postleitzahl';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.ortschaft IS 'Ortschaft';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.telefon IS 'Telefonnummer';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.web IS 'Internetadresse';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.email IS 'E-Mail-Adresse';
COMMENT ON COLUMN live.so_g_v_0180822nachfuehrngskrise_gemeinde.auid IS 'Unternehmer-Identifikationsnummer';
-- OeREBKRMvs_V1_1.Vorschriften.Amt
CREATE TABLE live.oerbkrmvs_v1_1vorschriften_amt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname text NULL
  ,aname_de text NULL
  ,aname_fr text NULL
  ,aname_rm text NULL
  ,aname_it text NULL
  ,aname_en text NULL
  ,amtimweb varchar(1023) NULL
  ,auid varchar(12) NULL
)
;
CREATE INDEX oerbkrmvs_v1_vrschrftn_amt_t_basket_idx ON live.oerbkrmvs_v1_1vorschriften_amt ( t_basket );
COMMENT ON TABLE live.oerbkrmvs_v1_1vorschriften_amt IS 'Eine organisatorische Einheit innerhalb der öffentlichen Verwaltung, z.B. eine für Geobasisdaten zuständige Stelle.';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_amt.amtimweb IS 'Verweis auf die Website des Amtes z.B. "http://www.jgk.be.ch/jgk/de/index/direktion/organisation/agr.html".';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_amt.auid IS 'UID der organisatorischen Einheit';
-- OeREBKRMvs_V1_1.Vorschriften.Artikel
CREATE TABLE live.oerbkrmvs_v1_1vorschriften_artikel (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,nr varchar(20) NOT NULL
  ,atext text NULL
  ,atext_de text NULL
  ,atext_fr text NULL
  ,atext_rm text NULL
  ,atext_it text NULL
  ,atext_en text NULL
  ,dokument bigint NOT NULL
  ,rechtsstatus varchar(255) NOT NULL
  ,publiziertab date NOT NULL
)
;
CREATE INDEX oerbkrmvs_v1_schrftn_rtkel_t_basket_idx ON live.oerbkrmvs_v1_1vorschriften_artikel ( t_basket );
CREATE INDEX oerbkrmvs_v1_schrftn_rtkel_dokument_idx ON live.oerbkrmvs_v1_1vorschriften_artikel ( dokument );
COMMENT ON TABLE live.oerbkrmvs_v1_1vorschriften_artikel IS 'Einzelner Artikel einer Rechtsvorschrift oder einer gesetzlichen Grundlage.';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_artikel.nr IS 'Nummer des Artikels innerhalb der gesetzlichen Grundlage oder der Rechtsvorschrift. z.B. "23"';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_artikel.rechtsstatus IS 'Status, ob dieses Element in Kraft ist';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_artikel.publiziertab IS 'Datum, ab dem dieses Element in Auszügen erscheint';
-- OeREBKRMvs_V1_1.Vorschriften.Dokument
CREATE TABLE live.oerbkrmvs_v1_1vorschriften_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
  ,offiziellertitel text NULL
  ,offiziellertitel_de text NULL
  ,offiziellertitel_fr text NULL
  ,offiziellertitel_rm text NULL
  ,offiziellertitel_it text NULL
  ,offiziellertitel_en text NULL
  ,abkuerzung text NULL
  ,abkuerzung_de text NULL
  ,abkuerzung_fr text NULL
  ,abkuerzung_rm text NULL
  ,abkuerzung_it text NULL
  ,abkuerzung_en text NULL
  ,offiziellenr varchar(20) NULL
  ,kanton varchar(255) NULL
  ,gemeinde integer NULL
  ,dokument bytea NULL
  ,zustaendigestelle bigint NOT NULL
  ,rechtsstatus varchar(255) NOT NULL
  ,publiziertab date NOT NULL
)
;
CREATE INDEX oerbkrmvs_v1_chrftn_dkment_t_basket_idx ON live.oerbkrmvs_v1_1vorschriften_dokument ( t_basket );
CREATE INDEX oerbkrmvs_v1_chrftn_dkment_zustaendigestelle_idx ON live.oerbkrmvs_v1_1vorschriften_dokument ( zustaendigestelle );
COMMENT ON TABLE live.oerbkrmvs_v1_1vorschriften_dokument IS 'Dokumente im allgemeinen (Gesetze, Verordnungen, Rechtsvorschriften)';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_dokument.offiziellenr IS 'Offizielle Nummer des Gesetzes; z.B. "SR 700"';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_dokument.kanton IS 'Kantonskürzel falls Vorschrift des Kantons oder der Gemeinde. Falls die Angabe fehlt, ist es eine Vorschrift des Bundes. z.B. "BE"';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_dokument.gemeinde IS 'Falls die Angabe fehlt, ist es ein Erlass des Kantons oder des Bundes. z.B. "942"';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_dokument.dokument IS 'Das Dokument als PDF-Datei';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_dokument.rechtsstatus IS 'Status, ob dieses Element in Kraft ist';
COMMENT ON COLUMN live.oerbkrmvs_v1_1vorschriften_dokument.publiziertab IS 'Datum, ab dem dieses Element in Auszügen erscheint';
-- OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente
CREATE TABLE live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,ursprung bigint NOT NULL
  ,hinweis bigint NOT NULL
)
;
CREATE INDEX oerbkrmvs_v1_hnwswtrdkmnte_t_basket_idx ON live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente ( t_basket );
CREATE INDEX oerbkrmvs_v1_hnwswtrdkmnte_ursprung_idx ON live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente ( ursprung );
CREATE INDEX oerbkrmvs_v1_hnwswtrdkmnte_hinweis_idx ON live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente ( hinweis );
-- OeREB_ExtractAnnex_V1_0.Code_
CREATE TABLE live.oereb_extractannex_v1_0_code_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,avalue varchar(60) NOT NULL
  ,oerb_xtnx_vpltywthplrc_themes bigint NULL
)
;
CREATE INDEX oereb_extractnnx_v1_0_cde__t_basket_idx ON live.oereb_extractannex_v1_0_code_ ( t_basket );
CREATE INDEX oereb_extractnnx_v1_0_cde__oerb_xtnx_vplwthplrc_thmes_idx ON live.oereb_extractannex_v1_0_code_ ( oerb_xtnx_vpltywthplrc_themes );
COMMENT ON COLUMN live.oereb_extractannex_v1_0_code_.oerb_xtnx_vpltywthplrc_themes IS 'Thema / SubThema
Bundesthema:
value=Nutzungsplanung
Kantonales Subthema zu einem Bundesthema:
value=ch.so.Nutzungsplanung.CantonalBuildingLines
Kantonales Thema (kein Subthema zu einem Bundesthema):
value=ch.so.Einzelschutz';
-- OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt
CREATE TABLE live.oerb_xtnx_v1_0annex_thematxt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(255) NOT NULL
  ,titel text NULL
  ,titel_de text NULL
  ,titel_fr text NULL
  ,titel_rm text NULL
  ,titel_it text NULL
  ,titel_en text NULL
  ,othercode varchar(60) NULL
)
;
CREATE INDEX oerb_xtnx_v1_0annex_thmtxt_t_basket_idx ON live.oerb_xtnx_v1_0annex_thematxt ( t_basket );
COMMENT ON COLUMN live.oerb_xtnx_v1_0annex_thematxt.othercode IS 'Kantonales Subthema zu einem Bundesthema:
Code=Nutzungsplanung
otherCode=ch.so.Nutzungsplanung.CantonalBuildingLines
In der Transferstruktur:
Eigentumsbeschraenkung/Thema=Nutzungsplanung
Eigentumsbeschraenkung/SubThema=ch.so.Nutzungsplanung.CantonalBuildingLines
Kantonales Thema (kein Subthema zu einem Bundesthema):
Code=WeiteresThema
otherCode=ch.so.Einzelschutz
In der Transferstruktur:
Eigentumsbeschraenkung/Thema=WeiteresThema
Eigentumsbeschraenkung/SubThema=ch.so.Einzelschutz';
-- OeREB_ExtractAnnex_V1_0.Annex.Logo
CREATE TABLE live.oerb_xtnx_v1_0annex_logo (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode varchar(60) NOT NULL
  ,logo bytea NOT NULL
)
;
CREATE INDEX oerb_xtnx_v1_0annex_logo_t_basket_idx ON live.oerb_xtnx_v1_0annex_logo ( t_basket );
COMMENT ON COLUMN live.oerb_xtnx_v1_0annex_logo.acode IS 'ch.plr, ch, ch.so oder ch.bfsnr';
-- OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC
CREATE TABLE live.oerb_xtnx_v1_0annex_municipalitywithplrc (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,municipality integer NOT NULL
  ,basedatadate timestamp NULL
  ,metadataofgeographicalbasedata varchar(1023) NULL
)
;
CREATE INDEX oerb_xtnx_v1_ncpltywthplrc_t_basket_idx ON live.oerb_xtnx_v1_0annex_municipalitywithplrc ( t_basket );
COMMENT ON COLUMN live.oerb_xtnx_v1_0annex_municipalitywithplrc.municipality IS 'BFS-Nr.';
COMMENT ON COLUMN live.oerb_xtnx_v1_0annex_municipalitywithplrc.basedatadate IS 'Stand der Grundlagedaten z.B. der AV';
-- OeREB_ExtractAnnex_V1_0.Annex.MapLayering
CREATE TABLE live.oerb_xtnx_v1_0annex_maplayering (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,webservice varchar(1023) NOT NULL
  ,layerindex integer NOT NULL
  ,layeropacity decimal(4,3) NOT NULL
)
;
CREATE INDEX oerb_xtnx_v1_0nnx_mplyring_t_basket_idx ON live.oerb_xtnx_v1_0annex_maplayering ( t_basket );
-- OeREB_ExtractAnnex_V1_0.Annex.Office
CREATE TABLE live.oerb_xtnx_v1_0annex_office (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aname text NULL
  ,aname_de text NULL
  ,aname_fr text NULL
  ,aname_rm text NULL
  ,aname_it text NULL
  ,aname_en text NULL
  ,officeatweb varchar(1023) NOT NULL
  ,auid varchar(12) NULL
  ,line1 varchar(80) NULL
  ,line2 varchar(80) NULL
  ,street varchar(100) NULL
  ,anumber varchar(7) NULL
  ,postalcode varchar(4) NULL
  ,city varchar(60) NULL
)
;
CREATE INDEX oerb_xtnx_v1_0annex_office_t_basket_idx ON live.oerb_xtnx_v1_0annex_office ( t_basket );
COMMENT ON COLUMN live.oerb_xtnx_v1_0annex_office.officeatweb IS 'OfficeAtWeb wird für die Referenzierung verwendet!
solange UID nicht generell zugeordnet.';
COMMENT ON COLUMN live.oerb_xtnx_v1_0annex_office.line1 IS 'Falls im statischen Auszug mehr Informationen angezeigt
werden sollen als im Rahmenmodell möglich ist zu erfassen.
Im Rahmenmodell können nur die Attribute Name, AmtImWeb, UID erfasst werden.';
-- OeREB_ExtractAnnex_V1_0.Annex.Glossary
CREATE TABLE live.oerb_xtnx_v1_0annex_glossary (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,title text NULL
  ,title_de text NULL
  ,title_fr text NULL
  ,title_rm text NULL
  ,title_it text NULL
  ,title_en text NULL
  ,content text NULL
  ,content_de text NULL
  ,content_fr text NULL
  ,content_rm text NULL
  ,content_it text NULL
  ,content_en text NULL
)
;
CREATE INDEX oerb_xtnx_v1_0annx_glssary_t_basket_idx ON live.oerb_xtnx_v1_0annex_glossary ( t_basket );
-- OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability
CREATE TABLE live.oerb_xtnx_v1_0annex_exclusionofliability (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,title text NULL
  ,title_de text NULL
  ,title_fr text NULL
  ,title_rm text NULL
  ,title_it text NULL
  ,title_en text NULL
  ,content text NULL
  ,content_de text NULL
  ,content_fr text NULL
  ,content_rm text NULL
  ,content_it text NULL
  ,content_en text NULL
)
;
CREATE INDEX oerb_xtnx_v1__xclsnflblity_t_basket_idx ON live.oerb_xtnx_v1_0annex_exclusionofliability ( t_basket );
-- OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation
CREATE TABLE live.oerb_xtnx_v1_0annex_generalinformation (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,content text NULL
  ,content_de text NULL
  ,content_fr text NULL
  ,content_rm text NULL
  ,content_it text NULL
  ,content_en text NULL
)
;
CREATE INDEX oerb_xtnx_v1__gnrlnfrmtion_t_basket_idx ON live.oerb_xtnx_v1_0annex_generalinformation ( t_basket );
-- OeREB_ExtractAnnex_V1_0.Annex.BaseData
CREATE TABLE live.oerb_xtnx_v1_0annex_basedata (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,content text NULL
  ,content_de text NULL
  ,content_fr text NULL
  ,content_rm text NULL
  ,content_it text NULL
  ,content_en text NULL
)
;
CREATE INDEX oerb_xtnx_v1_0annex_bsdata_t_basket_idx ON live.oerb_xtnx_v1_0annex_basedata ( t_basket );
-- OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung
CREATE TABLE live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,aussage text NULL
  ,aussage_de text NULL
  ,aussage_fr text NULL
  ,aussage_rm text NULL
  ,aussage_it text NULL
  ,aussage_en text NULL
  ,thema varchar(255) NOT NULL
  ,subthema varchar(60) NULL
  ,weiteresthema varchar(120) NULL
  ,artcode varchar(40) NULL
  ,artcodeliste varchar(1023) NULL
  ,rechtsstatus varchar(255) NOT NULL
  ,publiziertab date NOT NULL
  ,darstellungsdienst bigint NULL
  ,zustaendigestelle bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v1_tmsbschrnkung_t_basket_idx ON live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung ( t_basket );
CREATE INDEX oerbkrmfr_v1_tmsbschrnkung_darstellungsdienst_idx ON live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung ( darstellungsdienst );
CREATE INDEX oerbkrmfr_v1_tmsbschrnkung_zustaendigestelle_idx ON live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung ( zustaendigestelle );
COMMENT ON TABLE live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung IS 'Wurzelelement für Informationen über eine Beschränkung des Grundeigentums, die rechtskräftig, z.B. auf Grund einer Genehmigung oder eines richterlichen Entscheids, zustande gekommen ist.';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung.thema IS 'Einordnung der Eigentumsbeschränkung in ein ÖREBK-Thema';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung.subthema IS 'z.B. Planungszonen innerhalb Nutzungsplanung';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung.weiteresthema IS 'z.B. kantonale Themen. Der Code wird nach folgendem Muster gebildet: ch.{canton}.{topic}
fl.{topic}
ch.{bfsnr}.{topic}
Wobei {canton} das offizielle zwei-stellige Kürzel des Kantons ist, {to-pic} der Themenname und {bfsnr} die Gemeindenummer gem. BFS.';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung.artcode IS 'Themenspezifische, maschinen-lesbare Art gem. Originalmodell der Eigentumsbeschränkung';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung.artcodeliste IS 'Identifikation der Codeliste bzw. des Wertebereichs für ArtCode';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung.rechtsstatus IS 'Status, ob diese Eigentumsbeschränkung in Kraft ist';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung.publiziertab IS 'Datum, ab dem diese Eigentumsbeschränkung in Auszügen erscheint';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung.darstellungsdienst IS 'Darstellungsdienst, auf dem diese Eigentumsbeschränkung sichtbar, aber nicht hervorgehoben, ist.';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung.zustaendigestelle IS 'Zuständige Stelle für die Geobasisdaten (Originaldaten) gem. GeoIG Art. 8 Abs. 1';
-- OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie
CREATE TABLE live.oerbkrmfr_v1_1transferstruktur_geometrie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,punkt_lv03 geometry(POINT,21781) NULL
  ,punkt_lv95 geometry(POINT,2056) NULL
  ,linie_lv03 geometry(LINESTRING,21781) NULL
  ,linie_lv95 geometry(LINESTRING,2056) NULL
  ,flaeche_lv03 geometry(POLYGON,21781) NULL
  ,flaeche_lv95 geometry(POLYGON,2056) NULL
  ,rechtsstatus varchar(255) NOT NULL
  ,publiziertab date NOT NULL
  ,metadatengeobasisdaten varchar(1023) NULL
  ,eigentumsbeschraenkung bigint NOT NULL
  ,zustaendigestelle bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v1_strktr_gmtrie_t_basket_idx ON live.oerbkrmfr_v1_1transferstruktur_geometrie ( t_basket );
CREATE INDEX oerbkrmfr_v1_strktr_gmtrie_punkt_lv03_idx ON live.oerbkrmfr_v1_1transferstruktur_geometrie USING GIST ( punkt_lv03 );
CREATE INDEX oerbkrmfr_v1_strktr_gmtrie_punkt_lv95_idx ON live.oerbkrmfr_v1_1transferstruktur_geometrie USING GIST ( punkt_lv95 );
CREATE INDEX oerbkrmfr_v1_strktr_gmtrie_linie_lv03_idx ON live.oerbkrmfr_v1_1transferstruktur_geometrie USING GIST ( linie_lv03 );
CREATE INDEX oerbkrmfr_v1_strktr_gmtrie_linie_lv95_idx ON live.oerbkrmfr_v1_1transferstruktur_geometrie USING GIST ( linie_lv95 );
CREATE INDEX oerbkrmfr_v1_strktr_gmtrie_flaeche_lv03_idx ON live.oerbkrmfr_v1_1transferstruktur_geometrie USING GIST ( flaeche_lv03 );
CREATE INDEX oerbkrmfr_v1_strktr_gmtrie_flaeche_lv95_idx ON live.oerbkrmfr_v1_1transferstruktur_geometrie USING GIST ( flaeche_lv95 );
CREATE INDEX oerbkrmfr_v1_strktr_gmtrie_eigentumsbeschraenkung_idx ON live.oerbkrmfr_v1_1transferstruktur_geometrie ( eigentumsbeschraenkung );
CREATE INDEX oerbkrmfr_v1_strktr_gmtrie_zustaendigestelle_idx ON live.oerbkrmfr_v1_1transferstruktur_geometrie ( zustaendigestelle );
COMMENT ON TABLE live.oerbkrmfr_v1_1transferstruktur_geometrie IS 'Punkt-, linien-, oder flächenförmige Geometrie. Neu zu definierende Eigentumsbeschränkungen sollten i.d.R. flächenförmig sein.';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_geometrie.punkt_lv03 IS 'Punktgeometrie';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_geometrie.linie_lv03 IS 'Linienförmige Geometrie';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_geometrie.flaeche_lv03 IS 'Flächenförmige Geometrie';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_geometrie.rechtsstatus IS 'Status, ob diese Geometrie in Kraft ist';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_geometrie.publiziertab IS 'Datum, ab dem diese Geometrie in Auszügen erscheint';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_geometrie.metadatengeobasisdaten IS 'Verweis auf maschinenlesbare Metadaten (XML) der zugrundeliegenden Geobasisdaten. z.B. http://www.geocat.ch/geonetwork/srv/deu/gm03.xml?id=705';
-- OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition
CREATE TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,thema varchar(255) NULL
  ,kanton varchar(255) NULL
  ,gemeinde integer NULL
  ,zustaendigestelle bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v1_r_hnwsdfntion_t_basket_idx ON live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition ( t_basket );
CREATE INDEX oerbkrmfr_v1_r_hnwsdfntion_zustaendigestelle_idx ON live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition ( zustaendigestelle );
COMMENT ON TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition IS 'Definition für Hinweise, die unabhängig von einer konkreten Eigentumsbeschränkung gelten (z.B. der Hinweis auf eine Systematische Rechtssammlung). Der Hinweis kann aber beschränkt werden auf eine bestimmtes ÖREB-Thema und/oder Kanton und/oder Gemeinde.';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition.thema IS 'Thema falls der Hinweis für ein bestimmtes ÖREB-Thema gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle ÖREB-Themen gilt.';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition.kanton IS 'Kantonskürzel falls der Hinweis für ein Kantons-oder Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle Kantone gilt. z.B. "BE".';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition.gemeinde IS 'BFSNr falls der Hinweis für ein Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für den Kanton oder die Schweiz gilt. z.B. "942".';
-- OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag
CREATE TABLE live.oerbkrmfr_v1_1transferstruktur_legendeeintrag (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,symbol bytea NOT NULL
  ,legendetext text NULL
  ,legendetext_de text NULL
  ,legendetext_fr text NULL
  ,legendetext_rm text NULL
  ,legendetext_it text NULL
  ,legendetext_en text NULL
  ,artcode varchar(40) NOT NULL
  ,artcodeliste varchar(1023) NOT NULL
  ,thema varchar(255) NOT NULL
  ,subthema varchar(60) NULL
  ,weiteresthema varchar(120) NULL
  ,oerbkrmfr_vstllngsdnst_legende bigint NULL
)
;
CREATE INDEX oerbkrmfr_v1_ktr_lgndntrag_t_basket_idx ON live.oerbkrmfr_v1_1transferstruktur_legendeeintrag ( t_basket );
CREATE INDEX oerbkrmfr_v1_ktr_lgndntrag_oerbkrmfr_vstngsdnst_lgnde_idx ON live.oerbkrmfr_v1_1transferstruktur_legendeeintrag ( oerbkrmfr_vstllngsdnst_legende );
COMMENT ON TABLE live.oerbkrmfr_v1_1transferstruktur_legendeeintrag IS 'Ein Eintrag in der Planlegende.';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_legendeeintrag.symbol IS 'Grafischer Teil des Legendeneintrages für die Darstellung. Im PNG-Format mit 300dpi oder im SVG-Format';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_legendeeintrag.artcode IS 'Art der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_legendeeintrag.artcodeliste IS 'Codeliste der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_legendeeintrag.thema IS 'Zu welchem ÖREB-Thema der Legendeneintrag gehört';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_legendeeintrag.subthema IS 'z.B. Planungszonen innerhalb Nutzungsplanung';
-- OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst
CREATE TABLE live.oerbkrmfr_v1_1transferstruktur_darstellungsdienst (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,verweiswms varchar(1023) NOT NULL
  ,legendeimweb varchar(1023) NULL
)
;
CREATE INDEX oerbkrmfr_v1_drstllngsdnst_t_basket_idx ON live.oerbkrmfr_v1_1transferstruktur_darstellungsdienst ( t_basket );
COMMENT ON TABLE live.oerbkrmfr_v1_1transferstruktur_darstellungsdienst IS 'Angaben zum Darstellungsdienst.';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_darstellungsdienst.verweiswms IS 'WMS GetMap-Request (für Maschine-Maschine-Kommunikation) inkl. alle benötigten Parameter, z.B. "https://wms.geo.admin.ch/?SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&STYLES=default&SRS=EPSG:21781&BBOX=475000,60000,845000,310000&WIDTH=740&HEIGHT=500&FORMAT=image/png&LAYERS=ch.bazl.kataster-belasteter-standorte-zivilflugplaetze.oereb"';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_darstellungsdienst.legendeimweb IS 'Verweis auf ein Dokument das die Karte beschreibt; z.B. "https://wms.geo.admin.ch/?SERVICE=WMS&REQUEST=GetLegendGraphic&VERSION=1.1.1&FORMAT=image/png&LAYER=ch.bazl.kataster-belasteter-standorte-zivilflugplaetze.oereb"';
-- OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung
CREATE TABLE live.oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,grundlage bigint NOT NULL
  ,verfeinerung bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v1_rndlgvrfnrung_t_basket_idx ON live.oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung ( t_basket );
CREATE INDEX oerbkrmfr_v1_rndlgvrfnrung_grundlage_idx ON live.oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung ( grundlage );
CREATE INDEX oerbkrmfr_v1_rndlgvrfnrung_verfeinerung_idx ON live.oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung ( verfeinerung );
-- OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument
CREATE TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,hinweisdefinition bigint NOT NULL
  ,dokument bigint NOT NULL
)
;
CREATE INDEX oerbkrmfr_v1_wsdfntndkment_t_basket_idx ON live.oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument ( t_basket );
CREATE INDEX oerbkrmfr_v1_wsdfntndkment_hinweisdefinition_idx ON live.oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument ( hinweisdefinition );
CREATE INDEX oerbkrmfr_v1_wsdfntndkment_dokument_idx ON live.oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument ( dokument );
-- OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift
CREATE TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift (
  T_Id bigint PRIMARY KEY DEFAULT nextval('live.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,eigentumsbeschraenkung bigint NOT NULL
  ,vorschrift_oerbkrmvs_v1_1vorschriften_artikel bigint NULL
  ,vorschrift_oerbkrmvs_v1_1vorschriften_dokument bigint NULL
)
;
CREATE INDEX oerbkrmfr_v1_hnwsvrschrift_t_basket_idx ON live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift ( t_basket );
CREATE INDEX oerbkrmfr_v1_hnwsvrschrift_eigentumsbeschraenkung_idx ON live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift ( eigentumsbeschraenkung );
CREATE INDEX oerbkrmfr_v1_hnwsvrschrift_vorschrft_rbkschrftn_rtkel_idx ON live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift ( vorschrift_oerbkrmvs_v1_1vorschriften_artikel );
CREATE INDEX oerbkrmfr_v1_hnwsvrschrift_vorschrft_rbkchrftn_dkment_idx ON live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift ( vorschrift_oerbkrmvs_v1_1vorschriften_dokument );
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift.vorschrift_oerbkrmvs_v1_1vorschriften_artikel IS 'Rechtsvorschrift der Eigentumsbeschränkung';
COMMENT ON COLUMN live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift.vorschrift_oerbkrmvs_v1_1vorschriften_dokument IS 'Rechtsvorschrift der Eigentumsbeschränkung';
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX IF NOT EXISTS T_ILI2DB_BASKET_dataset_idx ON live.t_ili2db_basket ( dataset );
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX IF NOT EXISTS T_ILI2DB_IMPORT_dataset_idx ON live.t_ili2db_import ( dataset );
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,importrun bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
)
;
CREATE INDEX IF NOT EXISTS T_ILI2DB_IMPORT_BASKET_importrun_idx ON live.t_ili2db_import_basket ( importrun );
CREATE INDEX IF NOT EXISTS T_ILI2DB_IMPORT_BASKET_basket_idx ON live.t_ili2db_import_basket ( basket );
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (iliversion,modelName)
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (ColOwner,SqlName)
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE IF NOT EXISTS live.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE live.localisation_v1_localisedtext ADD CONSTRAINT localisation_v1_loclsdtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.localisation_v1_localisedtext ADD CONSTRAINT localisation_v1_loclsdtext_loclstn_v1_mltxt_lclsdtext_fkey FOREIGN KEY ( loclstn_v1_mltlngltext_localisedtext ) REFERENCES live.localisation_v1_multilingualtext DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.localisation_v1_localisedmtext ADD CONSTRAINT localisation_v1_lclsdmtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.localisation_v1_localisedmtext ADD CONSTRAINT localisation_v1_lclsdmtext_loclstn_v1_lttxt_lclsdtext_fkey FOREIGN KEY ( loclstn_v1_ltlnglmtext_localisedtext ) REFERENCES live.localisation_v1_multilingualmtext DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.localisation_v1_multilingualtext ADD CONSTRAINT localisatin_v1_mltlngltext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.localisation_v1_multilingualmtext ADD CONSTRAINT localisatn_v1_mltlnglmtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.geometrychlv95_v1_surfacestructure ADD CONSTRAINT geomtrychlv95_srfcstrcture_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.geometrychlv95_v1_surfacestructure ADD CONSTRAINT geomtrychlv95_srfcstrcture_geomtrychlv1_ltsrfc_srfces_fkey FOREIGN KEY ( geomtrychlv1_mltsrface_surfaces ) REFERENCES live.geometrychlv95_v1_multisurface DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.geometrychlv95_v1_multisurface ADD CONSTRAINT geomtrychlv95_v1_mltsrface_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_artikelnummer_ ADD CONSTRAINT oerebkrm_v1_1_artiklnmmer__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_artikelnummer_ ADD CONSTRAINT oerebkrm_v1_1_artiklnmmer__oerbkrmvs_vwsrdkmnt_rtklnr_fkey FOREIGN KEY ( oerbkrmvs_vwswtrdkmnte_artikelnr ) REFERENCES live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_artikelnummer_ ADD CONSTRAINT oerebkrm_v1_1_artiklnmmer__oerbkrmfr_vwsschrft_rtklnr_fkey FOREIGN KEY ( oerbkrmfr_vwsvrschrift_artikelnr ) REFERENCES live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_datum_ ADD CONSTRAINT oerebkrm_v1_1_datum__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_thema_ ADD CONSTRAINT oerebkrm_v1_1_thema__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_webreferenz_ ADD CONSTRAINT oerebkrm_v1_1_webreferenz__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_localiseduri ADD CONSTRAINT oerebkrm_v1_1_localiseduri_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_localiseduri ADD CONSTRAINT oerebkrm_v1_1_localiseduri_oerbkrm_v1__mglr_lclsdtext_fkey FOREIGN KEY ( oerbkrm_v1__mltlngluri_localisedtext ) REFERENCES live.oerebkrm_v1_1_multilingualuri DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_multilingualuri ADD CONSTRAINT oerebkrm_v1_1_multilngluri_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_multilingualuri ADD CONSTRAINT oerebkrm_v1_1_multilngluri_oerbkrmvs_vhr_rtkl_txtmweb_fkey FOREIGN KEY ( oerbkrmvs_vhrftn_rtkel_textimweb ) REFERENCES live.oerbkrmvs_v1_1vorschriften_artikel DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1_multilingualuri ADD CONSTRAINT oerebkrm_v1_1_multilngluri_oerbkrmvs_vrfdkmnt_txtmweb_fkey FOREIGN KEY ( oerbkrmvs_vrftn_dkment_textimweb ) REFERENCES live.oerbkrmvs_v1_1vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1codelistentext_rechtsstatustxt ADD CONSTRAINT oerbkrm_v1_1c_rchtssttstxt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerebkrm_v1_1codelistentext_thematxt ADD CONSTRAINT oerbkrm_v1_1cstntxt_thmtxt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis ADD CONSTRAINT so_g_v_018082_grndbchkreis_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis ADD CONSTRAINT so_g_v_01808_grndbchkreis_grundbuchkreisnummer_check CHECK( grundbuchkreisnummer BETWEEN 1 AND 99);
ALTER TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis ADD CONSTRAINT so_g_v_01808_grndbchkreis_grundbuchkreis_bfsnr_check CHECK( grundbuchkreis_bfsnr BETWEEN 1 AND 9999);
ALTER TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis ADD CONSTRAINT so_g_v_01808_grndbchkreis_bfsnr_check CHECK( bfsnr BETWEEN 1 AND 9999);
ALTER TABLE live.so_g_v_0180822grundbuchkreise_grundbuchkreis ADD CONSTRAINT so_g_v_01808_grndbchkreis_plz_check CHECK( plz BETWEEN 1000 AND 9999);
ALTER TABLE live.so_g_v_0180822nachfuehrngskrise_gemeinde ADD CONSTRAINT so_g_v_018082rngskrs_gmnde_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.so_g_v_0180822nachfuehrngskrise_gemeinde ADD CONSTRAINT so_g_v_01808rngskrs_gmnde_bfsnr_check CHECK( bfsnr BETWEEN 1 AND 9999);
ALTER TABLE live.so_g_v_0180822nachfuehrngskrise_gemeinde ADD CONSTRAINT so_g_v_01808rngskrs_gmnde_plz_check CHECK( plz BETWEEN 1000 AND 9990);
ALTER TABLE live.oerbkrmvs_v1_1vorschriften_amt ADD CONSTRAINT oerbkrmvs_v1_vrschrftn_amt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v1_1vorschriften_artikel ADD CONSTRAINT oerbkrmvs_v1_schrftn_rtkel_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v1_1vorschriften_artikel ADD CONSTRAINT oerbkrmvs_v1_schrftn_rtkel_dokument_fkey FOREIGN KEY ( dokument ) REFERENCES live.oerbkrmvs_v1_1vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v1_1vorschriften_dokument ADD CONSTRAINT oerbkrmvs_v1_chrftn_dkment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v1_1vorschriften_dokument ADD CONSTRAINT oerbkrmvs_v1chrftn_dkment_gemeinde_check CHECK( gemeinde BETWEEN 1 AND 9999);
ALTER TABLE live.oerbkrmvs_v1_1vorschriften_dokument ADD CONSTRAINT oerbkrmvs_v1_chrftn_dkment_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES live.oerbkrmvs_v1_1vorschriften_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente ADD CONSTRAINT oerbkrmvs_v1_hnwswtrdkmnte_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente ADD CONSTRAINT oerbkrmvs_v1_hnwswtrdkmnte_ursprung_fkey FOREIGN KEY ( ursprung ) REFERENCES live.oerbkrmvs_v1_1vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente ADD CONSTRAINT oerbkrmvs_v1_hnwswtrdkmnte_hinweis_fkey FOREIGN KEY ( hinweis ) REFERENCES live.oerbkrmvs_v1_1vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oereb_extractannex_v1_0_code_ ADD CONSTRAINT oereb_extractnnx_v1_0_cde__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oereb_extractannex_v1_0_code_ ADD CONSTRAINT oereb_extractnnx_v1_0_cde__oerb_xtnx_vplwthplrc_thmes_fkey FOREIGN KEY ( oerb_xtnx_vpltywthplrc_themes ) REFERENCES live.oerb_xtnx_v1_0annex_municipalitywithplrc DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerb_xtnx_v1_0annex_thematxt ADD CONSTRAINT oerb_xtnx_v1_0annex_thmtxt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerb_xtnx_v1_0annex_logo ADD CONSTRAINT oerb_xtnx_v1_0annex_logo_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerb_xtnx_v1_0annex_municipalitywithplrc ADD CONSTRAINT oerb_xtnx_v1_ncpltywthplrc_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerb_xtnx_v1_0annex_municipalitywithplrc ADD CONSTRAINT oerb_xtnx_v1ncpltywthplrc_municipality_check CHECK( municipality BETWEEN 1 AND 9999);
ALTER TABLE live.oerb_xtnx_v1_0annex_maplayering ADD CONSTRAINT oerb_xtnx_v1_0nnx_mplyring_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerb_xtnx_v1_0annex_maplayering ADD CONSTRAINT oerb_xtnx_v10nnx_mplyring_layerindex_check CHECK( layerindex BETWEEN -1000 AND 1000);
ALTER TABLE live.oerb_xtnx_v1_0annex_maplayering ADD CONSTRAINT oerb_xtnx_v10nnx_mplyring_layeropacity_check CHECK( layeropacity BETWEEN 0.0 AND 1.0);
ALTER TABLE live.oerb_xtnx_v1_0annex_office ADD CONSTRAINT oerb_xtnx_v1_0annex_office_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerb_xtnx_v1_0annex_glossary ADD CONSTRAINT oerb_xtnx_v1_0annx_glssary_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerb_xtnx_v1_0annex_exclusionofliability ADD CONSTRAINT oerb_xtnx_v1__xclsnflblity_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerb_xtnx_v1_0annex_generalinformation ADD CONSTRAINT oerb_xtnx_v1__gnrlnfrmtion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerb_xtnx_v1_0annex_basedata ADD CONSTRAINT oerb_xtnx_v1_0annex_bsdata_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT oerbkrmfr_v1_tmsbschrnkung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT oerbkrmfr_v1_tmsbschrnkung_darstellungsdienst_fkey FOREIGN KEY ( darstellungsdienst ) REFERENCES live.oerbkrmfr_v1_1transferstruktur_darstellungsdienst DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT oerbkrmfr_v1_tmsbschrnkung_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES live.oerbkrmvs_v1_1vorschriften_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_geometrie ADD CONSTRAINT oerbkrmfr_v1_strktr_gmtrie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_geometrie ADD CONSTRAINT oerbkrmfr_v1_strktr_gmtrie_eigentumsbeschraenkung_fkey FOREIGN KEY ( eigentumsbeschraenkung ) REFERENCES live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_geometrie ADD CONSTRAINT oerbkrmfr_v1_strktr_gmtrie_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES live.oerbkrmvs_v1_1vorschriften_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition ADD CONSTRAINT oerbkrmfr_v1_r_hnwsdfntion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition ADD CONSTRAINT oerbkrmfr_v1r_hnwsdfntion_gemeinde_check CHECK( gemeinde BETWEEN 1 AND 9999);
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition ADD CONSTRAINT oerbkrmfr_v1_r_hnwsdfntion_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES live.oerbkrmvs_v1_1vorschriften_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_legendeeintrag ADD CONSTRAINT oerbkrmfr_v1_ktr_lgndntrag_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_legendeeintrag ADD CONSTRAINT oerbkrmfr_v1_ktr_lgndntrag_oerbkrmfr_vstngsdnst_lgnde_fkey FOREIGN KEY ( oerbkrmfr_vstllngsdnst_legende ) REFERENCES live.oerbkrmfr_v1_1transferstruktur_darstellungsdienst DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_darstellungsdienst ADD CONSTRAINT oerbkrmfr_v1_drstllngsdnst_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung ADD CONSTRAINT oerbkrmfr_v1_rndlgvrfnrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung ADD CONSTRAINT oerbkrmfr_v1_rndlgvrfnrung_grundlage_fkey FOREIGN KEY ( grundlage ) REFERENCES live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung ADD CONSTRAINT oerbkrmfr_v1_rndlgvrfnrung_verfeinerung_fkey FOREIGN KEY ( verfeinerung ) REFERENCES live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT oerbkrmfr_v1_wsdfntndkment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT oerbkrmfr_v1_wsdfntndkment_hinweisdefinition_fkey FOREIGN KEY ( hinweisdefinition ) REFERENCES live.oerbkrmfr_v1_1transferstruktur_hinweisdefinition DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT oerbkrmfr_v1_wsdfntndkment_dokument_fkey FOREIGN KEY ( dokument ) REFERENCES live.oerbkrmvs_v1_1vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift ADD CONSTRAINT oerbkrmfr_v1_hnwsvrschrift_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift ADD CONSTRAINT oerbkrmfr_v1_hnwsvrschrift_eigentumsbeschraenkung_fkey FOREIGN KEY ( eigentumsbeschraenkung ) REFERENCES live.oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift ADD CONSTRAINT oerbkrmfr_v1_hnwsvrschrift_vorschrft_rbkschrftn_rtkel_fkey FOREIGN KEY ( vorschrift_oerbkrmvs_v1_1vorschriften_artikel ) REFERENCES live.oerbkrmvs_v1_1vorschriften_artikel DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE live.oerbkrmfr_v1_1transferstruktur_hinweisvorschrift ADD CONSTRAINT oerbkrmfr_v1_hnwsvrschrift_vorschrft_rbkchrftn_dkment_fkey FOREIGN KEY ( vorschrift_oerbkrmvs_v1_1vorschriften_dokument ) REFERENCES live.oerbkrmvs_v1_1vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
-- ALTER TABLE live.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES live.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX IF NOT EXISTS T_ILI2DB_DATASET_datasetName_key ON live.T_ILI2DB_DATASET (datasetName)
;
-- ALTER TABLE live.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_importrun_fkey FOREIGN KEY ( importrun ) REFERENCES live.T_ILI2DB_IMPORT DEFERRABLE INITIALLY DEFERRED;
-- ALTER TABLE live.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_basket_fkey FOREIGN KEY ( basket ) REFERENCES live.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX IF NOT EXISTS T_ILI2DB_MODEL_iliversion_modelName_key ON live.T_ILI2DB_MODEL (iliversion,modelName)
;
CREATE UNIQUE INDEX IF NOT EXISTS T_ILI2DB_ATTRNAME_ColOwner_SqlName_key ON live.T_ILI2DB_ATTRNAME (ColOwner,SqlName)
;
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.ZustaendigeStelleDokument','oerbkrmvs_v1_1vorschriften_zustaendigestelledokument');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC','oerb_xtnx_v1_0annex_municipalitywithplrc');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleGeometrie','oerbkrmfr_v1_1transferstruktur_zustaendigestellegeometrie');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('GeometryCHLV95_V1.MultiSurface','geometrychlv95_v1_multisurface');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering','oerb_xtnx_v1_0annex_maplayering');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung','oerbkrmfr_v1_1transferstruktur_zustaendigstllgntmsbschrnkung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt','oerb_xtnx_v1_0annex_thematxt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie','oerbkrmfr_v1_1transferstruktur_geometrie');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde','so_g_v_0180822nachfuehrngskrise_gemeinde');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary','oerb_xtnx_v1_0annex_glossary');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('CatalogueObjects_V1.Catalogues.Item','catalgbjcts_v1catalogues_item');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.CodelistenText.RechtsStatusTxt','oerebkrm_v1_1codelistentext_rechtsstatustxt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.BaseData','oerb_xtnx_v1_0annex_basedata');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office','oerb_xtnx_v1_0annex_office');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.LocalisedUri','oerebkrm_v1_1_localiseduri');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Rechtsvorschrift','oerbkrmvs_v1_1vorschriften_rechtsvorschrift');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis','oerbkrmvs_v1_1vorschriften_dokumentbasis');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.MultilingualUri','oerebkrm_v1_1_multilingualuri');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.MultilingualText','localisationch_v1_multilingualtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.LocalisedText','localisationch_v1_localisedtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung','oerbkrmfr_v1_1transferstruktur_darstllngsdnstgntmsbschrnkung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt','oerbkrmvs_v1_1vorschriften_amt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GeometrieEigentumsbeschraenkung','oerbkrmfr_v1_1transferstruktur_geometrieeigentumsbeschrnkung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Code_','oereb_extractannex_v1_0_code_');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.MultilingualText','localisation_v1_multilingualtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.ArtikelInhaltMehrsprachig','oerebkrm_v1_1_artikelinhaltmehrsprachig');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.WebReferenz_','oerebkrm_v1_1_webreferenz_');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Logo','oerb_xtnx_v1_0annex_logo');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst','oerbkrmfr_v1_1transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.MultilingualMText','localisationch_v1_multilingualmtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.CodelistenText.ThemaTxt','oerebkrm_v1_1codelistentext_thematxt');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation','oerb_xtnx_v1_0annex_generalinformation');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentArtikel','oerbkrmvs_v1_1vorschriften_dokumentartikel');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.LocalisedText','localisation_v1_localisedtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis','so_g_v_0180822grundbuchkreise_grundbuchkreis');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente','oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.LocalisedMText','localisation_v1_localisedmtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionZustaendigeStelle','oerbkrmfr_v1_1transferstruktur_hinweisdefinitionzustndgstlle');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel','oerbkrmvs_v1_1vorschriften_artikel');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.Datum_','oerebkrm_v1_1_datum_');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition','oerbkrmfr_v1_1transferstruktur_hinweisdefinition');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.ArtikelNummer_','oerebkrm_v1_1_artikelnummer_');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung','oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.LocalisedMText','localisationch_v1_localisedmtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument','oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.MultilingualMText','localisation_v1_multilingualmtext');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.Thema_','oerebkrm_v1_1_thema_');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag','oerbkrmfr_v1_1transferstruktur_legendeeintrag');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability','oerb_xtnx_v1_0annex_exclusionofliability');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('GeometryCHLV95_V1.SurfaceStructure','geometrychlv95_v1_surfacestructure');
INSERT INTO live.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift','oerbkrmfr_v1_1transferstruktur_hinweisvorschrift');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument.HinweisDefinition','hinweisdefinition','oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument','oerbkrmfr_v1_1transferstruktur_hinweisdefinition');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentArtikel.Dokument','dokument','oerbkrmvs_v1_1vorschriften_artikel','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Telefon','telefon','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation.Content','content','oerb_xtnx_v1_0annex_generalinformation',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Art','art','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Street','street','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary.Content','content','oerb_xtnx_v1_0annex_glossary',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.MultilingualText.LocalisedText','loclstn_v1_mltlngltext_localisedtext','localisation_v1_localisedtext','localisation_v1_multilingualtext');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Perimeter','perimeter','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.PLZ','plz','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Ortschaft','ortschaft','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition.Thema','thema','oerbkrmfr_v1_1transferstruktur_hinweisdefinition',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.Rechtsstatus','rechtsstatus','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt.otherCode','othercode','oerb_xtnx_v1_0annex_thematxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.MultilingualUri.LocalisedText','oerbkrm_v1__mltlngluri_localisedtext','oerebkrm_v1_1_localiseduri','oerebkrm_v1_1_multilingualuri');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Punkt_LV03','punkt_lv03','oerbkrmfr_v1_1transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionZustaendigeStelle.ZustaendigeStelle','zustaendigestelle','oerbkrmfr_v1_1transferstruktur_hinweisdefinition','oerbkrmvs_v1_1vorschriften_amt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Number','anumber','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Amt','amt','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Abkuerzung','abkuerzung','oerbkrmvs_v1_1vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Strasse','strasse','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.CodelistenText.RechtsStatusTxt.Titel','titel','oerebkrm_v1_1codelistentext_rechtsstatustxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.NFG_Titel','nfg_titel','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Email','email','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.OffizielleNr','offiziellenr','oerbkrmvs_v1_1vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('GeometryCHLV95_V1.SurfaceStructure.Surface','surface','geometrychlv95_v1_surfacestructure',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.ArtCode','artcode','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Text','atext','localisation_v1_localisedtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Punkt_LV95','punkt_lv95','oerbkrmfr_v1_1transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Hausnummer','hausnummer','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Hausnummer','hausnummer','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Firma_Zusatz','firma_zusatz','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.PLZ','plz','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.TextImWeb','oerbkrmvs_vrftn_dkment_textimweb','oerebkrm_v1_1_multilingualuri','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung.Grundlage','grundlage','oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.NFG_Vorname','nfg_vorname','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.Aussage','aussage','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt.UID','auid','oerbkrmvs_v1_1vorschriften_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition.Kanton','kanton','oerbkrmfr_v1_1transferstruktur_hinweisdefinition',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Flaeche_LV95','flaeche_lv95','oerbkrmfr_v1_1transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC.themes','oerb_xtnx_vpltywthplrc_themes','oereb_extractannex_v1_0_code_','oerb_xtnx_v1_0annex_municipalitywithplrc');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('GeometryCHLV95_V1.MultiSurface.Surfaces','geomtrychlv1_mltsrface_surfaces','geometrychlv95_v1_surfacestructure','geometrychlv95_v1_multisurface');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Code_.value','avalue','oereb_extractannex_v1_0_code_',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel.Nr','nr','oerbkrmvs_v1_1vorschriften_artikel',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Perimeter','perimeter','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Gemeinde','gemeinde','oerbkrmvs_v1_1vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC.metadataOfGeographicalBaseData','metadataofgeographicalbasedata','oerb_xtnx_v1_0annex_municipalitywithplrc',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.CodelistenText.ThemaTxt.Titel','titel','oerebkrm_v1_1codelistentext_thematxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente.ArtikelNr','oerbkrmvs_vwswtrdkmnte_artikelnr','oerebkrm_v1_1_artikelnummer_','oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente.Ursprung','ursprung','oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Rechtsstatus','rechtsstatus','oerbkrmfr_v1_1transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung.DarstellungsDienst','darstellungsdienst','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung','oerbkrmfr_v1_1transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Email','email','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Language','alanguage','localisation_v1_localisedtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt.Code','acode','oerb_xtnx_v1_0annex_thematxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift.Vorschrift','vorschrift_oerbkrmvs_v1_1vorschriften_dokument','oerbkrmfr_v1_1transferstruktur_hinweisvorschrift','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift.Vorschrift','vorschrift_oerbkrmvs_v1_1vorschriften_artikel','oerbkrmfr_v1_1transferstruktur_hinweisvorschrift','oerbkrmvs_v1_1vorschriften_artikel');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt.Name','aname','oerbkrmvs_v1_1vorschriften_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary.Title','title','oerb_xtnx_v1_0annex_glossary',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.CodelistenText.ThemaTxt.Code','acode','oerebkrm_v1_1codelistentext_thematxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift.Eigentumsbeschraenkung','eigentumsbeschraenkung','oerbkrmfr_v1_1transferstruktur_hinweisvorschrift','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.Rechtsstatus','rechtsstatus','oerbkrmvs_v1_1vorschriften_artikel',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt.AmtImWeb','amtimweb','oerbkrmvs_v1_1vorschriften_amt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Flaeche_LV03','flaeche_lv03','oerbkrmfr_v1_1transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.Thema_.value','avalue','oerebkrm_v1_1_thema_',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument.Dokument','dokument','oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.publiziertAb','publiziertab','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.ZustaendigeStelleDokument.ZustaendigeStelle','zustaendigestelle','oerbkrmvs_v1_1vorschriften_dokument','oerbkrmvs_v1_1vorschriften_amt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Web','web','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Logo.logo','logo','oerb_xtnx_v1_0annex_logo',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering.layerIndex','layerindex','oerb_xtnx_v1_0annex_maplayering',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.SubThema','subthema','oerbkrmfr_v1_1transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Name','aname','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.ArtikelNummer_.value','avalue','oerebkrm_v1_1_artikelnummer_',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.NBIdent','nbident','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Linie_LV95','linie_lv95','oerbkrmfr_v1_1transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.Symbol','symbol','oerbkrmfr_v1_1transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleGeometrie.ZustaendigeStelle','zustaendigestelle','oerbkrmfr_v1_1transferstruktur_geometrie','oerbkrmvs_v1_1vorschriften_amt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente.Hinweis','hinweis','oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.ArtCode','artcode','oerbkrmfr_v1_1transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.TextImWeb','oerbkrmvs_vhrftn_rtkel_textimweb','oerebkrm_v1_1_multilingualuri','oerbkrmvs_v1_1vorschriften_artikel');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC.municipality','municipality','oerb_xtnx_v1_0annex_municipalitywithplrc',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Name','aname','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.BFSNr','bfsnr','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.WeiteresThema','weiteresthema','oerbkrmfr_v1_1transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.Thema','thema','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability.Title','title','oerb_xtnx_v1_0annex_exclusionofliability',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst.LegendeImWeb','legendeimweb','oerbkrmfr_v1_1transferstruktur_darstellungsdienst',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.UID','auid','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.OfficeAtWeb','officeatweb','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Logo.code','acode','oerb_xtnx_v1_0annex_logo',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.CodelistenText.RechtsStatusTxt.Code','acode','oerebkrm_v1_1codelistentext_rechtsstatustxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.Datum_.value','avalue','oerebkrm_v1_1_datum_',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst.Legende','oerbkrmfr_vstllngsdnst_legende','oerbkrmfr_v1_1transferstruktur_legendeeintrag','oerbkrmfr_v1_1transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Firma','firma','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Ortschaft','ortschaft','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Strasse','strasse','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition.Gemeinde','gemeinde','oerbkrmfr_v1_1transferstruktur_hinweisdefinition',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Dokument','dokument','oerbkrmvs_v1_1vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Line1','line1','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC.baseDataDate','basedatadate','oerb_xtnx_v1_0annex_municipalitywithplrc',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.City','city','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.Rechtsstatus','rechtsstatus','oerbkrmvs_v1_1vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Titel','titel','oerbkrmvs_v1_1vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung.ZustaendigeStelle','zustaendigestelle','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung','oerbkrmvs_v1_1vorschriften_amt');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.UID','auid','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung.Verfeinerung','verfeinerung','oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GeometrieEigentumsbeschraenkung.Eigentumsbeschraenkung','eigentumsbeschraenkung','oerbkrmfr_v1_1transferstruktur_geometrie','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Kanton','kanton','oerbkrmvs_v1_1vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.Thema','thema','oerbkrmfr_v1_1transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.publiziertAb','publiziertab','oerbkrmvs_v1_1vorschriften_artikel',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.MetadatenGeobasisdaten','metadatengeobasisdaten','oerbkrmfr_v1_1transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.BaseData.Content','content','oerb_xtnx_v1_0annex_basedata',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Gemeindename','gemeindename','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.WeiteresThema','weiteresthema','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Telefon','telefon','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.LegendeText','legendetext','oerbkrmfr_v1_1transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.PostalCode','postalcode','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Amtschreiberei','amtschreiberei','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.publiziertAb','publiziertab','oerbkrmvs_v1_1vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.ArtCodeliste','artcodeliste','oerbkrmfr_v1_1transferstruktur_legendeeintrag',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering.webservice','webservice','oerb_xtnx_v1_0annex_maplayering',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.NFG_Name','nfg_name','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.OffiziellerTitel','offiziellertitel','oerbkrmvs_v1_1vorschriften_dokument',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering.layerOpacity','layeropacity','oerb_xtnx_v1_0annex_maplayering',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Grundbuchkreis_BFSNr','grundbuchkreis_bfsnr','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Linie_LV03','linie_lv03','oerbkrmfr_v1_1transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst.VerweisWMS','verweiswms','oerbkrmfr_v1_1transferstruktur_darstellungsdienst',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Web','web','so_g_v_0180822nachfuehrngskrise_gemeinde',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability.Content','content','oerb_xtnx_v1_0annex_exclusionofliability',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedMText.Text','atext','localisation_v1_localisedmtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.SubThema','subthema','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel.Text','atext','oerbkrmvs_v1_1vorschriften_artikel',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.BFSNr','bfsnr','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Grundbuchkreisnummer','grundbuchkreisnummer','so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.publiziertAb','publiziertab','oerbkrmfr_v1_1transferstruktur_geometrie',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Line2','line2','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.ArtCodeliste','artcodeliste','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift.ArtikelNr','oerbkrmfr_vwsvrschrift_artikelnr','oerebkrm_v1_1_artikelnummer_','oerbkrmfr_v1_1transferstruktur_hinweisvorschrift');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.WebReferenz_.value','avalue','oerebkrm_v1_1_webreferenz_',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt.Titel','titel','oerb_xtnx_v1_0annex_thematxt',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.LocalisedUri.Language','alanguage','oerebkrm_v1_1_localiseduri',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.MultilingualMText.LocalisedText','loclstn_v1_ltlnglmtext_localisedtext','localisation_v1_localisedmtext','localisation_v1_multilingualmtext');
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedMText.Language','alanguage','localisation_v1_localisedmtext',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.LocalisedUri.Text','atext','oerebkrm_v1_1_localiseduri',NULL);
INSERT INTO live.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.UID','auid','oerb_xtnx_v1_0annex_office',NULL);
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.CodelistenText.ThemaTxt.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.ZustaendigeStelleDokument','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleGeometrie','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('GeometryCHLV95_V1.MultiSurface','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('CatalogueObjects_V1.Catalogues.Item','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.CodelistenText.RechtsStatusTxt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability.Content','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.BaseData','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.LocalisedUri','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.BaseData.Content','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Rechtsvorschrift','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.LegendeText','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation.Content','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.MultilingualUri','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde.Perimeter','ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.MultilingualText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.LocalisedText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office.Name','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GeometrieEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Code_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Abkuerzung','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary.Content','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.MultilingualText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.ArtikelInhaltMehrsprachig','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.WebReferenz_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Logo','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.MultilingualMText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.CodelistenText.ThemaTxt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentArtikel','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability.Title','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.LocalisedText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.LocalisedMText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionZustaendigeStelle','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary.Title','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.Datum_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.ArtikelNummer_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.LocalisedMText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.OffiziellerTitel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.CodelistenText.RechtsStatusTxt.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis.Perimeter','ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt.Name','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.Aussage','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.MultilingualMText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.Thema_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel.Text','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('GeometryCHLV95_V1.SurfaceStructure','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.MultilingualText',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('GeometryCHLV95_V1.SurfaceStructure',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionZustaendigeStelle',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Code_',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.WebReferenz_',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.ArtikelInhaltMehrsprachig','LocalisationCH_V1.MultilingualMText');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel','OeREBKRMvs_V1_1.Vorschriften.DokumentBasis');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('CatalogueObjects_V1.Catalogues.Item',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.GeneralInformation',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.Datum_',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Logo',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.MultilingualUri',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.MultilingualText','Localisation_V1.MultilingualText');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument','OeREBKRMvs_V1_1.Vorschriften.DokumentBasis');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.BaseData',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleGeometrie',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.ZustaendigeStelleDokument',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ThemaTxt','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.ExclusionOfLiability',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.MultilingualMText',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.ArtikelNummer_',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MapLayering',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.CodelistenText.RechtsStatusTxt','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.LocalisedUri',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.MunicipalityWithPLRC',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentArtikel',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Nachfuehrungskreise.Gemeinde',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.CodelistenText.ThemaTxt','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('GeometryCHLV95_V1.MultiSurface',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GeometrieEigentumsbeschraenkung',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.LocalisedText',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.LocalisedMText',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.LocalisedMText','Localisation_V1.LocalisedMText');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Office',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.MultilingualMText','Localisation_V1.MultilingualMText');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.LocalisedText','Localisation_V1.LocalisedText');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.Grundbuchkreise.Grundbuchkreis',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREB_ExtractAnnex_V1_0.Annex.Glossary',NULL);
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Rechtsvorschrift','OeREBKRMvs_V1_1.Vorschriften.Dokument');
INSERT INTO live.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.Thema_',NULL);
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_thema_',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v1_1_thema_"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente',NULL,'ursprung','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_artikelnummer_',NULL,'oerbkrmvs_vwswtrdkmnte_artikelnr','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1codelistentext_rechtsstatustxt',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v1_1codelistentext_rechtsstatustxt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.srid','21781');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_maplayering',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_maplayering"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_multisurface',NULL,'T_Type','ch.ehi.ili2db.types','["geometrychlv95_v1_multisurface"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v1_1vorschriften_artikel',NULL,'dokument','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisdefinition',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_amt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_logo',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_logo"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_localiseduri',NULL,'oerbkrm_v1__mltlngluri_localisedtext','ch.ehi.ili2db.foreignKey','oerebkrm_v1_1_multilingualuri');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedmtext',NULL,'atext','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.c1Max','870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'eigentumsbeschraenkung','ch.ehi.ili2db.foreignKey','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v1_1vorschriften_artikel',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v1_1vorschriften_artikel"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.c2Max','310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_darstellungsdienst',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v1_1transferstruktur_darstellungsdienst"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_multilingualuri',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v1_1_multilingualuri"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_multilingualuri',NULL,'oerbkrmvs_vrftn_dkment_textimweb','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_thematxt',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_thematxt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oereb_extractannex_v1_0_code_',NULL,'T_Type','ch.ehi.ili2db.types','["oereb_extractannex_v1_0_code_"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_basedata',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_basedata"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v1_1vorschriften_dokument',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v1_1vorschriften_dokument","oerbkrmvs_v1_1vorschriften_rechtsvorschrift"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_multilingualuri',NULL,'oerbkrmvs_vhrftn_rtkel_textimweb','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_artikel');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1codelistentext_thematxt',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v1_1codelistentext_thematxt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_multilingualtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_multilingualtext","localisationch_v1_multilingualtext"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.srid','21781');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.c1Max','870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.c1Min','460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_artikelnummer_',NULL,'oerbkrmfr_vwsvrschrift_artikelnr','ch.ehi.ili2db.foreignKey','oerbkrmfr_v1_1transferstruktur_hinweisvorschrift');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_legendeeintrag',NULL,'oerbkrmfr_vstllngsdnst_legende','ch.ehi.ili2db.foreignKey','oerbkrmfr_v1_1transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_office',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_office"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_artikelnummer_',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v1_1_artikelnummer_"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_exclusionofliability',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_exclusionofliability"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedmtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_localisedmtext","localisationch_v1_localisedmtext"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.c2Min','45000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_localisedtext","localisationch_v1_localisedtext"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v1_1vorschriften_dokument',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_amt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_legendeeintrag',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v1_1transferstruktur_legendeeintrag"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'T_Type','ch.ehi.ili2db.types','["geometrychlv95_v1_surfacestructure"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisvorschrift',NULL,'vorschrift_oerbkrmvs_v1_1vorschriften_artikel','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_artikel');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung',NULL,'verfeinerung','ch.ehi.ili2db.foreignKey','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_municipalitywithplrc',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_municipalitywithplrc"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'T_Type','ch.ehi.ili2db.types','["so_g_v_0180822nachfuehrngskrise_gemeinde"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisvorschrift',NULL,'vorschrift_oerbkrmvs_v1_1vorschriften_dokument','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_datum_',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v1_1_datum_"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.srid','2056');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_glossary',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_glossary"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.c1Min','460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.c2Min','45000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.c2Max','310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisvorschrift',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v1_1transferstruktur_hinweisvorschrift"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.srid','21781');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisdefinition',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v1_1transferstruktur_hinweisdefinition"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_amt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.c2Min','45000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.c2Max','310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument',NULL,'hinweisdefinition','ch.ehi.ili2db.foreignKey','oerbkrmfr_v1_1transferstruktur_hinweisdefinition');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_webreferenz_',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v1_1_webreferenz_"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oereb_extractannex_v1_0_code_',NULL,'oerb_xtnx_vpltywthplrc_themes','ch.ehi.ili2db.foreignKey','oerb_xtnx_v1_0annex_municipalitywithplrc');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL,'darstellungsdienst','ch.ehi.ili2db.foreignKey','oerbkrmfr_v1_1transferstruktur_darstellungsdienst');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisvorschrift',NULL,'eigentumsbeschraenkung','ch.ehi.ili2db.foreignKey','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_multilingualmtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisation_v1_multilingualmtext","localisationch_v1_multilingualmtext","oerebkrm_v1_1_artikelinhaltmehrsprachig"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente',NULL,'hinweis','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung',NULL,'grundlage','ch.ehi.ili2db.foreignKey','oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.c1Max','870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.geomType','POINT');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerebkrm_v1_1_localiseduri',NULL,'T_Type','ch.ehi.ili2db.types','["oerebkrm_v1_1_localiseduri"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerb_xtnx_v1_0annex_generalinformation',NULL,'T_Type','ch.ehi.ili2db.types','["oerb_xtnx_v1_0annex_generalinformation"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'geomtrychlv1_mltsrface_surfaces','ch.ehi.ili2db.foreignKey','geometrychlv95_v1_multisurface');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_eigentumsbeschraenkung',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_amt');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure',NULL,'surface','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument',NULL,'dokument','ch.ehi.ili2db.foreignKey','oerbkrmvs_v1_1vorschriften_dokument');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'T_Type','ch.ehi.ili2db.types','["so_g_v_0180822grundbuchkreise_grundbuchkreis"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822nachfuehrngskrise_gemeinde',NULL,'perimeter','ch.ehi.ili2db.geomType','MULTIPOLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedtext',NULL,'loclstn_v1_mltlngltext_localisedtext','ch.ehi.ili2db.foreignKey','localisation_v1_multilingualtext');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisation_v1_localisedmtext',NULL,'loclstn_v1_ltlnglmtext_localisedtext','ch.ehi.ili2db.foreignKey','localisation_v1_multilingualmtext');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmvs_v1_1vorschriften_amt',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmvs_v1_1vorschriften_amt"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('so_g_v_0180822grundbuchkreise_grundbuchkreis',NULL,'perimeter','ch.ehi.ili2db.geomType','MULTIPOLYGON');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'T_Type','ch.ehi.ili2db.types','["oerbkrmfr_v1_1transferstruktur_geometrie"]');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.coordDimension','2');
INSERT INTO live.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.c1Min','460000.000');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v1_1codelistentext_thematxt','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_localisedtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v1_1_localiseduri','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v1_1_multilingualuri','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('geometrychlv95_v1_multisurface','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_grundlageverfeinerung','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisdefinitiondokument','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_localisedmtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_legendeeintrag','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v1_1_datum_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v1_1_webreferenz_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v1_1_thema_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmfr_v1_1transferstruktur_hinweisvorschrift','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerb_xtnx_v1_0annex_thematxt','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_multilingualtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('geometrychlv95_v1_surfacestructure','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisation_v1_multilingualmtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oereb_extractannex_v1_0_code_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerbkrmvs_v1_1vorschriften_hinweisweiteredokumente','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v1_1codelistentext_rechtsstatustxt','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO live.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('oerebkrm_v1_1_artikelnummer_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part4_ADMINISTRATIVEUNITS_20110830.ili','2.3','CHAdminCodes_V1 AdministrativeUnits_V1{ CHAdminCodes_V1 InternationalCodes_V1 Dictionaries_V1 Localisation_V1 INTERLIS} AdministrativeUnitsCH_V1{ CHAdminCodes_V1 InternationalCodes_V1 LocalisationCH_V1 AdministrativeUnits_V1 INTERLIS}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART IV -- ADMINISTRATIVE UNITS
   - Package CHAdminCodes
   - Package AdministrativeUnits
   - Package AdministrativeUnitsCH
*/

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2018-02-19 | KOGIS | CHCantonCode adapted (FL and CH added) (line 34)

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL CHAdminCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2018-02-19" =

  DOMAIN
    CHCantonCode = (ZH,BE,LU,UR,SZ,OW,NW,GL,ZG,FR,SO,BS,BL,SH,AR,AI,SG,
                    GR,AG,TG,TI,VD,VS,NE,GE,JU,FL,CH);

    CHMunicipalityCode = 1..9999;  !! BFS-Nr

END CHAdminCodes_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL AdministrativeUnits_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;
  IMPORTS Dictionaries_V1;

  TOPIC AdministrativeUnits (ABSTRACT) =

    CLASS AdministrativeElement (ABSTRACT) =
    END AdministrativeElement;

    CLASS AdministrativeUnit (ABSTRACT) EXTENDS AdministrativeElement =
    END AdministrativeUnit;

    ASSOCIATION Hierarchy =
      UpperLevelUnit (EXTERNAL) -<> {0..1} AdministrativeUnit;
      LowerLevelUnit -- AdministrativeUnit;
    END Hierarchy;

    CLASS AdministrativeUnion (ABSTRACT) EXTENDS AdministrativeElement =
    END AdministrativeUnion;

    ASSOCIATION UnionMembers =
      Union -<> AdministrativeUnion;
      Member -- AdministrativeElement; 
    END UnionMembers;

  END AdministrativeUnits;

  TOPIC Countries EXTENDS AdministrativeUnits =

    CLASS Country EXTENDS AdministrativeUnit =
      Code: MANDATORY CountryCode_ISO3166_1;
    UNIQUE Code;
    END Country;

  END Countries;

  TOPIC CountryNames EXTENDS Dictionaries_V1.Dictionaries =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    STRUCTURE CountryName EXTENDS Entry =
      Code: MANDATORY CountryCode_ISO3166_1;
    END CountryName;
      
    CLASS CountryNamesTranslation EXTENDS Dictionary  =
      Entries(EXTENDED): LIST OF CountryName;
    UNIQUE Entries->Code;
    EXISTENCE CONSTRAINT
      Entries->Code REQUIRED IN AdministrativeUnits_V1.Countries.Country: Code;
    END CountryNamesTranslation;

  END CountryNames;

  TOPIC Agencies (ABSTRACT) =
    DEPENDS ON AdministrativeUnits_V1.AdministrativeUnits;

    CLASS Agency (ABSTRACT) =
    END Agency;

    ASSOCIATION Authority =
      Supervisor (EXTERNAL) -<> {1..1} Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Agency -- Agency;
    END Authority;

    ASSOCIATION Organisation =
      Orderer (EXTERNAL) -- Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Executor -- Agency;
    END Organisation;

  END Agencies;

END AdministrativeUnits_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL AdministrativeUnitsCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS LocalisationCH_V1;
  IMPORTS AdministrativeUnits_V1;

  TOPIC CHCantons EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    CLASS CHCanton EXTENDS AdministrativeUnit =
      Code: MANDATORY CHCantonCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHCanton;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnits_V1.Countries.Country;
      LowerLevelUnit (EXTENDED) -- CHCanton;
    MANDATORY CONSTRAINT
      UpperLevelUnit->Code == "CHE";
    END Hierarchy;

  END CHCantons;

  TOPIC CHDistricts EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;

    CLASS CHDistrict EXTENDS AdministrativeUnit =
      ShortName: MANDATORY TEXT*20;
      Name: LocalisationCH_V1.MultilingualText;
      Web: MANDATORY URI;
    END CHDistrict;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton;
      LowerLevelUnit (EXTENDED) -- CHDistrict;
    UNIQUE UpperLevelUnit->Code, LowerLevelUnit->ShortName;
    END Hierarchy;

  END CHDistricts;

  TOPIC CHMunicipalities EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;

    CLASS CHMunicipality EXTENDS AdministrativeUnit =
      Code: MANDATORY CHMunicipalityCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHMunicipality;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton
      OR AdministrativeUnitsCH_V1.CHDistricts.CHDistrict;
      LowerLevelUnit (EXTENDED) -- CHMunicipality;
    END Hierarchy;

  END CHMunicipalities;

  TOPIC CHAdministrativeUnions EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS AdministrativeUnion (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END AdministrativeUnion;

  END CHAdministrativeUnions;

  TOPIC CHAgencies EXTENDS AdministrativeUnits_V1.Agencies =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS Agency (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END Agency;

  END CHAgencies;

END AdministrativeUnitsCH_V1.

!! ########################################################################
','2019-10-04 13:49:26.489');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part3_CATALOGUEOBJECTS_20110830.ili','2.3','CatalogueObjects_V1{ INTERLIS} CatalogueObjectTrees_V1{ INTERLIS CatalogueObjects_V1}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART III -- CATALOGUE OBJECTS
   - Package CatalogueObjects
   - Package CatalogueObjectTrees
*/

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL CatalogueObjects_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;

  TOPIC Catalogues (ABSTRACT) =

    CLASS Item (ABSTRACT) =
    END Item;

    STRUCTURE CatalogueReference (ABSTRACT) =
      Reference: REFERENCE TO (EXTERNAL) Item;
    END CatalogueReference;
 
    STRUCTURE MandatoryCatalogueReference (ABSTRACT) =
      Reference: MANDATORY REFERENCE TO (EXTERNAL) Item;
    END MandatoryCatalogueReference;

  END Catalogues;

END CatalogueObjects_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL CatalogueObjectTrees_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS CatalogueObjects_V1;

  TOPIC Catalogues (ABSTRACT) EXTENDS CatalogueObjects_V1.Catalogues =

    CLASS Item (ABSTRACT,EXTENDED) = 
      IsSuperItem: MANDATORY BOOLEAN;
      IsUseable: MANDATORY BOOLEAN;
    MANDATORY CONSTRAINT
      IsSuperItem OR IsUseable;
    END Item;

    ASSOCIATION EntriesTree =
      Parent -<#> Item;
      Child -- Item;
    MANDATORY CONSTRAINT
      Parent->IsSuperItem;
    END EntriesTree;

    STRUCTURE CatalogueReference (ABSTRACT,EXTENDED) =
      Reference(EXTENDED): REFERENCE TO (EXTERNAL) Item;
    MANDATORY CONSTRAINT
      Reference->IsUseable;
    END CatalogueReference;
 
    STRUCTURE MandatoryCatalogueReference (ABSTRACT,EXTENDED) =
      Reference(EXTENDED): MANDATORY REFERENCE TO (EXTERNAL) Item;
    MANDATORY CONSTRAINT
      Reference->IsUseable;
    END MandatoryCatalogueReference;

  END Catalogues;

END CatalogueObjectTrees_V1.

!! ########################################################################
','2019-10-04 13:49:26.489');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREB_ExtractAnnex_V1_0.ili','2.3','OeREB_ExtractAnnex_V1_0{ CHAdminCodes_V1 LocalisationCH_V1 OeREBKRM_V1_1 CatalogueObjects_V1}','INTERLIS 2.3;

/** Zusatzdaten für statischen OEREB-Auszug
 */
MODEL OeREB_ExtractAnnex_V1_0 (de)
AT "mailto:ce@eisenhutinformatik.ch"
VERSION "2019-09-02"  =
  IMPORTS OeREBKRM_V1_1,CHAdminCodes_V1,LocalisationCH_V1,CatalogueObjects_V1;

    DOMAIN
      Code = TEXT*60; 
      STRUCTURE Code_ = value : MANDATORY Code; END Code_;
    TOPIC Annex =
        
        CLASS ThemaTxt
        	EXTENDS CatalogueObjects_V1.Catalogues.Item =
		  Code : MANDATORY OeREBKRM_V1_1.Thema;
		  Titel : MANDATORY LocalisationCH_V1.MultilingualText;
          /** 
           * Kantonales Subthema zu einem Bundesthema:
           *   Code=Nutzungsplanung
           *   otherCode=ch.so.Nutzungsplanung.CantonalBuildingLines
           *   In der Transferstruktur:
           *     Eigentumsbeschraenkung/Thema=Nutzungsplanung
           *     Eigentumsbeschraenkung/SubThema=ch.so.Nutzungsplanung.CantonalBuildingLines
           * Kantonales Thema (kein Subthema zu einem Bundesthema): 
           *   Code=WeiteresThema
           *   otherCode=ch.so.Einzelschutz
           *   In der Transferstruktur:
           *     Eigentumsbeschraenkung/Thema=WeiteresThema
           *     Eigentumsbeschraenkung/SubThema=ch.so.Einzelschutz
           */
          otherCode : Code;
          MANDATORY CONSTRAINT Code!=#WeiteresThema OR DEFINED(otherCode);
          UNIQUE otherCode;
        END ThemaTxt;
        
		CLASS Logo =
		  /** ch.plr, ch, ch.so oder ch.bfsnr
		   */
		  code : MANDATORY Code;
		  logo : MANDATORY BLACKBOX BINARY;
		  UNIQUE code;
		END Logo;
		
		CLASS MunicipalityWithPLRC =
		  /** BFS-Nr.
		   */
		  municipality : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
		  /** Thema / SubThema 
		   * Bundesthema:
           *   value=Nutzungsplanung
           * Kantonales Subthema zu einem Bundesthema:
           *   value=ch.so.Nutzungsplanung.CantonalBuildingLines
           * Kantonales Thema (kein Subthema zu einem Bundesthema): 
           *   value=ch.so.Einzelschutz
		   */
		  themes : BAG OF Code_;
		  /** Stand der Grundlagedaten z.B. der AV
		   */
		  baseDataDate : INTERLIS.XMLDateTime;
		  metadataOfGeographicalBaseData : URI;
		  UNIQUE municipality;
		END MunicipalityWithPLRC;

		CLASS MapLayering =
		  webservice : MANDATORY URI;
          layerIndex : MANDATORY -1000 .. 1000;
          layerOpacity : MANDATORY 0.000 .. 1.000;
		END MapLayering;
		
		CLASS Office =
		  Name : MANDATORY LocalisationCH_V1.MultilingualText;
		  /** OfficeAtWeb wird für die Referenzierung verwendet!
		   *  solange UID nicht generell zugeordnet.
		   */
		  OfficeAtWeb : MANDATORY OeREBKRM_V1_1.WebReferenz;
		  UID : OeREBKRM_V1_1.UID;
		  /** Falls im statischen Auszug mehr Informationen angezeigt 
		   *  werden sollen als im Rahmenmodell möglich ist zu erfassen. 
		   *  Im Rahmenmodell können nur die Attribute Name, AmtImWeb, UID erfasst werden.
		  */
		  Line1 : TEXT*80;
		  Line2 : TEXT*80;
		  Street : TEXT*100;
		  Number : TEXT*7;
		  PostalCode : TEXT*4;
		  City : TEXT*60;
		  UNIQUE UID;
		  UNIQUE OfficeAtWeb;
		END Office;

    CLASS Glossary =
	  /** Abkürzung
	   */
      Title : MANDATORY LocalisationCH_V1.MultilingualText;
	  /** Beschreibung der Abkürzung
	   */	  
      Content : MANDATORY LocalisationCH_V1.MultilingualMText;
    END Glossary;

    CLASS ExclusionOfLiability =
	  /** Haftungsausschuss
	   */
      Title : MANDATORY LocalisationCH_V1.MultilingualText;
	  
      Content : MANDATORY LocalisationCH_V1.MultilingualMText;
    END ExclusionOfLiability;
		
    CLASS  GeneralInformation =
	  /** Allgemeine Informationen
	   */
      Content : MANDATORY LocalisationCH_V1.MultilingualMText;
    END GeneralInformation;

    CLASS  BaseData =
	 /** Grundlagedaten z.B. AV
	  */
      Content : MANDATORY LocalisationCH_V1.MultilingualMText;
	END BaseData;		
		
	END Annex;
    

END OeREB_ExtractAnnex_V1_0.
','2019-10-04 13:49:26.489');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('Units-20120220.ili','2.3','Units','!! File Units.ili Release 2012-02-20

INTERLIS 2.3;

!! 2012-02-20 definition of "Bar [bar]" corrected
!!@precursorVersion = 2005-06-06

CONTRACTED TYPE MODEL Units (en) AT "http://www.interlis.ch/models"
  VERSION "2012-02-20" =

  UNIT
    !! abstract Units
    Area (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH);
    Volume (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH*INTERLIS.LENGTH);
    Velocity (ABSTRACT) = (INTERLIS.LENGTH/INTERLIS.TIME);
    Acceleration (ABSTRACT) = (Velocity/INTERLIS.TIME);
    Force (ABSTRACT) = (INTERLIS.MASS*INTERLIS.LENGTH/INTERLIS.TIME/INTERLIS.TIME);
    Pressure (ABSTRACT) = (Force/Area);
    Energy (ABSTRACT) = (Force*INTERLIS.LENGTH);
    Power (ABSTRACT) = (Energy/INTERLIS.TIME);
    Electric_Potential (ABSTRACT) = (Power/INTERLIS.ELECTRIC_CURRENT);
    Frequency (ABSTRACT) = (INTERLIS.DIMENSIONLESS/INTERLIS.TIME);

    Millimeter [mm] = 0.001 [INTERLIS.m];
    Centimeter [cm] = 0.01 [INTERLIS.m];
    Decimeter [dm] = 0.1 [INTERLIS.m];
    Kilometer [km] = 1000 [INTERLIS.m];

    Square_Meter [m2] EXTENDS Area = (INTERLIS.m*INTERLIS.m);
    Cubic_Meter [m3] EXTENDS Volume = (INTERLIS.m*INTERLIS.m*INTERLIS.m);

    Minute [min] = 60 [INTERLIS.s];
    Hour [h] = 60 [min];
    Day [d] = 24 [h];

    Kilometer_per_Hour [kmh] EXTENDS Velocity = (km/h);
    Meter_per_Second [ms] = 3.6 [kmh];
    Newton [N] EXTENDS Force = (INTERLIS.kg*INTERLIS.m/INTERLIS.s/INTERLIS.s);
    Pascal [Pa] EXTENDS Pressure = (N/m2);
    Joule [J] EXTENDS Energy = (N*INTERLIS.m);
    Watt [W] EXTENDS Power = (J/INTERLIS.s);
    Volt [V] EXTENDS Electric_Potential = (W/INTERLIS.A);

    Inch [in] = 2.54 [cm];
    Foot [ft] = 0.3048 [INTERLIS.m];
    Mile [mi] = 1.609344 [km];

    Are [a] = 100 [m2];
    Hectare [ha] = 100 [a];
    Square_Kilometer [km2] = 100 [ha];
    Acre [acre] = 4046.873 [m2];

    Liter [L] = 1 / 1000 [m3];
    US_Gallon [USgal] = 3.785412 [L];

    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

    Gon = 200 / PI [INTERLIS.rad];

    Gram [g] = 1 / 1000 [INTERLIS.kg];
    Ton [t] = 1000 [INTERLIS.kg];
    Pound [lb] = 0.4535924 [INTERLIS.kg];

    Calorie [cal] = 4.1868 [J];
    Kilowatt_Hour [kWh] = 0.36E7 [J];

    Horsepower = 746 [W];

    Techn_Atmosphere [at] = 98066.5 [Pa];
    Atmosphere [atm] = 101325 [Pa];
    Bar [bar] = 100000 [Pa];
    Millimeter_Mercury [mmHg] = 133.3224 [Pa];
    Torr = 133.3224 [Pa]; !! Torr = [mmHg]

    Decibel [dB] = FUNCTION // 10**(dB/20) * 0.00002 // [Pa];

    Degree_Celsius [oC] = FUNCTION // oC+273.15 // [INTERLIS.K];
    Degree_Fahrenheit [oF] = FUNCTION // (oF+459.67)/1.8 // [INTERLIS.K];

    CountedObjects EXTENDS INTERLIS.DIMENSIONLESS;

    Hertz [Hz] EXTENDS Frequency = (CountedObjects/INTERLIS.s);
    KiloHertz [KHz] = 1000 [Hz];
    MegaHertz [MHz] = 1000 [KHz];

    Percent = 0.01 [CountedObjects];
    Permille = 0.001 [CountedObjects];

    !! ISO 4217 Currency Abbreviation
    USDollar [USD] EXTENDS INTERLIS.MONEY;
    Euro [EUR] EXTENDS INTERLIS.MONEY;
    SwissFrancs [CHF] EXTENDS INTERLIS.MONEY;

END Units.

','2019-10-04 13:49:26.489');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRMtrsfr_V1_1.ili','2.3','OeREBKRMtrsfr_V1_1{ GeometryCHLV95_V1 CHAdminCodes_V1 LocalisationCH_V1 GeometryCHLV03_V1 OeREBKRM_V1_1 OeREBKRMvs_V1_1}','INTERLIS 2.3;

/** Schnittstelle zwischen zuständiger Stelle für die Geobasisdaten und Katasterorganisation des Kantons.
 */
!!@ furtherInformation=http://www.cadastre.ch/oereb-public
!!@ technicalContact=mailto:infovd@swisstopo.ch
MODEL OeREBKRMtrsfr_V1_1 (de)
AT "http://models.geo.admin.ch/V_D/OeREB/"
VERSION "2016-08-15"  =
  IMPORTS OeREBKRM_V1_1,OeREBKRMvs_V1_1,CHAdminCodes_V1,LocalisationCH_V1,GeometryCHLV03_V1,GeometryCHLV95_V1;

  /** Dieses Teilmodell definiert die Struktur der Daten, wie sie von der zuständigen Stelle für die Geobasisdaten an die Abgabestelle des ÖREB-Kataster-Auszugs geliefert werden müssen. Dieses Datenmodell definiert somit, welche Daten ein minimales Datenmodell enthalten muss, um als ÖREB-Kataster fähiges Datenmodell zu gelten.
   */
  TOPIC Transferstruktur
  EXTENDS OeREBKRMvs_V1_1.Vorschriften =
    DEPENDS ON OeREBKRMvs_V1_1.HinweiseGesetzlicheGrundlagen;

    /** Wurzelelement für Informationen über eine Beschränkung des Grundeigentums, die rechtskräftig, z.B. auf Grund einer Genehmigung oder eines richterlichen Entscheids, zustande gekommen ist.
     */
    CLASS Eigentumsbeschraenkung =
      /** Textliche Beschreibung der Beschränkung; z.B. "Wohnen W3"
       */
      Aussage : MANDATORY LocalisationCH_V1.MultilingualMText;
      /** Einordnung der Eigentumsbeschränkung in ein ÖREBK-Thema
       */
      Thema : MANDATORY OeREBKRM_V1_1.Thema;
      /** z.B. Planungszonen innerhalb Nutzungsplanung
       */
      SubThema : OeREBKRM_V1_1.SubThema;
      /** z.B. kantonale Themen. Der Code wird nach folgendem Muster gebildet: ch.{canton}.{topic}
       * fl.{topic}
       * ch.{bfsnr}.{topic}
       * Wobei {canton} das offizielle zwei-stellige Kürzel des Kantons ist, {to-pic} der Themenname und {bfsnr} die Gemeindenummer gem. BFS.
       */
      WeiteresThema : OeREBKRM_V1_1.WeiteresThema;
      /** Themenspezifische, maschinen-lesbare Art gem. Originalmodell der Eigentumsbeschränkung
       */
      ArtCode : OeREBKRM_V1_1.ArtEigentumsbeschraenkung;
      /** Identifikation der Codeliste bzw. des Wertebereichs für ArtCode
       */
      ArtCodeliste : URI;
      /** Status, ob diese Eigentumsbeschränkung in Kraft ist
       */
      Rechtsstatus : MANDATORY OeREBKRM_V1_1.RechtsStatus;
      /** Datum, ab dem diese Eigentumsbeschränkung in Auszügen erscheint
       */
      publiziertAb : MANDATORY OeREBKRM_V1_1.Datum;
      MANDATORY CONSTRAINT Thema!=#WeiteresThema OR DEFINED(WeiteresThema);
    END Eigentumsbeschraenkung;

    /** Punkt-, linien-, oder flächenförmige Geometrie. Neu zu definierende Eigentumsbeschränkungen sollten i.d.R. flächenförmig sein.
     */
    CLASS Geometrie =
      /** Punktgeometrie
       */
      Punkt_LV03 : GeometryCHLV03_V1.Coord2;
      Punkt_LV95 : GeometryCHLV95_V1.Coord2;
      /** Linienförmige Geometrie
       */
      Linie_LV03 : GeometryCHLV03_V1.Line;
      Linie_LV95 : GeometryCHLV95_V1.Line;
      /** Flächenförmige Geometrie
       */
      Flaeche_LV03 : GeometryCHLV03_V1.Surface;
      Flaeche_LV95 : GeometryCHLV95_V1.Surface;
      /** Status, ob diese Geometrie in Kraft ist
       */
      Rechtsstatus : MANDATORY OeREBKRM_V1_1.RechtsStatus;
      /** Datum, ab dem diese Geometrie in Auszügen erscheint
       */
      publiziertAb : MANDATORY OeREBKRM_V1_1.Datum;
      /** Verweis auf maschinenlesbare Metadaten (XML) der zugrundeliegenden Geobasisdaten. z.B. http://www.geocat.ch/geonetwork/srv/deu/gm03.xml?id=705
       */
      MetadatenGeobasisdaten : URI;
      MANDATORY CONSTRAINT DEFINED(Punkt_LV03) OR DEFINED(Linie_LV03) OR DEFINED(Flaeche_LV03) OR DEFINED(Punkt_LV95) OR DEFINED(Linie_LV95) OR DEFINED(Flaeche_LV95);
    END Geometrie;

    /** Definition für Hinweise, die unabhängig von einer konkreten Eigentumsbeschränkung gelten (z.B. der Hinweis auf eine Systematische Rechtssammlung). Der Hinweis kann aber beschränkt werden auf eine bestimmtes ÖREB-Thema und/oder Kanton und/oder Gemeinde.
     */
    CLASS HinweisDefinition =
      /** Thema falls der Hinweis für ein bestimmtes ÖREB-Thema gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle ÖREB-Themen gilt.
       */
      Thema : OeREBKRM_V1_1.Thema;
      /** Kantonskürzel falls der Hinweis für ein Kantons-oder Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle Kantone gilt. z.B. "BE".
       */
      Kanton : CHAdminCodes_V1.CHCantonCode;
      /** BFSNr falls der Hinweis für ein Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für den Kanton oder die Schweiz gilt. z.B. "942".
       */
      Gemeinde : CHAdminCodes_V1.CHMunicipalityCode;
    END HinweisDefinition;

    /** Ein Eintrag in der Planlegende.
     */
    STRUCTURE LegendeEintrag =
      /** Grafischer Teil des Legendeneintrages für die Darstellung. Im PNG-Format mit 300dpi oder im SVG-Format
       */
      Symbol : MANDATORY BLACKBOX BINARY;
      /** Text des Legendeneintrages
       */
      LegendeText : MANDATORY LocalisationCH_V1.MultilingualText;
      /** Art der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird
       */
      ArtCode : MANDATORY OeREBKRM_V1_1.ArtEigentumsbeschraenkung;
      /** Codeliste der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird
       */
      ArtCodeliste : MANDATORY URI;
      /** Zu welchem ÖREB-Thema der Legendeneintrag gehört
       */
      Thema : MANDATORY OeREBKRM_V1_1.Thema;
      /** z.B. Planungszonen innerhalb Nutzungsplanung
       */
      SubThema : OeREBKRM_V1_1.SubThema;
      WeiteresThema : OeREBKRM_V1_1.WeiteresThema;
      MANDATORY CONSTRAINT Thema!=#WeiteresThema OR DEFINED(WeiteresThema);
    END LegendeEintrag;

    /** Angaben zum Darstellungsdienst.
     */
    CLASS DarstellungsDienst =
      /** WMS GetMap-Request (für Maschine-Maschine-Kommunikation) inkl. alle benötigten Parameter, z.B. "https://wms.geo.admin.ch/?SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&STYLES=default&SRS=EPSG:21781&BBOX=475000,60000,845000,310000&WIDTH=740&HEIGHT=500&FORMAT=image/png&LAYERS=ch.bazl.kataster-belasteter-standorte-zivilflugplaetze.oereb"
       */
      VerweisWMS : MANDATORY URI;
      /** Verweis auf ein Dokument das die Karte beschreibt; z.B. "https://wms.geo.admin.ch/?SERVICE=WMS&REQUEST=GetLegendGraphic&VERSION=1.1.1&FORMAT=image/png&LAYER=ch.bazl.kataster-belasteter-standorte-zivilflugplaetze.oereb"
       */
      LegendeImWeb : OeREBKRM_V1_1.WebReferenz;
      Legende : BAG {0..*} OF LegendeEintrag;
      MANDATORY CONSTRAINT DEFINED(LegendeImWeb) OR INTERLIS.elementCount(Legende)>0;
    END DarstellungsDienst;

    ASSOCIATION GeometrieEigentumsbeschraenkung =
      /** Geometrie der Eigentumsbeschränkung, die Rechtswirkung hat (als Basis für den Verschnitt mit den Liegenschaften)
       */
      Geometrie -- {0..*} Geometrie;
      Eigentumsbeschraenkung -<#> {1} Eigentumsbeschraenkung;
    END GeometrieEigentumsbeschraenkung;

    ASSOCIATION GrundlageVerfeinerung =
      Grundlage (EXTERNAL) -- {0..*} Eigentumsbeschraenkung;
      Verfeinerung -- {0..*} Eigentumsbeschraenkung;
    END GrundlageVerfeinerung;

    ASSOCIATION HinweisDefinitionDokument =
      HinweisDefinition -- {0..*} HinweisDefinition;
      Dokument -- {1..*} OeREBKRMvs_V1_1.Vorschriften.Dokument;
    END HinweisDefinitionDokument;

    ASSOCIATION HinweisDefinitionZustaendigeStelle =
      HinweisDefinition -<> {0..*} HinweisDefinition;
      ZustaendigeStelle -- {1} OeREBKRMvs_V1_1.Vorschriften.Amt;
    END HinweisDefinitionZustaendigeStelle;

    ASSOCIATION HinweisVorschrift =
      Eigentumsbeschraenkung -- {0..*} Eigentumsbeschraenkung;
      /** Rechtsvorschrift der Eigentumsbeschränkung
       */
      Vorschrift -- {1..*} OeREBKRMvs_V1_1.Vorschriften.DokumentBasis;
      /** Hinweis auf spezifische Artikel.
       */
      ArtikelNr : BAG {0..*} OF OeREBKRM_V1_1.ArtikelNummer_;
    END HinweisVorschrift;

    ASSOCIATION ZustaendigeStelleEigentumsbeschraenkung =
      /** Zuständige Stelle für die Geobasisdaten (Originaldaten) gem. GeoIG Art. 8 Abs. 1
       */
      ZustaendigeStelle -- {1} OeREBKRMvs_V1_1.Vorschriften.Amt;
      Eigentumsbeschraenkung -<> {0..*} Eigentumsbeschraenkung;
    END ZustaendigeStelleEigentumsbeschraenkung;

    ASSOCIATION ZustaendigeStelleGeometrie =
      ZustaendigeStelle -- {1} OeREBKRMvs_V1_1.Vorschriften.Amt;
      Geometrie -<> {0..*} Geometrie;
    END ZustaendigeStelleGeometrie;

    ASSOCIATION DarstellungsDienstEigentumsbeschraenkung =
      /** Darstellungsdienst, auf dem diese Eigentumsbeschränkung sichtbar, aber nicht hervorgehoben, ist.
       */
      DarstellungsDienst -- {0..1} DarstellungsDienst;
      Eigentumsbeschraenkung -<> {1..*} Eigentumsbeschraenkung;
    END DarstellungsDienstEigentumsbeschraenkung;

  END Transferstruktur;

END OeREBKRMtrsfr_V1_1.
','2019-10-04 13:49:26.489');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRM_V1_1.ili','2.3','OeREBKRM_V1_1{ InternationalCodes_V1 LocalisationCH_V1 CatalogueObjects_V1}','INTERLIS 2.3;

/** Basisdefinitionen für das OEREB-Katasterrahmenmodell
 */
!!@ furtherInformation=http://www.cadastre.ch/oereb-public
!!@ technicalContact=mailto:infovd@swisstopo.ch
MODEL OeREBKRM_V1_1 (de)
AT "http://models.geo.admin.ch/V_D/OeREB/"
VERSION "2016-08-15"  =
  IMPORTS LocalisationCH_V1,InternationalCodes_V1,CatalogueObjects_V1;

  DOMAIN

    /** Themenspezifische, maschinen-lesbare Art der Eigentumsbeschränkung
     */
    ArtEigentumsbeschraenkung = TEXT*40;

    /** Wertebereich für den Artikeltext einer Rechtsvorschrift oder einer gesetzlichen Grundlage.
     */
    ArtikelInhalt = MTEXT;

    /** Nummer eines Artikels in einer Rechtsvorschrift oder gesetzlichen Grundlage.
     */
    ArtikelNummer = TEXT*20;

    Datum = FORMAT INTERLIS.XMLDate "1848-1-1" .. "2100-12-31";

    /** Wertebereich für Objektidentifikatoren. Der Wert soll mit einem gültigen Internet Domain-Name anfangen, z.B. "ch.admin.sr.720"
     */
    OEREBOID = OID TEXT;

    /** Werteliste zur Unterscheidung ob eine Eigentumsbeschränkung in Kraft ist oder nicht.
     */
    RechtsStatus = (
      /** Die Eigentumsbeschränkung ist in Kraft.
       */
      inKraft,
      /** gem. OeREBKV Art. 12 Abs. 2
       */
      laufendeAenderung
    );

    SubThema = TEXT*60;

    /** Liste der Geobasisdaten die ÖREB-Themen sind (Wird durch den Bundesrat definiert). Die Liste kann durch Kantone erweitert werden.
     */
    Thema = (
      /** GeoIV Datensatz 73
       */
      Nutzungsplanung,
      /** 87
       */
      ProjektierungszonenNationalstrassen,
      /** 88
       */
      BaulinienNationalstrassen,
      /** 96
       */
      ProjektierungszonenEisenbahnanlagen,
      /** 97
       */
      BaulinienEisenbahnanlagen,
      /** 103
       */
      ProjektierungszonenFlughafenanlagen,
      /** 104
       */
      BaulinienFlughafenanlagen,
      /** 108
       */
      SicherheitszonenplanFlughafen,
      /** 116
       */
      BelasteteStandorte,
      /** 117
       */
      BelasteteStandorteMilitaer,
      /** 118
       */
      BelasteteStandorteZivileFlugplaetze,
      /** 119
       */
      BelasteteStandorteOeffentlicherVerkehr,
      /** 131
       */
      Grundwasserschutzzonen,
      /** 132
       */
      Grundwasserschutzareale,
      /** 145
       */
      Laermemfindlichkeitsstufen,
      /** 157
       */
      Waldgrenzen,
      /** 159
       */
      Waldabstandslinien,
      /** Fuer weitere Themen
       */
      WeiteresThema
    );

    /** Unternehmensindentifikation (gemäss. Bundesgesetz über die Unternehmens-Identifikationsnummer SR 431.03) ohne Formatierung z.B. CHE116068369
     */
    UID = TEXT*12;

    /** Verweis auf ein Dokument im Web (z.B. eine HTML Seite oder ein PDF-Dokument)
     */
    WebReferenz = URI;

    /** z.B. kantonale Themen. Der Code wird nach folgendem Muster gebildet: ch.{canton}.{topic}
     * fl.{topic}
     * ch.{bfsnr}.{topic}
     * Wobei {canton} das offizielle zwei-stellige Kürzel des Kantons ist, {to-pic} der Themenname und {bfsnr} die Gemeindenummer gem. BFS.
     */
    WeiteresThema = TEXT*120;
  STRUCTURE ArtikelNummer_ = value : MANDATORY ArtikelNummer; END ArtikelNummer_;
  STRUCTURE Datum_ = value : MANDATORY Datum; END Datum_;
  STRUCTURE Thema_ = value : MANDATORY Thema; END Thema_;
  STRUCTURE WebReferenz_ = value : MANDATORY WebReferenz; END WebReferenz_;

  /** Wertebereich für den Artikeltext einer Rechtsvorschrift oder einer gesetzlichen Grundlage.
   */
  STRUCTURE ArtikelInhaltMehrsprachig
  EXTENDS LocalisationCH_V1.MultilingualMText =
  END ArtikelInhaltMehrsprachig;

  STRUCTURE LocalisedUri =
    Language : InternationalCodes_V1.LanguageCode_ISO639_1;
    Text : MANDATORY URI;
  END LocalisedUri;

  STRUCTURE MultilingualUri =
    LocalisedText : BAG {1..*} OF OeREBKRM_V1_1.LocalisedUri;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualUri;

  /** Anzeigetexte für Aufzählungen des Rahmenmodells
   */
  TOPIC CodelistenText =

    /** Anzeigetexte für die Aufzählung RechtsStatus
     */
    CLASS RechtsStatusTxt
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY OeREBKRM_V1_1.RechtsStatus;
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      UNIQUE Code;
    END RechtsStatusTxt;

    /** Anzeigetexte für die Aufzählung Thema
     */
    CLASS ThemaTxt
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY OeREBKRM_V1_1.Thema;
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      UNIQUE Code;
    END ThemaTxt;

  END CodelistenText;

END OeREBKRM_V1_1.
','2019-10-04 13:49:26.489');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part2_LOCALISATION_20110830.ili','2.3','InternationalCodes_V1 Localisation_V1{ InternationalCodes_V1} LocalisationCH_V1{ InternationalCodes_V1 Localisation_V1} Dictionaries_V1{ InternationalCodes_V1} DictionariesCH_V1{ InternationalCodes_V1 Dictionaries_V1}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART II -- LOCALISATION
   - Package InternationalCodes
   - Packages Localisation, LocalisationCH
   - Packages Dictionaries, DictionariesCH
*/

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL InternationalCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  DOMAIN
    LanguageCode_ISO639_1 = (de,fr,it,rm,en,
      aa,ab,af,am,ar,as,ay,az,ba,be,bg,bh,bi,bn,bo,br,ca,co,cs,cy,da,dz,el,
      eo,es,et,eu,fa,fi,fj,fo,fy,ga,gd,gl,gn,gu,ha,he,hi,hr,hu,hy,ia,id,ie,
      ik,is,iu,ja,jw,ka,kk,kl,km,kn,ko,ks,ku,ky,la,ln,lo,lt,lv,mg,mi,mk,ml,
      mn,mo,mr,ms,mt,my,na,ne,nl,no,oc,om,or,pa,pl,ps,pt,qu,rn,ro,ru,rw,sa,
      sd,sg,sh,si,sk,sl,sm,sn,so,sq,sr,ss,st,su,sv,sw,ta,te,tg,th,ti,tk,tl,
      tn,to,tr,ts,tt,tw,ug,uk,ur,uz,vi,vo,wo,xh,yi,yo,za,zh,zu);

    CountryCode_ISO3166_1 = (CHE,
      ABW,AFG,AGO,AIA,ALA,ALB,AND_,ANT,ARE,ARG,ARM,ASM,ATA,ATF,ATG,AUS,
      AUT,AZE,BDI,BEL,BEN,BFA,BGD,BGR,BHR,BHS,BIH,BLR,BLZ,BMU,BOL,BRA,
      BRB,BRN,BTN,BVT,BWA,CAF,CAN,CCK,CHL,CHN,CIV,CMR,COD,COG,COK,COL,
      COM,CPV,CRI,CUB,CXR,CYM,CYP,CZE,DEU,DJI,DMA,DNK,DOM,DZA,ECU,EGY,
      ERI,ESH,ESP,EST,ETH,FIN,FJI,FLK,FRA,FRO,FSM,GAB,GBR,GEO,GGY,GHA,
      GIB,GIN,GLP,GMB,GNB,GNQ,GRC,GRD,GRL,GTM,GUF,GUM,GUY,HKG,HMD,HND,
      HRV,HTI,HUN,IDN,IMN,IND,IOT,IRL,IRN,IRQ,ISL,ISR,ITA,JAM,JEY,JOR,
      JPN,KAZ,KEN,KGZ,KHM,KIR,KNA,KOR,KWT,LAO,LBN,LBR,LBY,LCA,LIE,LKA,
      LSO,LTU,LUX,LVA,MAC,MAR,MCO,MDA,MDG,MDV,MEX,MHL,MKD,MLI,MLT,MMR,
      MNE,MNG,MNP,MOZ,MRT,MSR,MTQ,MUS,MWI,MYS,MYT,NAM,NCL,NER,NFK,NGA,
      NIC,NIU,NLD,NOR,NPL,NRU,NZL,OMN,PAK,PAN,PCN,PER,PHL,PLW,PNG,POL,
      PRI,PRK,PRT,PRY,PSE,PYF,QAT,REU,ROU,RUS,RWA,SAU,SDN,SEN,SGP,SGS,
      SHN,SJM,SLB,SLE,SLV,SMR,SOM,SPM,SRB,STP,SUR,SVK,SVN,SWE,SWZ,SYC,
      SYR,TCA,TCD,TGO,THA,TJK,TKL,TKM,TLS,TON,TTO,TUN,TUR,TUV,TWN,TZA,
      UGA,UKR,UMI,URY,USA,UZB,VAT,VCT,VEN,VGB,VIR,VNM,VUT,WLF,WSM,YEM,
      ZAF,ZMB,ZWE);

END InternationalCodes_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL Localisation_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  STRUCTURE LocalisedText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY TEXT;
  END LocalisedText;
  
  STRUCTURE LocalisedMText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY MTEXT;
  END LocalisedMText;

  STRUCTURE MultilingualText =
    LocalisedText : BAG {1..*} OF LocalisedText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText =
    LocalisedText : BAG {1..*} OF LocalisedMText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualMText;

END Localisation_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL LocalisationCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;

  STRUCTURE LocalisedText EXTENDS Localisation_V1.LocalisedText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedText;
  
  STRUCTURE LocalisedMText EXTENDS Localisation_V1.LocalisedMText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedMText;

  STRUCTURE MultilingualText EXTENDS Localisation_V1.MultilingualText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedText;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText EXTENDS Localisation_V1.MultilingualMText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedMText;
  END MultilingualMText;

END LocalisationCH_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL Dictionaries_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  TOPIC Dictionaries (ABSTRACT) =

    STRUCTURE Entry (ABSTRACT) =
      Text: MANDATORY TEXT;
    END Entry;
      
    CLASS Dictionary =
      Language: MANDATORY LanguageCode_ISO639_1;
      Entries: LIST OF Entry;
    END Dictionary;

  END Dictionaries;

END Dictionaries_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL DictionariesCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Dictionaries_V1;

  TOPIC Dictionaries (ABSTRACT) EXTENDS Dictionaries_V1.Dictionaries =

    CLASS Dictionary (EXTENDED) =
    MANDATORY CONSTRAINT
      Language == #de OR
      Language == #fr OR
      Language == #it OR
      Language == #rm OR
      Language == #en;
    END Dictionary;

  END Dictionaries;

END DictionariesCH_V1.

!! ########################################################################
','2019-10-04 13:49:26.489');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CoordSys-20151124.ili','2.3','CoordSys','!! File CoordSys.ili Release 2015-11-24

INTERLIS 2.3;

!! 2015-11-24 Cardinalities adapted (line 122, 123, 124, 132, 133, 134, 142, 143,
!!                                   148, 149, 163, 164, 168, 169, 206 and 207)
!!@precursorVersion = 2005-06-16

REFSYSTEM MODEL CoordSys (en) AT "http://www.interlis.ch/models"
  VERSION "2015-11-24" =

  UNIT
    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

  STRUCTURE Angle_DMS_S =
    Degrees: -180 .. 180 CIRCULAR [Angle_Degree];
    CONTINUOUS SUBDIVISION Minutes: 0 .. 59 CIRCULAR [Angle_Minute];
    CONTINUOUS SUBDIVISION Seconds: 0.000 .. 59.999 CIRCULAR [Angle_Second];
  END Angle_DMS_S;

  DOMAIN
    Angle_DMS = FORMAT BASED ON Angle_DMS_S (Degrees ":" Minutes ":" Seconds);
    Angle_DMS_90 EXTENDS Angle_DMS = "-90:00:00.000" .. "90:00:00.000";


  TOPIC CoordsysTopic =

    !! Special space aspects to be referenced
    !! **************************************

    CLASS Ellipsoid EXTENDS INTERLIS.REFSYSTEM =
      EllipsoidAlias: TEXT*70;
      SemiMajorAxis: MANDATORY 6360000.0000 .. 6390000.0000 [INTERLIS.m];
      InverseFlattening: MANDATORY 0.00000000 .. 350.00000000;
      !! The inverse flattening 0 characterizes the 2-dim sphere
      Remarks: TEXT*70;
    END Ellipsoid;

    CLASS GravityModel EXTENDS INTERLIS.REFSYSTEM =
      GravityModAlias: TEXT*70;
      Definition: TEXT*70;
    END GravityModel;

    CLASS GeoidModel EXTENDS INTERLIS.REFSYSTEM =
      GeoidModAlias: TEXT*70;
      Definition: TEXT*70;
    END GeoidModel;


    !! Coordinate systems for geodetic purposes
    !! ****************************************

    STRUCTURE LengthAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.LENGTH];
    END LengthAXIS;

    STRUCTURE AngleAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.ANGLE];
    END AngleAXIS;

    CLASS GeoCartesian1D EXTENDS INTERLIS.COORDSYSTEM =
      Axis (EXTENDED): LIST {1} OF LengthAXIS;
    END GeoCartesian1D;

    CLASS GeoHeight EXTENDS GeoCartesian1D =
      System: MANDATORY (
        normal,
        orthometric,
        ellipsoidal,
        other);
      ReferenceHeight: MANDATORY -10000.000 .. +10000.000 [INTERLIS.m];
      ReferenceHeightDescr: TEXT*70;
    END GeoHeight;

    ASSOCIATION HeightEllips =
      GeoHeightRef -- {*} GeoHeight;
      EllipsoidRef -- {1} Ellipsoid;
    END HeightEllips;

    ASSOCIATION HeightGravit =
      GeoHeightRef -- {*} GeoHeight;
      GravityRef -- {1} GravityModel;
    END HeightGravit;

    ASSOCIATION HeightGeoid =
      GeoHeightRef -- {*} GeoHeight;
      GeoidRef -- {1} GeoidModel;
    END HeightGeoid;

    CLASS GeoCartesian2D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF LengthAXIS;
    END GeoCartesian2D;

    CLASS GeoCartesian3D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {3} OF LengthAXIS;
    END GeoCartesian3D;

    CLASS GeoEllipsoidal EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF AngleAXIS;
    END GeoEllipsoidal;

    ASSOCIATION EllCSEllips =
      GeoEllipsoidalRef -- {*} GeoEllipsoidal;
      EllipsoidRef -- {1} Ellipsoid;
    END EllCSEllips;


    !! Mappings between coordinate systems
    !! ***********************************

    ASSOCIATION ToGeoEllipsoidal =
      From -- {0..*} GeoCartesian3D;
      To -- {0..*} GeoEllipsoidal;
      ToHeight -- {0..*} GeoHeight;
    MANDATORY CONSTRAINT
      ToHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      To -> EllipsoidRef -> Name == ToHeight -> EllipsoidRef -> Name;
    END ToGeoEllipsoidal;

    ASSOCIATION ToGeoCartesian3D =
      From2 -- {0..*} GeoEllipsoidal;
      FromHeight-- {0..*} GeoHeight;
      To3 -- {0..*} GeoCartesian3D;
    MANDATORY CONSTRAINT
      FromHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      From2 -> EllipsoidRef -> Name == FromHeight -> EllipsoidRef -> Name;
    END ToGeoCartesian3D;

    ASSOCIATION BidirectGeoCartesian2D =
      From -- {0..*} GeoCartesian2D;
      To -- {0..*} GeoCartesian2D;
    END BidirectGeoCartesian2D;

    ASSOCIATION BidirectGeoCartesian3D =
      From -- {0..*} GeoCartesian3D;
      To2 -- {0..*} GeoCartesian3D;
      Precision: MANDATORY (
        exact,
        measure_based);
      ShiftAxis1: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis2: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis3: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      RotationAxis1: Angle_DMS_90;
      RotationAxis2: Angle_DMS_90;
      RotationAxis3: Angle_DMS_90;
      NewScale: 0.000001 .. 1000000.000000;
    END BidirectGeoCartesian3D;

    ASSOCIATION BidirectGeoEllipsoidal =
      From4 -- {0..*} GeoEllipsoidal;
      To4 -- {0..*} GeoEllipsoidal;
    END BidirectGeoEllipsoidal;

    ASSOCIATION MapProjection (ABSTRACT) =
      From5 -- {0..*} GeoEllipsoidal;
      To5 -- {0..*} GeoCartesian2D;
      FromCo1_FundPt: MANDATORY Angle_DMS_90;
      FromCo2_FundPt: MANDATORY Angle_DMS_90;
      ToCoord1_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
      ToCoord2_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
    END MapProjection;

    ASSOCIATION TransverseMercator EXTENDS MapProjection =
    END TransverseMercator;

    ASSOCIATION SwissProjection EXTENDS MapProjection =
      IntermFundP1: MANDATORY Angle_DMS_90;
      IntermFundP2: MANDATORY Angle_DMS_90;
    END SwissProjection;

    ASSOCIATION Mercator EXTENDS MapProjection =
    END Mercator;

    ASSOCIATION ObliqueMercator EXTENDS MapProjection =
    END ObliqueMercator;

    ASSOCIATION Lambert EXTENDS MapProjection =
    END Lambert;

    ASSOCIATION Polyconic EXTENDS MapProjection =
    END Polyconic;

    ASSOCIATION Albus EXTENDS MapProjection =
    END Albus;

    ASSOCIATION Azimutal EXTENDS MapProjection =
    END Azimutal;

    ASSOCIATION Stereographic EXTENDS MapProjection =
    END Stereographic;

    ASSOCIATION HeightConversion =
      FromHeight -- {0..*} GeoHeight;
      ToHeight -- {0..*} GeoHeight;
      Definition: TEXT*70;
    END HeightConversion;

  END CoordsysTopic;

END CoordSys.

','2019-10-04 13:49:26.489');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRMvs_V1_1.ili','2.3','OeREBKRMvs_V1_1{ CHAdminCodes_V1 LocalisationCH_V1 OeREBKRM_V1_1}','INTERLIS 2.3;

/** Basisdefinition für Erlasse (Rechtsvorschriften, Hinweise auf Gesetzliche Grundlagen)
 */
!!@ furtherInformation=http://www.cadastre.ch/oereb-public
!!@ technicalContact=mailto:infovd@swisstopo.ch
MODEL OeREBKRMvs_V1_1 (de)
AT "http://models.geo.admin.ch/V_D/OeREB/"
VERSION "2016-08-15"  =
  IMPORTS OeREBKRM_V1_1,CHAdminCodes_V1,LocalisationCH_V1;

  /** Dieses Teilmodell definiert die Struktur für die Erlasse im Allgemeinen.
   * OID als URIs damit der Verweis auf Grundlagenerlasse (z.B. Kantonale Gesetze auf Bundesgesetze) in einem anderen Behälter (da durch eine andere Stelle erfasst/nachgeführt) verweisen können.
   */
  TOPIC Vorschriften =
    OID AS OeREBKRM_V1_1.OEREBOID;

    /** Eine organisatorische Einheit innerhalb der öffentlichen Verwaltung, z.B. eine für Geobasisdaten zuständige Stelle.
     */
    CLASS Amt =
      /** Name des Amtes z.B. "Amt für Gemeinden und Raumordnung des Kantons Bern".
       */
      Name : MANDATORY LocalisationCH_V1.MultilingualText;
      /** Verweis auf die Website des Amtes z.B. "http://www.jgk.be.ch/jgk/de/index/direktion/organisation/agr.html".
       */
      AmtImWeb : OeREBKRM_V1_1.WebReferenz;
      /** UID der organisatorischen Einheit
       */
      UID : OeREBKRM_V1_1.UID;
    END Amt;

    /** Vorschriften (Gesetze, Verordnungen, Rechtsvorschriften) oder einzelne Artikel davon.
     */
    CLASS DokumentBasis (ABSTRACT) =
      /** Verweis auf das Element im Web; z.B. "http://www.admin.ch/ch/d/sr/700/a18.html"
       */
      TextImWeb : OeREBKRM_V1_1.MultilingualUri;
      /** Status, ob dieses Element in Kraft ist
       */
      Rechtsstatus : MANDATORY OeREBKRM_V1_1.RechtsStatus;
      /** Datum, ab dem dieses Element in Auszügen erscheint
       */
      publiziertAb : MANDATORY OeREBKRM_V1_1.Datum;
    END DokumentBasis;

    /** Einzelner Artikel einer Rechtsvorschrift oder einer gesetzlichen Grundlage.
     */
    CLASS Artikel
    EXTENDS DokumentBasis =
      /** Nummer des Artikels innerhalb der gesetzlichen Grundlage oder der Rechtsvorschrift. z.B. "23"
       */
      Nr : MANDATORY OeREBKRM_V1_1.ArtikelNummer;
      /** z.B. "Ausnahmen innerhalb der Bauzonen regelt das kantonale Recht."
       */
      Text : OeREBKRM_V1_1.ArtikelInhaltMehrsprachig;
    END Artikel;

    /** Dokumente im allgemeinen (Gesetze, Verordnungen, Rechtsvorschriften)
     */
    CLASS Dokument
    EXTENDS DokumentBasis =
      /** Titel (oder falls vorhanden Kurztitel) des Dokuments; z.B. "Raumplanungsgesetz"
       */
      Titel : MANDATORY LocalisationCH_V1.MultilingualText;
      /** Offizieller Titel des Dokuments; z.B.  "Bundesgesetz über die Raumplanung"
       */
      OffiziellerTitel : LocalisationCH_V1.MultilingualText;
      /** Abkürzung des Gesetzes; z.B. "RPG"
       */
      Abkuerzung : LocalisationCH_V1.MultilingualText;
      /** Offizielle Nummer des Gesetzes; z.B. "SR 700"
       */
      OffizielleNr : TEXT*20;
      /** Kantonskürzel falls Vorschrift des Kantons oder der Gemeinde. Falls die Angabe fehlt, ist es eine Vorschrift des Bundes. z.B. "BE"
       */
      Kanton : CHAdminCodes_V1.CHCantonCode;
      /** Falls die Angabe fehlt, ist es ein Erlass des Kantons oder des Bundes. z.B. "942"
       */
      Gemeinde : CHAdminCodes_V1.CHMunicipalityCode;
      /** Das Dokument als PDF-Datei
       */
      Dokument : BLACKBOX BINARY;
    END Dokument;

    /** Reglemente, Vorschriften etc. die generell konkret sind (generell für die Person, die nicht bekannt ist, konkret für dass der Raumbezug mit Karte definiert ist), die zusammen mit der exakten geometrischen Definition als Einheit die Eigentumsbeschränkung unmittelbar beschreiben und innerhalb desselben Verfahrens verabschiedet worden sind.
     */
    CLASS Rechtsvorschrift
    EXTENDS Dokument =
    END Rechtsvorschrift;

    ASSOCIATION DokumentArtikel =
      Dokument -<#> {1} Dokument;
      /** OPTIONAL: Artikel zu diesem Dokument
       */
      Artikel -- {0..*} Artikel;
    END DokumentArtikel;

    ASSOCIATION HinweisWeitereDokumente =
      Ursprung -- {0..*} Dokument;
      Hinweis (EXTERNAL) -- {0..*} Dokument;
      /** Hinweis auf spezifische Artikel.
       */
      ArtikelNr : BAG {0..*} OF OeREBKRM_V1_1.ArtikelNummer_;
    END HinweisWeitereDokumente;

    ASSOCIATION ZustaendigeStelleDokument =
      ZustaendigeStelle -- {1} Amt;
      Dokument -<> {0..*} Dokument;
    END ZustaendigeStelleDokument;

  END Vorschriften;

  /** Dieses Teilmodell definiert die Struktur für die Hinweise auf die gesetzlichen Grundlagen, die als solche nicht Teil des ÖREB-Katasters sind, von diesem aber referenziert werden können.
   * OID als URIs damit der Verweis auf Grundlagengesetze (z.B. Kantonale Gesetze auf Bundesgesetze) in einem anderen Behälter (da durch eine andere Stelle erfasst/nachgeführt) verweisen können.
   */
  TOPIC HinweiseGesetzlicheGrundlagen
  EXTENDS OeREBKRMvs_V1_1.Vorschriften =

  END HinweiseGesetzlicheGrundlagen;

END OeREBKRMvs_V1_1.
','2019-10-04 13:49:26.489');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.ili','2.3','SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822{ GeometryCHLV95_V1 CHAdminCodes_V1}','INTERLIS 2.3;

/** !!------------------------------------------------------------------------------
 * !! Version    | wer | Änderung
 * !!------------------------------------------------------------------------------
 * !! 2015-08-22 | SZ  | Initialversion
 */
!!@ technicalContact=mailto:agi@bd.so.ch
MODEL SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822 (de)
AT "http://www.geo.so.ch/models/AGI"
VERSION "2018-08-22"  =
  IMPORTS GeometryCHLV95_V1,CHAdminCodes_V1;

  TOPIC Grundbuchkreise =
    OID AS INTERLIS.UUIDOID;

    /** Grundbuchkreisaufteilung inkl. Anschrift etc. der einzelnen Kreise
     */
    CLASS Grundbuchkreis =
      /** Name des Grundbuches
       */
      Name : MANDATORY TEXT*255;
      /** Art des Grundbuches
       */
      Art : MANDATORY TEXT*255;
      /** Nummerierungsbereich-Identifikator aus der amtlichen Vermessung
       */
      NBIdent : MANDATORY TEXT*12;
      /** Kantonale Nummer des Grundbuchkreises
       */
      Grundbuchkreisnummer : 1 .. 99;
      /** Ehemalige Gemeindenummer des Grundbuches (z.B. vor Gemeindefusion).
       */
      Grundbuchkreis_BFSNr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Perimeter des Grundbuchkreises
       */
      BFSNr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Perimeter des Grundbuchkreises
       */
      Perimeter : MANDATORY GeometryCHLV95_V1.MultiSurface;
      /** Amtschreiberei
       */
      Amtschreiberei : MANDATORY TEXT*255;
      /** Amt der Amtschreiberei
       */
      Amt : TEXT*255;
      /** Strassenname
       */
      Strasse : MANDATORY TEXT*255;
      /** Hausnummer
       */
      Hausnummer : TEXT*255;
      /** Postleitzahl
       */
      PLZ : MANDATORY 1000 .. 9999;
      /** Ortschaft
       */
      Ortschaft : MANDATORY TEXT*255;
      /** Telefonnummer
       */
      Telefon : MANDATORY TEXT*255;
      /** E-Mail-Adresse
       */
      Email : MANDATORY TEXT*255;
      /** Internetadresse
       */
      Web : MANDATORY INTERLIS.URI;
      /** Unternehmens-Identifikationsnummer
       */
      UID : TEXT*15;
    END Grundbuchkreis;

  END Grundbuchkreise;

  TOPIC Nachfuehrungskreise =
    OID AS INTERLIS.UUIDOID;

    /** Gemeinde mit zuständigem Nachführungsgeometer und Anschrift der Firma etc.
     */
    CLASS Gemeinde =
      /** Name der politischen Gemeinde
       */
      Gemeindename : MANDATORY TEXT*255;
      /** BFS-Nr. der politischen Gemeinde
       */
      BFSNr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Geometrie der politischen Gemeinde
       */
      Perimeter : MANDATORY GeometryCHLV95_V1.MultiSurface;
      /** Nachname des Nachführungsgeometers
       */
      NFG_Name : MANDATORY TEXT*255;
      /** Vorname des Nachführungsgeometers
       */
      NFG_Vorname : MANDATORY TEXT*255;
      /** Titel des Nachführungsgeometers (z.B. Dr.)
       */
      NFG_Titel : TEXT*255;
      /** Name der Firma
       */
      Firma : MANDATORY TEXT*255;
      /** Zusatzname der Firma
       */
      Firma_Zusatz : TEXT*255;
      /** Strassenname
       */
      Strasse : MANDATORY TEXT*255;
      /** Hausnummer
       */
      Hausnummer : TEXT*255;
      /** Postleitzahl
       */
      PLZ : MANDATORY 1000 .. 9990;
      /** Ortschaft
       */
      Ortschaft : MANDATORY TEXT*255;
      /** Telefonnummer
       */
      Telefon : MANDATORY TEXT*255;
      /** Internetadresse
       */
      Web : MANDATORY INTERLIS.URI;
      /** E-Mail-Adresse
       */
      Email : MANDATORY TEXT*255;
      /** Unternehmer-Identifikationsnummer
       */
      UID : TEXT*15;
    END Gemeinde;

  END Nachfuehrungskreise;

END SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822.
','2019-10-04 13:49:26.489');
INSERT INTO live.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part1_GEOMETRY_20110830.ili','2.3','GeometryCHLV03_V1{ CoordSys Units INTERLIS} GeometryCHLV95_V1{ CoordSys Units INTERLIS}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-0830
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART I -- GEOMETRY
   - Package GeometryCHLV03
   - Package GeometryCHLV95
*/

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 57, 58, 65 and 66)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 57 and 58)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 31, 44 and 50)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV03_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV03
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:21781
    Coord2 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:21781
    Coord3 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
        -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV03_V1.

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 135, 136, 143 and 144)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 135 and 136)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 109, 122 and 128)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV95_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV95
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:2056
    Coord2 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:2056
    Coord3 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
         -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV95_V1.

!! ########################################################################
','2019-10-04 13:49:26.489');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','disable');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.1.0-aa1d00a37ee431852bdee6b990f34b3620f9c1c1');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','%ILI_FROM_DB;%XTF_DIR;http://models.interlis.ch/;%JAR_DIR');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.TidHandling','property');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.typeDiscriminator','always');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.importTabs','simple');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.BasketHandling','readWrite');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
-- INSERT INTO live.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','technicalContact','models@geo.admin.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjects_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjects_V1','technicalContact','models@geo.admin.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjectTrees_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjectTrees_V1','technicalContact','models@geo.admin.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','technicalContact','models@geo.admin.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRM_V1_1','furtherInformation','http://www.cadastre.ch/oereb-public');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRM_V1_1','technicalContact','mailto:infovd@swisstopo.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AGI_AV_GB_Administrative_Einteilungen_Publikation_20180822','technicalContact','mailto:agi@bd.so.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMvs_V1_1','furtherInformation','http://www.cadastre.ch/oereb-public');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMvs_V1_1','technicalContact','mailto:infovd@swisstopo.ch');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMtrsfr_V1_1','furtherInformation','http://www.cadastre.ch/oereb-public');
INSERT INTO live.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMtrsfr_V1_1','technicalContact','mailto:infovd@swisstopo.ch');
