CREATE SCHEMA IF NOT EXISTS arp_npl_oereb;
CREATE SEQUENCE arp_npl_oereb.t_ili2db_seq MINVALUE 1000000000000;;
-- Localisation_V1.LocalisedText
CREATE TABLE arp_npl_oereb.localisedtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext text NOT NULL
  ,multilingualtext_localisedtext bigint NULL
)
;
CREATE INDEX localisedtext_t_basket_idx ON arp_npl_oereb.localisedtext ( t_basket );
CREATE INDEX localisedtext_t_datasetname_idx ON arp_npl_oereb.localisedtext ( t_datasetname );
CREATE INDEX localisedtext_multilingualtext_lclsdtext_idx ON arp_npl_oereb.localisedtext ( multilingualtext_localisedtext );
-- Localisation_V1.LocalisedMText
CREATE TABLE arp_npl_oereb.localisedmtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext text NOT NULL
  ,multilingualmtext_localisedtext bigint NULL
)
;
CREATE INDEX localisedmtext_t_basket_idx ON arp_npl_oereb.localisedmtext ( t_basket );
CREATE INDEX localisedmtext_t_datasetname_idx ON arp_npl_oereb.localisedmtext ( t_datasetname );
CREATE INDEX localisedmtext_multilingualmtxt_lclsdtext_idx ON arp_npl_oereb.localisedmtext ( multilingualmtext_localisedtext );
-- Localisation_V1.MultilingualText
CREATE TABLE arp_npl_oereb.multilingualtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX multilingualtext_t_basket_idx ON arp_npl_oereb.multilingualtext ( t_basket );
CREATE INDEX multilingualtext_t_datasetname_idx ON arp_npl_oereb.multilingualtext ( t_datasetname );
-- Localisation_V1.MultilingualMText
CREATE TABLE arp_npl_oereb.multilingualmtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX multilingualmtext_t_basket_idx ON arp_npl_oereb.multilingualmtext ( t_basket );
CREATE INDEX multilingualmtext_t_datasetname_idx ON arp_npl_oereb.multilingualmtext ( t_datasetname );
-- OeREBKRM_V1_1.ArtikelNummer_
CREATE TABLE arp_npl_oereb.artikelnummer_ (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,avalue varchar(20) NOT NULL
  ,vorschrftn_wswtrdkmnte_artikelnr bigint NULL
  ,transfrstrkwsvrschrift_artikelnr bigint NULL
)
;
CREATE INDEX artikelnummer__t_basket_idx ON arp_npl_oereb.artikelnummer_ ( t_basket );
CREATE INDEX artikelnummer__t_datasetname_idx ON arp_npl_oereb.artikelnummer_ ( t_datasetname );
CREATE INDEX artikelnummer__vorschrftn_wsrdkmnt_rtklnr_idx ON arp_npl_oereb.artikelnummer_ ( vorschrftn_wswtrdkmnte_artikelnr );
CREATE INDEX artikelnummer__transfrstrkwsschrft_rtklnr_idx ON arp_npl_oereb.artikelnummer_ ( transfrstrkwsvrschrift_artikelnr );
COMMENT ON COLUMN arp_npl_oereb.artikelnummer_.vorschrftn_wswtrdkmnte_artikelnr IS 'Hinweis auf spezifische Artikel.';
COMMENT ON COLUMN arp_npl_oereb.artikelnummer_.transfrstrkwsvrschrift_artikelnr IS 'Hinweis auf spezifische Artikel.';
-- OeREBKRM_V1_1.LocalisedUri
CREATE TABLE arp_npl_oereb.localiseduri (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext varchar(1023) NOT NULL
  ,multilingualuri_localisedtext bigint NULL
)
;
CREATE INDEX localiseduri_t_basket_idx ON arp_npl_oereb.localiseduri ( t_basket );
CREATE INDEX localiseduri_t_datasetname_idx ON arp_npl_oereb.localiseduri ( t_datasetname );
CREATE INDEX localiseduri_multilingualuri_loclsdtext_idx ON arp_npl_oereb.localiseduri ( multilingualuri_localisedtext );
-- OeREBKRM_V1_1.MultilingualUri
CREATE TABLE arp_npl_oereb.multilingualuri (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,vorschriften_artikel_textimweb bigint NULL
  ,vorschriften_dokument_textimweb bigint NULL
)
;
CREATE INDEX multilingualuri_t_basket_idx ON arp_npl_oereb.multilingualuri ( t_basket );
CREATE INDEX multilingualuri_t_datasetname_idx ON arp_npl_oereb.multilingualuri ( t_datasetname );
CREATE INDEX multilingualuri_vorschriften_artkl_txtmweb_idx ON arp_npl_oereb.multilingualuri ( vorschriften_artikel_textimweb );
CREATE INDEX multilingualuri_vorschriften_dkmnt_txtmweb_idx ON arp_npl_oereb.multilingualuri ( vorschriften_dokument_textimweb );
COMMENT ON COLUMN arp_npl_oereb.multilingualuri.vorschriften_artikel_textimweb IS 'Verweis auf das Element im Web; z.B. "http://www.admin.ch/ch/d/sr/700/a18.html"';
COMMENT ON COLUMN arp_npl_oereb.multilingualuri.vorschriften_dokument_textimweb IS 'Verweis auf das Element im Web; z.B. "http://www.admin.ch/ch/d/sr/700/a18.html"';
-- OeREBKRMvs_V1_1.Vorschriften.Amt
CREATE TABLE arp_npl_oereb.vorschriften_amt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
CREATE INDEX vorschriften_amt_t_basket_idx ON arp_npl_oereb.vorschriften_amt ( t_basket );
CREATE INDEX vorschriften_amt_t_datasetname_idx ON arp_npl_oereb.vorschriften_amt ( t_datasetname );
COMMENT ON TABLE arp_npl_oereb.vorschriften_amt IS 'Eine organisatorische Einheit innerhalb der öffentlichen Verwaltung, z.B. eine für Geobasisdaten zuständige Stelle.';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_amt.amtimweb IS 'Verweis auf die Website des Amtes z.B. "http://www.jgk.be.ch/jgk/de/index/direktion/organisation/agr.html".';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_amt.auid IS 'UID der organisatorischen Einheit';
-- OeREBKRMvs_V1_1.Vorschriften.Artikel
CREATE TABLE arp_npl_oereb.vorschriften_artikel (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
CREATE INDEX vorschriften_artikel_t_basket_idx ON arp_npl_oereb.vorschriften_artikel ( t_basket );
CREATE INDEX vorschriften_artikel_t_datasetname_idx ON arp_npl_oereb.vorschriften_artikel ( t_datasetname );
CREATE INDEX vorschriften_artikel_dokument_idx ON arp_npl_oereb.vorschriften_artikel ( dokument );
COMMENT ON TABLE arp_npl_oereb.vorschriften_artikel IS 'Einzelner Artikel einer Rechtsvorschrift oder einer gesetzlichen Grundlage.';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_artikel.nr IS 'Nummer des Artikels innerhalb der gesetzlichen Grundlage oder der Rechtsvorschrift. z.B. "23"';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_artikel.rechtsstatus IS 'Status, ob dieses Element in Kraft ist';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_artikel.publiziertab IS 'Datum, ab dem dieses Element in Auszügen erscheint';
-- OeREBKRMvs_V1_1.Vorschriften.Dokument
CREATE TABLE arp_npl_oereb.vorschriften_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
CREATE INDEX vorschriften_dokument_t_basket_idx ON arp_npl_oereb.vorschriften_dokument ( t_basket );
CREATE INDEX vorschriften_dokument_t_datasetname_idx ON arp_npl_oereb.vorschriften_dokument ( t_datasetname );
CREATE INDEX vorschriften_dokument_zustaendigestelle_idx ON arp_npl_oereb.vorschriften_dokument ( zustaendigestelle );
COMMENT ON TABLE arp_npl_oereb.vorschriften_dokument IS 'Dokumente im allgemeinen (Gesetze, Verordnungen, Rechtsvorschriften)';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_dokument.offiziellenr IS 'Offizielle Nummer des Gesetzes; z.B. "SR 700"';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_dokument.kanton IS 'Kantonskürzel falls Vorschrift des Kantons oder der Gemeinde. Falls die Angabe fehlt, ist es eine Vorschrift des Bundes. z.B. "BE"';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_dokument.gemeinde IS 'Falls die Angabe fehlt, ist es ein Erlass des Kantons oder des Bundes. z.B. "942"';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_dokument.dokument IS 'Das Dokument als PDF-Datei';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_dokument.rechtsstatus IS 'Status, ob dieses Element in Kraft ist';
COMMENT ON COLUMN arp_npl_oereb.vorschriften_dokument.publiziertab IS 'Datum, ab dem dieses Element in Auszügen erscheint';
-- OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente
CREATE TABLE arp_npl_oereb.vorschriften_hinweisweiteredokumente (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ursprung bigint NOT NULL
  ,hinweis bigint NOT NULL
)
;
CREATE INDEX vorschriften_hnwswtrdkmnte_t_basket_idx ON arp_npl_oereb.vorschriften_hinweisweiteredokumente ( t_basket );
CREATE INDEX vorschriften_hnwswtrdkmnte_t_datasetname_idx ON arp_npl_oereb.vorschriften_hinweisweiteredokumente ( t_datasetname );
CREATE INDEX vorschriften_hnwswtrdkmnte_ursprung_idx ON arp_npl_oereb.vorschriften_hinweisweiteredokumente ( ursprung );
CREATE INDEX vorschriften_hnwswtrdkmnte_hinweis_idx ON arp_npl_oereb.vorschriften_hinweisweiteredokumente ( hinweis );
-- OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung
CREATE TABLE arp_npl_oereb.transferstruktur_eigentumsbeschraenkung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
CREATE INDEX transfrstrktrtmsbschrnkung_t_basket_idx ON arp_npl_oereb.transferstruktur_eigentumsbeschraenkung ( t_basket );
CREATE INDEX transfrstrktrtmsbschrnkung_t_datasetname_idx ON arp_npl_oereb.transferstruktur_eigentumsbeschraenkung ( t_datasetname );
CREATE INDEX transfrstrktrtmsbschrnkung_darstellungsdienst_idx ON arp_npl_oereb.transferstruktur_eigentumsbeschraenkung ( darstellungsdienst );
CREATE INDEX transfrstrktrtmsbschrnkung_zustaendigestelle_idx ON arp_npl_oereb.transferstruktur_eigentumsbeschraenkung ( zustaendigestelle );
COMMENT ON TABLE arp_npl_oereb.transferstruktur_eigentumsbeschraenkung IS 'Wurzelelement für Informationen über eine Beschränkung des Grundeigentums, die rechtskräftig, z.B. auf Grund einer Genehmigung oder eines richterlichen Entscheids, zustande gekommen ist.';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_eigentumsbeschraenkung.thema IS 'Einordnung der Eigentumsbeschränkung in ein ÖREBK-Thema';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_eigentumsbeschraenkung.subthema IS 'z.B. Planungszonen innerhalb Nutzungsplanung';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_eigentumsbeschraenkung.weiteresthema IS 'z.B. kantonale Themen. Der Code wird nach folgendem Muster gebildet: ch.{canton}.{topic}
fl.{topic}
ch.{bfsnr}.{topic}
Wobei {canton} das offizielle zwei-stellige Kürzel des Kantons ist, {to-pic} der Themenname und {bfsnr} die Gemeindenummer gem. BFS.';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_eigentumsbeschraenkung.artcode IS 'Themenspezifische, maschinen-lesbare Art gem. Originalmodell der Eigentumsbeschränkung';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_eigentumsbeschraenkung.artcodeliste IS 'Identifikation der Codeliste bzw. des Wertebereichs für ArtCode';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_eigentumsbeschraenkung.rechtsstatus IS 'Status, ob diese Eigentumsbeschränkung in Kraft ist';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_eigentumsbeschraenkung.publiziertab IS 'Datum, ab dem diese Eigentumsbeschränkung in Auszügen erscheint';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_eigentumsbeschraenkung.darstellungsdienst IS 'Darstellungsdienst, auf dem diese Eigentumsbeschränkung sichtbar, aber nicht hervorgehoben, ist.';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_eigentumsbeschraenkung.zustaendigestelle IS 'Zuständige Stelle für die Geobasisdaten (Originaldaten) gem. GeoIG Art. 8 Abs. 1';
-- OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie
CREATE TABLE arp_npl_oereb.transferstruktur_geometrie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
CREATE INDEX transferstruktur_geometrie_t_basket_idx ON arp_npl_oereb.transferstruktur_geometrie ( t_basket );
CREATE INDEX transferstruktur_geometrie_t_datasetname_idx ON arp_npl_oereb.transferstruktur_geometrie ( t_datasetname );
CREATE INDEX transferstruktur_geometrie_punkt_lv03_idx ON arp_npl_oereb.transferstruktur_geometrie USING GIST ( punkt_lv03 );
CREATE INDEX transferstruktur_geometrie_punkt_lv95_idx ON arp_npl_oereb.transferstruktur_geometrie USING GIST ( punkt_lv95 );
CREATE INDEX transferstruktur_geometrie_linie_lv03_idx ON arp_npl_oereb.transferstruktur_geometrie USING GIST ( linie_lv03 );
CREATE INDEX transferstruktur_geometrie_linie_lv95_idx ON arp_npl_oereb.transferstruktur_geometrie USING GIST ( linie_lv95 );
CREATE INDEX transferstruktur_geometrie_flaeche_lv03_idx ON arp_npl_oereb.transferstruktur_geometrie USING GIST ( flaeche_lv03 );
CREATE INDEX transferstruktur_geometrie_flaeche_lv95_idx ON arp_npl_oereb.transferstruktur_geometrie USING GIST ( flaeche_lv95 );
CREATE INDEX transferstruktur_geometrie_eigentumsbeschraenkung_idx ON arp_npl_oereb.transferstruktur_geometrie ( eigentumsbeschraenkung );
CREATE INDEX transferstruktur_geometrie_zustaendigestelle_idx ON arp_npl_oereb.transferstruktur_geometrie ( zustaendigestelle );
COMMENT ON TABLE arp_npl_oereb.transferstruktur_geometrie IS 'Punkt-, linien-, oder flächenförmige Geometrie. Neu zu definierende Eigentumsbeschränkungen sollten i.d.R. flächenförmig sein.';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_geometrie.punkt_lv03 IS 'Punktgeometrie';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_geometrie.linie_lv03 IS 'Linienförmige Geometrie';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_geometrie.flaeche_lv03 IS 'Flächenförmige Geometrie';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_geometrie.rechtsstatus IS 'Status, ob diese Geometrie in Kraft ist';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_geometrie.publiziertab IS 'Datum, ab dem diese Geometrie in Auszügen erscheint';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_geometrie.metadatengeobasisdaten IS 'Verweis auf maschinenlesbare Metadaten (XML) der zugrundeliegenden Geobasisdaten. z.B. http://www.geocat.ch/geonetwork/srv/deu/gm03.xml?id=705';
-- OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition
CREATE TABLE arp_npl_oereb.transferstruktur_hinweisdefinition (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,thema varchar(255) NULL
  ,kanton varchar(255) NULL
  ,gemeinde integer NULL
  ,zustaendigestelle bigint NOT NULL
)
;
CREATE INDEX transferstrktr_hnwsdfntion_t_basket_idx ON arp_npl_oereb.transferstruktur_hinweisdefinition ( t_basket );
CREATE INDEX transferstrktr_hnwsdfntion_t_datasetname_idx ON arp_npl_oereb.transferstruktur_hinweisdefinition ( t_datasetname );
CREATE INDEX transferstrktr_hnwsdfntion_zustaendigestelle_idx ON arp_npl_oereb.transferstruktur_hinweisdefinition ( zustaendigestelle );
COMMENT ON TABLE arp_npl_oereb.transferstruktur_hinweisdefinition IS 'Definition für Hinweise, die unabhängig von einer konkreten Eigentumsbeschränkung gelten (z.B. der Hinweis auf eine Systematische Rechtssammlung). Der Hinweis kann aber beschränkt werden auf eine bestimmtes ÖREB-Thema und/oder Kanton und/oder Gemeinde.';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_hinweisdefinition.thema IS 'Thema falls der Hinweis für ein bestimmtes ÖREB-Thema gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle ÖREB-Themen gilt.';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_hinweisdefinition.kanton IS 'Kantonskürzel falls der Hinweis für ein Kantons-oder Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für alle Kantone gilt. z.B. "BE".';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_hinweisdefinition.gemeinde IS 'BFSNr falls der Hinweis für ein Gemeindegebiet gilt. Falls die Angabe fehlt, ist es ein Hinweis der für den Kanton oder die Schweiz gilt. z.B. "942".';
-- OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag
CREATE TABLE arp_npl_oereb.transferstruktur_legendeeintrag (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
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
  ,transfrstrkstllngsdnst_legende bigint NULL
)
;
CREATE INDEX transferstruktur_lgndntrag_t_basket_idx ON arp_npl_oereb.transferstruktur_legendeeintrag ( t_basket );
CREATE INDEX transferstruktur_lgndntrag_t_datasetname_idx ON arp_npl_oereb.transferstruktur_legendeeintrag ( t_datasetname );
CREATE INDEX transferstruktur_lgndntrag_transfrstrkstngsdnst_lgnde_idx ON arp_npl_oereb.transferstruktur_legendeeintrag ( transfrstrkstllngsdnst_legende );
COMMENT ON TABLE arp_npl_oereb.transferstruktur_legendeeintrag IS 'Ein Eintrag in der Planlegende.';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_legendeeintrag.symbol IS 'Grafischer Teil des Legendeneintrages für die Darstellung. Im PNG-Format mit 300dpi oder im SVG-Format';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_legendeeintrag.artcode IS 'Art der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_legendeeintrag.artcodeliste IS 'Codeliste der Eigentumsbeschränkung, die durch diesen Legendeneintrag dargestellt wird';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_legendeeintrag.thema IS 'Zu welchem ÖREB-Thema der Legendeneintrag gehört';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_legendeeintrag.subthema IS 'z.B. Planungszonen innerhalb Nutzungsplanung';
-- OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst
CREATE TABLE arp_npl_oereb.transferstruktur_darstellungsdienst (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,verweiswms varchar(1023) NOT NULL
  ,legendeimweb varchar(1023) NULL
)
;
CREATE INDEX transfrstrktrdrstllngsdnst_t_basket_idx ON arp_npl_oereb.transferstruktur_darstellungsdienst ( t_basket );
CREATE INDEX transfrstrktrdrstllngsdnst_t_datasetname_idx ON arp_npl_oereb.transferstruktur_darstellungsdienst ( t_datasetname );
COMMENT ON TABLE arp_npl_oereb.transferstruktur_darstellungsdienst IS 'Angaben zum Darstellungsdienst.';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_darstellungsdienst.verweiswms IS 'WMS GetMap-Request (für Maschine-Maschine-Kommunikation) inkl. alle benötigten Parameter, z.B. "https://wms.geo.admin.ch/?SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&STYLES=default&SRS=EPSG:21781&BBOX=475000,60000,845000,310000&WIDTH=740&HEIGHT=500&FORMAT=image/png&LAYERS=ch.bazl.kataster-belasteter-standorte-zivilflugplaetze.oereb"';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_darstellungsdienst.legendeimweb IS 'Verweis auf ein Dokument das die Karte beschreibt; z.B. "https://wms.geo.admin.ch/?SERVICE=WMS&REQUEST=GetLegendGraphic&VERSION=1.1.1&FORMAT=image/png&LAYER=ch.bazl.kataster-belasteter-standorte-zivilflugplaetze.oereb"';
-- OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung
CREATE TABLE arp_npl_oereb.transferstruktur_grundlageverfeinerung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,grundlage bigint NOT NULL
  ,verfeinerung bigint NOT NULL
)
;
CREATE INDEX transfrstrktrrndlgvrfnrung_t_basket_idx ON arp_npl_oereb.transferstruktur_grundlageverfeinerung ( t_basket );
CREATE INDEX transfrstrktrrndlgvrfnrung_t_datasetname_idx ON arp_npl_oereb.transferstruktur_grundlageverfeinerung ( t_datasetname );
CREATE INDEX transfrstrktrrndlgvrfnrung_grundlage_idx ON arp_npl_oereb.transferstruktur_grundlageverfeinerung ( grundlage );
CREATE INDEX transfrstrktrrndlgvrfnrung_verfeinerung_idx ON arp_npl_oereb.transferstruktur_grundlageverfeinerung ( verfeinerung );
-- OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument
CREATE TABLE arp_npl_oereb.transferstruktur_hinweisdefinitiondokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,hinweisdefinition bigint NOT NULL
  ,dokument bigint NOT NULL
)
;
CREATE INDEX transfrstrktrwsdfntndkment_t_basket_idx ON arp_npl_oereb.transferstruktur_hinweisdefinitiondokument ( t_basket );
CREATE INDEX transfrstrktrwsdfntndkment_t_datasetname_idx ON arp_npl_oereb.transferstruktur_hinweisdefinitiondokument ( t_datasetname );
CREATE INDEX transfrstrktrwsdfntndkment_hinweisdefinition_idx ON arp_npl_oereb.transferstruktur_hinweisdefinitiondokument ( hinweisdefinition );
CREATE INDEX transfrstrktrwsdfntndkment_dokument_idx ON arp_npl_oereb.transferstruktur_hinweisdefinitiondokument ( dokument );
-- OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift
CREATE TABLE arp_npl_oereb.transferstruktur_hinweisvorschrift (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_oereb.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,eigentumsbeschraenkung bigint NOT NULL
  ,vorschrift_vorschriften_artikel bigint NULL
  ,vorschrift_vorschriften_dokument bigint NULL
)
;
CREATE INDEX transfrstrktrhnwsvrschrift_t_basket_idx ON arp_npl_oereb.transferstruktur_hinweisvorschrift ( t_basket );
CREATE INDEX transfrstrktrhnwsvrschrift_t_datasetname_idx ON arp_npl_oereb.transferstruktur_hinweisvorschrift ( t_datasetname );
CREATE INDEX transfrstrktrhnwsvrschrift_eigentumsbeschraenkung_idx ON arp_npl_oereb.transferstruktur_hinweisvorschrift ( eigentumsbeschraenkung );
CREATE INDEX transfrstrktrhnwsvrschrift_vorschrift_vrschrftn_rtkel_idx ON arp_npl_oereb.transferstruktur_hinweisvorschrift ( vorschrift_vorschriften_artikel );
CREATE INDEX transfrstrktrhnwsvrschrift_vorschrft_vrschrftn_dkment_idx ON arp_npl_oereb.transferstruktur_hinweisvorschrift ( vorschrift_vorschriften_dokument );
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_hinweisvorschrift.vorschrift_vorschriften_artikel IS 'Rechtsvorschrift der Eigentumsbeschränkung';
COMMENT ON COLUMN arp_npl_oereb.transferstruktur_hinweisvorschrift.vorschrift_vorschriften_dokument IS 'Rechtsvorschrift der Eigentumsbeschränkung';
CREATE TABLE arp_npl_oereb.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON arp_npl_oereb.t_ili2db_basket ( dataset );
CREATE TABLE arp_npl_oereb.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE arp_npl_oereb.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_dataset_idx ON arp_npl_oereb.t_ili2db_import ( dataset );
CREATE TABLE arp_npl_oereb.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,importrun bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_BASKET_importrun_idx ON arp_npl_oereb.t_ili2db_import_basket ( importrun );
CREATE INDEX T_ILI2DB_IMPORT_BASKET_basket_idx ON arp_npl_oereb.t_ili2db_import_basket ( basket );
CREATE TABLE arp_npl_oereb.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE arp_npl_oereb.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE arp_npl_oereb.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE arp_npl_oereb.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (iliversion,modelName)
)
;
CREATE TABLE arp_npl_oereb.rechtsstatus (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl_oereb.languagecode_iso639_1 (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl_oereb.thema (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl_oereb.chcantoncode (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl_oereb.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE arp_npl_oereb.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (ColOwner,SqlName)
)
;
CREATE TABLE arp_npl_oereb.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE arp_npl_oereb.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE arp_npl_oereb.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE arp_npl_oereb.localisedtext ADD CONSTRAINT localisedtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.localisedtext ADD CONSTRAINT localisedtext_multilingualtext_lclsdtext_fkey FOREIGN KEY ( multilingualtext_localisedtext ) REFERENCES arp_npl_oereb.multilingualtext DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.localisedmtext ADD CONSTRAINT localisedmtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.localisedmtext ADD CONSTRAINT localisedmtext_multilingualmtxt_lclsdtext_fkey FOREIGN KEY ( multilingualmtext_localisedtext ) REFERENCES arp_npl_oereb.multilingualmtext DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.multilingualtext ADD CONSTRAINT multilingualtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.multilingualmtext ADD CONSTRAINT multilingualmtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.artikelnummer_ ADD CONSTRAINT artikelnummer__T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.artikelnummer_ ADD CONSTRAINT artikelnummer__vorschrftn_wsrdkmnt_rtklnr_fkey FOREIGN KEY ( vorschrftn_wswtrdkmnte_artikelnr ) REFERENCES arp_npl_oereb.vorschriften_hinweisweiteredokumente DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.artikelnummer_ ADD CONSTRAINT artikelnummer__transfrstrkwsschrft_rtklnr_fkey FOREIGN KEY ( transfrstrkwsvrschrift_artikelnr ) REFERENCES arp_npl_oereb.transferstruktur_hinweisvorschrift DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.localiseduri ADD CONSTRAINT localiseduri_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.localiseduri ADD CONSTRAINT localiseduri_multilingualuri_loclsdtext_fkey FOREIGN KEY ( multilingualuri_localisedtext ) REFERENCES arp_npl_oereb.multilingualuri DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.multilingualuri ADD CONSTRAINT multilingualuri_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.multilingualuri ADD CONSTRAINT multilingualuri_vorschriften_artkl_txtmweb_fkey FOREIGN KEY ( vorschriften_artikel_textimweb ) REFERENCES arp_npl_oereb.vorschriften_artikel DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.multilingualuri ADD CONSTRAINT multilingualuri_vorschriften_dkmnt_txtmweb_fkey FOREIGN KEY ( vorschriften_dokument_textimweb ) REFERENCES arp_npl_oereb.vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.vorschriften_amt ADD CONSTRAINT vorschriften_amt_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.vorschriften_artikel ADD CONSTRAINT vorschriften_artikel_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.vorschriften_artikel ADD CONSTRAINT vorschriften_artikel_dokument_fkey FOREIGN KEY ( dokument ) REFERENCES arp_npl_oereb.vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.vorschriften_dokument ADD CONSTRAINT vorschriften_dokument_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.vorschriften_dokument ADD CONSTRAINT vorschriften_dokument_gemeinde_check CHECK( gemeinde BETWEEN 1 AND 9999);
ALTER TABLE arp_npl_oereb.vorschriften_dokument ADD CONSTRAINT vorschriften_dokument_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES arp_npl_oereb.vorschriften_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.vorschriften_hinweisweiteredokumente ADD CONSTRAINT vorschriften_hnwswtrdkmnte_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.vorschriften_hinweisweiteredokumente ADD CONSTRAINT vorschriften_hnwswtrdkmnte_ursprung_fkey FOREIGN KEY ( ursprung ) REFERENCES arp_npl_oereb.vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.vorschriften_hinweisweiteredokumente ADD CONSTRAINT vorschriften_hnwswtrdkmnte_hinweis_fkey FOREIGN KEY ( hinweis ) REFERENCES arp_npl_oereb.vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT transfrstrktrtmsbschrnkung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT transfrstrktrtmsbschrnkung_darstellungsdienst_fkey FOREIGN KEY ( darstellungsdienst ) REFERENCES arp_npl_oereb.transferstruktur_darstellungsdienst DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_eigentumsbeschraenkung ADD CONSTRAINT transfrstrktrtmsbschrnkung_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES arp_npl_oereb.vorschriften_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_geometrie ADD CONSTRAINT transferstruktur_geometrie_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_geometrie ADD CONSTRAINT transferstruktur_geometrie_eigentumsbeschraenkung_fkey FOREIGN KEY ( eigentumsbeschraenkung ) REFERENCES arp_npl_oereb.transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_geometrie ADD CONSTRAINT transferstruktur_geometrie_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES arp_npl_oereb.vorschriften_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_hinweisdefinition ADD CONSTRAINT transferstrktr_hnwsdfntion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_hinweisdefinition ADD CONSTRAINT transfrstrktr_hnwsdfntion_gemeinde_check CHECK( gemeinde BETWEEN 1 AND 9999);
ALTER TABLE arp_npl_oereb.transferstruktur_hinweisdefinition ADD CONSTRAINT transferstrktr_hnwsdfntion_zustaendigestelle_fkey FOREIGN KEY ( zustaendigestelle ) REFERENCES arp_npl_oereb.vorschriften_amt DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_legendeeintrag ADD CONSTRAINT transferstruktur_lgndntrag_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_legendeeintrag ADD CONSTRAINT transferstruktur_lgndntrag_transfrstrkstngsdnst_lgnde_fkey FOREIGN KEY ( transfrstrkstllngsdnst_legende ) REFERENCES arp_npl_oereb.transferstruktur_darstellungsdienst DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_darstellungsdienst ADD CONSTRAINT transfrstrktrdrstllngsdnst_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_grundlageverfeinerung ADD CONSTRAINT transfrstrktrrndlgvrfnrung_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_grundlageverfeinerung ADD CONSTRAINT transfrstrktrrndlgvrfnrung_grundlage_fkey FOREIGN KEY ( grundlage ) REFERENCES arp_npl_oereb.transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_grundlageverfeinerung ADD CONSTRAINT transfrstrktrrndlgvrfnrung_verfeinerung_fkey FOREIGN KEY ( verfeinerung ) REFERENCES arp_npl_oereb.transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT transfrstrktrwsdfntndkment_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT transfrstrktrwsdfntndkment_hinweisdefinition_fkey FOREIGN KEY ( hinweisdefinition ) REFERENCES arp_npl_oereb.transferstruktur_hinweisdefinition DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_hinweisdefinitiondokument ADD CONSTRAINT transfrstrktrwsdfntndkment_dokument_fkey FOREIGN KEY ( dokument ) REFERENCES arp_npl_oereb.vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_hinweisvorschrift ADD CONSTRAINT transfrstrktrhnwsvrschrift_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_hinweisvorschrift ADD CONSTRAINT transfrstrktrhnwsvrschrift_eigentumsbeschraenkung_fkey FOREIGN KEY ( eigentumsbeschraenkung ) REFERENCES arp_npl_oereb.transferstruktur_eigentumsbeschraenkung DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_hinweisvorschrift ADD CONSTRAINT transfrstrktrhnwsvrschrift_vorschrift_vrschrftn_rtkel_fkey FOREIGN KEY ( vorschrift_vorschriften_artikel ) REFERENCES arp_npl_oereb.vorschriften_artikel DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.transferstruktur_hinweisvorschrift ADD CONSTRAINT transfrstrktrhnwsvrschrift_vorschrft_vrschrftn_dkment_fkey FOREIGN KEY ( vorschrift_vorschriften_dokument ) REFERENCES arp_npl_oereb.vorschriften_dokument DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES arp_npl_oereb.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON arp_npl_oereb.T_ILI2DB_DATASET (datasetName)
;
ALTER TABLE arp_npl_oereb.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_importrun_fkey FOREIGN KEY ( importrun ) REFERENCES arp_npl_oereb.T_ILI2DB_IMPORT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE arp_npl_oereb.T_ILI2DB_IMPORT_BASKET ADD CONSTRAINT T_ILI2DB_IMPORT_BASKET_basket_fkey FOREIGN KEY ( basket ) REFERENCES arp_npl_oereb.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_iliversion_modelName_key ON arp_npl_oereb.T_ILI2DB_MODEL (iliversion,modelName)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_ColOwner_SqlName_key ON arp_npl_oereb.T_ILI2DB_ATTRNAME (ColOwner,SqlName)
;
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.MultilingualText','multilingualtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.ArtikelInhaltMehrsprachig','artikelinhaltmehrsprachig');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.ZustaendigeStelleDokument','vorschriften_zustaendigestelledokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleGeometrie','transferstruktur_zustaendigestellegeometrie');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('InternationalCodes_V1.LanguageCode_ISO639_1','languagecode_iso639_1');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst','transferstruktur_darstellungsdienst');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.MultilingualMText','localisationch_v1_multilingualmtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentArtikel','vorschriften_dokumentartikel');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung','transferstruktur_zustaendigestelleeigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.LocalisedText','localisedtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie','transferstruktur_geometrie');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente','vorschriften_hinweisweiteredokumente');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.LocalisedMText','localisedmtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionZustaendigeStelle','transferstruktur_hinweisdefinitionzustaendigestelle');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel','vorschriften_artikel');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.RechtsStatus','rechtsstatus');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition','transferstruktur_hinweisdefinition');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.ArtikelNummer_','artikelnummer_');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung','transferstruktur_grundlageverfeinerung');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.LocalisedMText','localisationch_v1_localisedmtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.LocalisedUri','localiseduri');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Rechtsvorschrift','vorschriften_rechtsvorschrift');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument','transferstruktur_hinweisdefinitiondokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis','vorschriften_dokumentbasis');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.Thema','thema');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRM_V1_1.MultilingualUri','multilingualuri');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.MultilingualText','localisationch_v1_multilingualtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.LocalisedText','localisationch_v1_localisedtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung','transferstruktur_eigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung','transferstruktur_darstellungsdiensteigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.MultilingualMText','multilingualmtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag','transferstruktur_legendeeintrag');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('CHAdminCodes_V1.CHCantonCode','chcantoncode');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt','vorschriften_amt');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GeometrieEigentumsbeschraenkung','transferstruktur_geometrieeigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift','transferstruktur_hinweisvorschrift');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.TextImWeb','vorschriften_dokument_textimweb','multilingualuri','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.ZustaendigeStelleDokument.ZustaendigeStelle','zustaendigestelle','vorschriften_dokument','vorschriften_amt');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Linie_LV03','linie_lv03','transferstruktur_geometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.Thema','thema','transferstruktur_legendeeintrag',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift.Eigentumsbeschraenkung','eigentumsbeschraenkung','transferstruktur_hinweisvorschrift','transferstruktur_eigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt.UID','auid','vorschriften_amt',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.Aussage','aussage','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt.AmtImWeb','amtimweb','vorschriften_amt',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung.Verfeinerung','verfeinerung','transferstruktur_grundlageverfeinerung','transferstruktur_eigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionZustaendigeStelle.ZustaendigeStelle','zustaendigestelle','transferstruktur_hinweisdefinition','vorschriften_amt');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.ArtikelNummer_.value','avalue','artikelnummer_',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.LegendeText','legendetext','transferstruktur_legendeeintrag',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente.ArtikelNr','vorschrftn_wswtrdkmnte_artikelnr','artikelnummer_','vorschriften_hinweisweiteredokumente');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst.LegendeImWeb','legendeimweb','transferstruktur_darstellungsdienst',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.Rechtsstatus','rechtsstatus','vorschriften_dokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.ArtCodeliste','artcodeliste','transferstruktur_legendeeintrag',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Titel','titel','vorschriften_dokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift.Vorschrift','vorschrift_vorschriften_artikel','transferstruktur_hinweisvorschrift','vorschriften_artikel');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.OffiziellerTitel','offiziellertitel','vorschriften_dokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument.HinweisDefinition','hinweisdefinition','transferstruktur_hinweisdefinitiondokument','transferstruktur_hinweisdefinition');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Gemeinde','gemeinde','vorschriften_dokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument.Dokument','dokument','transferstruktur_hinweisdefinitiondokument','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.MultilingualUri.LocalisedText','multilingualuri_localisedtext','localiseduri','multilingualuri');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Punkt_LV03','punkt_lv03','transferstruktur_geometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.publiziertAb','publiziertab','transferstruktur_geometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift.Vorschrift','vorschrift_vorschriften_dokument','transferstruktur_hinweisvorschrift','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Abkuerzung','abkuerzung','vorschriften_dokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.ArtCode','artcode','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Text','atext','localisedtext',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleGeometrie.ZustaendigeStelle','zustaendigestelle','transferstruktur_geometrie','vorschriften_amt');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.LocalisedUri.Text','atext','localiseduri',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.publiziertAb','publiziertab','vorschriften_artikel',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst.VerweisWMS','verweiswms','transferstruktur_darstellungsdienst',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Flaeche_LV95','flaeche_lv95','transferstruktur_geometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.MultilingualMText.LocalisedText','multilingualmtext_localisedtext','localisedmtext','multilingualmtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Linie_LV95','linie_lv95','transferstruktur_geometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.Rechtsstatus','rechtsstatus','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.WeiteresThema','weiteresthema','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GeometrieEigentumsbeschraenkung.Eigentumsbeschraenkung','eigentumsbeschraenkung','transferstruktur_geometrie','transferstruktur_eigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.MultilingualText.LocalisedText','multilingualtext_localisedtext','localisedtext','multilingualtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedMText.Language','alanguage','localisedmtext',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung.ZustaendigeStelle','zustaendigestelle','transferstruktur_eigentumsbeschraenkung','vorschriften_amt');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Flaeche_LV03','flaeche_lv03','transferstruktur_geometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst.Legende','transfrstrkstllngsdnst_legende','transferstruktur_legendeeintrag','transferstruktur_darstellungsdienst');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Punkt_LV95','punkt_lv95','transferstruktur_geometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.ArtCode','artcode','transferstruktur_legendeeintrag',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.SubThema','subthema','transferstruktur_legendeeintrag',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift.ArtikelNr','transfrstrkwsvrschrift_artikelnr','artikelnummer_','transferstruktur_hinweisvorschrift');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.Rechtsstatus','rechtsstatus','transferstruktur_geometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRM_V1_1.LocalisedUri.Language','alanguage','localiseduri',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.OffizielleNr','offiziellenr','vorschriften_dokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition.Gemeinde','gemeinde','transferstruktur_hinweisdefinition',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel.Nr','nr','vorschriften_artikel',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.Symbol','symbol','transferstruktur_legendeeintrag',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.WeiteresThema','weiteresthema','transferstruktur_legendeeintrag',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Dokument','dokument','vorschriften_dokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.ArtCodeliste','artcodeliste','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.publiziertAb','publiziertab','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedMText.Text','atext','localisedmtext',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung.DarstellungsDienst','darstellungsdienst','transferstruktur_eigentumsbeschraenkung','transferstruktur_darstellungsdienst');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt.Name','aname','vorschriften_amt',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.Rechtsstatus','rechtsstatus','vorschriften_artikel',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.Thema','thema','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel.Text','atext','vorschriften_artikel',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente.Hinweis','hinweis','vorschriften_hinweisweiteredokumente','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie.MetadatenGeobasisdaten','metadatengeobasisdaten','transferstruktur_geometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition.Thema','thema','transferstruktur_hinweisdefinition',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.TextImWeb','vorschriften_artikel_textimweb','multilingualuri','vorschriften_artikel');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.SubThema','subthema','transferstruktur_eigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentArtikel.Dokument','dokument','vorschriften_artikel','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition.Kanton','kanton','transferstruktur_hinweisdefinition',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente.Ursprung','ursprung','vorschriften_hinweisweiteredokumente','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Kanton','kanton','vorschriften_dokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis.publiziertAb','publiziertab','vorschriften_dokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Language','alanguage','localisedtext',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung.Grundlage','grundlage','transferstruktur_grundlageverfeinerung','transferstruktur_eigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.MultilingualText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.ArtikelInhaltMehrsprachig','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.ZustaendigeStelleDokument','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleGeometrie','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.MultilingualMText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentArtikel','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.LocalisedText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.LocalisedMText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionZustaendigeStelle','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.ArtikelNummer_','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.LocalisedMText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.LocalisedUri','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Rechtsvorschrift','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.OffiziellerTitel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag.LegendeText','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt.Name','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRM_V1_1.MultilingualUri','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung.Aussage','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.MultilingualText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.LocalisedText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Titel','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.MultilingualMText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GeometrieEigentumsbeschraenkung','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel.Text','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument.Abkuerzung','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO arp_npl_oereb.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.ZustaendigeStelleDokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinition',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Artikel','OeREBKRMvs_V1_1.Vorschriften.DokumentBasis');
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienst',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Dokument','OeREBKRMvs_V1_1.Vorschriften.DokumentBasis');
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.LocalisedMText',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.MultilingualText','Localisation_V1.MultilingualText');
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionDokument',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Geometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GeometrieEigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.ArtikelInhaltMehrsprachig','LocalisationCH_V1.MultilingualMText');
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.MultilingualUri',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.GrundlageVerfeinerung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisVorschrift',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Amt',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.ArtikelNummer_',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.HinweisWeitereDokumente',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.MultilingualMText',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.HinweisDefinitionZustaendigeStelle',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.Rechtsvorschrift','OeREBKRMvs_V1_1.Vorschriften.Dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.Eigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentArtikel',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.LegendeEintrag',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.MultilingualText',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMvs_V1_1.Vorschriften.DokumentBasis',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.LocalisedText','Localisation_V1.LocalisedText');
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleGeometrie',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.ZustaendigeStelleEigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.LocalisedMText','Localisation_V1.LocalisedMText');
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.MultilingualMText','Localisation_V1.MultilingualMText');
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRM_V1_1.LocalisedUri',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('OeREBKRMtrsfr_V1_1.Transferstruktur.DarstellungsDienstEigentumsbeschraenkung',NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.LocalisedText',NULL);
INSERT INTO arp_npl_oereb.rechtsstatus (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'inKraft',0,'inKraft',FALSE,'Die Eigentumsbeschränkung ist in Kraft.');
INSERT INTO arp_npl_oereb.rechtsstatus (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'laufendeAenderung',1,'laufendeAenderung',FALSE,'gem. OeREBKV Art. 12 Abs. 2');
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'de',0,'de',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fr',1,'fr',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'it',2,'it',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rm',3,'rm',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'en',4,'en',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'aa',5,'aa',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ab',6,'ab',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'af',7,'af',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'am',8,'am',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ar',9,'ar',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'as',10,'as',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ay',11,'ay',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'az',12,'az',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ba',13,'ba',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'be',14,'be',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bg',15,'bg',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bh',16,'bh',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bi',17,'bi',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bn',18,'bn',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bo',19,'bo',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'br',20,'br',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ca',21,'ca',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'co',22,'co',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'cs',23,'cs',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'cy',24,'cy',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'da',25,'da',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'dz',26,'dz',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'el',27,'el',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'eo',28,'eo',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'es',29,'es',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'et',30,'et',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'eu',31,'eu',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fa',32,'fa',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fi',33,'fi',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fj',34,'fj',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fo',35,'fo',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fy',36,'fy',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ga',37,'ga',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gd',38,'gd',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gl',39,'gl',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gn',40,'gn',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gu',41,'gu',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ha',42,'ha',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'he',43,'he',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hi',44,'hi',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hr',45,'hr',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hu',46,'hu',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hy',47,'hy',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ia',48,'ia',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'id',49,'id',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ie',50,'ie',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ik',51,'ik',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'is',52,'is',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'iu',53,'iu',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',54,'ja',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'jw',55,'jw',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ka',56,'ka',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'kk',57,'kk',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'kl',58,'kl',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'km',59,'km',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'kn',60,'kn',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ko',61,'ko',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ks',62,'ks',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ku',63,'ku',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ky',64,'ky',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'la',65,'la',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ln',66,'ln',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'lo',67,'lo',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'lt',68,'lt',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'lv',69,'lv',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mg',70,'mg',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mi',71,'mi',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mk',72,'mk',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ml',73,'ml',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mn',74,'mn',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mo',75,'mo',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mr',76,'mr',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ms',77,'ms',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mt',78,'mt',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'my',79,'my',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'na',80,'na',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ne',81,'ne',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nl',82,'nl',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'no',83,'no',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'oc',84,'oc',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'om',85,'om',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'or',86,'or',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'pa',87,'pa',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'pl',88,'pl',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ps',89,'ps',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'pt',90,'pt',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'qu',91,'qu',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rn',92,'rn',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ro',93,'ro',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ru',94,'ru',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rw',95,'rw',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sa',96,'sa',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sd',97,'sd',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sg',98,'sg',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sh',99,'sh',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'si',100,'si',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sk',101,'sk',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sl',102,'sl',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sm',103,'sm',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sn',104,'sn',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'so',105,'so',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sq',106,'sq',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sr',107,'sr',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ss',108,'ss',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'st',109,'st',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'su',110,'su',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sv',111,'sv',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sw',112,'sw',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ta',113,'ta',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'te',114,'te',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tg',115,'tg',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'th',116,'th',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ti',117,'ti',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tk',118,'tk',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tl',119,'tl',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tn',120,'tn',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'to',121,'to',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tr',122,'tr',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ts',123,'ts',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tt',124,'tt',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tw',125,'tw',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ug',126,'ug',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'uk',127,'uk',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ur',128,'ur',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'uz',129,'uz',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vi',130,'vi',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vo',131,'vo',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'wo',132,'wo',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'xh',133,'xh',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'yi',134,'yi',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'yo',135,'yo',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'za',136,'za',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'zh',137,'zh',FALSE,NULL);
INSERT INTO arp_npl_oereb.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'zu',138,'zu',FALSE,NULL);
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Nutzungsplanung',0,'Nutzungsplanung',FALSE,'GeoIV Datensatz 73');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ProjektierungszonenNationalstrassen',1,'ProjektierungszonenNationalstrassen',FALSE,'87');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BaulinienNationalstrassen',2,'BaulinienNationalstrassen',FALSE,'88');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ProjektierungszonenEisenbahnanlagen',3,'ProjektierungszonenEisenbahnanlagen',FALSE,'96');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BaulinienEisenbahnanlagen',4,'BaulinienEisenbahnanlagen',FALSE,'97');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ProjektierungszonenFlughafenanlagen',5,'ProjektierungszonenFlughafenanlagen',FALSE,'103');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BaulinienFlughafenanlagen',6,'BaulinienFlughafenanlagen',FALSE,'104');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SicherheitszonenplanFlughafen',7,'SicherheitszonenplanFlughafen',FALSE,'108');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BelasteteStandorte',8,'BelasteteStandorte',FALSE,'116');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BelasteteStandorteMilitaer',9,'BelasteteStandorteMilitaer',FALSE,'117');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BelasteteStandorteZivileFlugplaetze',10,'BelasteteStandorteZivileFlugplaetze',FALSE,'118');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BelasteteStandorteOeffentlicherVerkehr',11,'BelasteteStandorteOeffentlicherVerkehr',FALSE,'119');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Grundwasserschutzzonen',12,'Grundwasserschutzzonen',FALSE,'131');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Grundwasserschutzareale',13,'Grundwasserschutzareale',FALSE,'132');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Laermemfindlichkeitsstufen',14,'Laermemfindlichkeitsstufen',FALSE,'145');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Waldgrenzen',15,'Waldgrenzen',FALSE,'157');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'Waldabstandslinien',16,'Waldabstandslinien',FALSE,'159');
INSERT INTO arp_npl_oereb.thema (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'WeiteresThema',17,'WeiteresThema',FALSE,'Fuer weitere Themen');
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ZH',0,'ZH',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BE',1,'BE',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'LU',2,'LU',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'UR',3,'UR',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SZ',4,'SZ',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'OW',5,'OW',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'NW',6,'NW',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GL',7,'GL',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ZG',8,'ZG',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'FR',9,'FR',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SO',10,'SO',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BS',11,'BS',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BL',12,'BL',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SH',13,'SH',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AR',14,'AR',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AI',15,'AI',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'SG',16,'SG',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GR',17,'GR',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'AG',18,'AG',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TG',19,'TG',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'TI',20,'TI',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'VD',21,'VD',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'VS',22,'VS',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'NE',23,'NE',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'GE',24,'GE',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'JU',25,'JU',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'FL',26,'FL',FALSE,NULL);
INSERT INTO arp_npl_oereb.chcantoncode (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'CH',27,'CH',FALSE,NULL);
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.coordDimension','2');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.c1Max','870000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.c2Max','310000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.geomType','POINT');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.c1Min','460000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.c2Min','45000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv03','ch.ehi.ili2db.srid','21781');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localiseduri',NULL,'multilingualuri_localisedtext','ch.ehi.ili2db.foreignKey','multilingualuri');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisedmtext',NULL,'atext','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisvorschrift',NULL,'eigentumsbeschraenkung','ch.ehi.ili2db.foreignKey','transferstruktur_eigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisvorschrift',NULL,'vorschrift_vorschriften_dokument','ch.ehi.ili2db.foreignKey','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('artikelnummer_',NULL,'transfrstrkwsvrschrift_artikelnr','ch.ehi.ili2db.foreignKey','transferstruktur_hinweisvorschrift');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisedmtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisationch_v1_localisedmtext","localisedmtext"]');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisedtext',NULL,'multilingualtext_localisedtext','ch.ehi.ili2db.foreignKey','multilingualtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisdefinitiondokument',NULL,'hinweisdefinition','ch.ehi.ili2db.foreignKey','transferstruktur_hinweisdefinition');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.coordDimension','2');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.c1Max','870000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.c2Max','310000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.c1Min','460000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.c2Min','45000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'flaeche_lv03','ch.ehi.ili2db.srid','21781');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_eigentumsbeschraenkung',NULL,'darstellungsdienst','ch.ehi.ili2db.foreignKey','transferstruktur_darstellungsdienst');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('vorschriften_artikel',NULL,'dokument','ch.ehi.ili2db.foreignKey','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'eigentumsbeschraenkung','ch.ehi.ili2db.foreignKey','transferstruktur_eigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisdefinition',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','vorschriften_amt');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('artikelnummer_',NULL,'vorschrftn_wswtrdkmnte_artikelnr','ch.ehi.ili2db.foreignKey','vorschriften_hinweisweiteredokumente');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('vorschriften_hinweisweiteredokumente',NULL,'ursprung','ch.ehi.ili2db.foreignKey','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_eigentumsbeschraenkung',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','vorschriften_amt');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_grundlageverfeinerung',NULL,'grundlage','ch.ehi.ili2db.foreignKey','transferstruktur_eigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('vorschriften_hinweisweiteredokumente',NULL,'hinweis','ch.ehi.ili2db.foreignKey','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisvorschrift',NULL,'vorschrift_vorschriften_artikel','ch.ehi.ili2db.foreignKey','vorschriften_artikel');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_legendeeintrag',NULL,'transfrstrkstllngsdnst_legende','ch.ehi.ili2db.foreignKey','transferstruktur_darstellungsdienst');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','vorschriften_amt');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('vorschriften_dokument',NULL,'T_Type','ch.ehi.ili2db.types','["vorschriften_dokument","vorschriften_rechtsvorschrift"]');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_hinweisdefinitiondokument',NULL,'dokument','ch.ehi.ili2db.foreignKey','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.coordDimension','2');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.c1Max','870000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.c2Max','310000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.c1Min','460000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.c2Min','45000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'linie_lv03','ch.ehi.ili2db.srid','21781');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisedtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisationch_v1_localisedtext","localisedtext"]');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisedmtext',NULL,'multilingualmtext_localisedtext','ch.ehi.ili2db.foreignKey','multilingualmtext');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('multilingualuri',NULL,'vorschriften_artikel_textimweb','ch.ehi.ili2db.foreignKey','vorschriften_artikel');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('multilingualtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisationch_v1_multilingualtext","multilingualtext"]');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_grundlageverfeinerung',NULL,'verfeinerung','ch.ehi.ili2db.foreignKey','transferstruktur_eigentumsbeschraenkung');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('multilingualuri',NULL,'vorschriften_dokument_textimweb','ch.ehi.ili2db.foreignKey','vorschriften_dokument');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('multilingualmtext',NULL,'T_Type','ch.ehi.ili2db.types','["artikelinhaltmehrsprachig","localisationch_v1_multilingualmtext","multilingualmtext"]');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.coordDimension','2');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.geomType','POINT');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('transferstruktur_geometrie',NULL,'punkt_lv95','ch.ehi.ili2db.srid','2056');
INSERT INTO arp_npl_oereb.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('vorschriften_dokument',NULL,'zustaendigestelle','ch.ehi.ili2db.foreignKey','vorschriften_amt');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('multilingualmtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localiseduri','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('vorschriften_hinweisweiteredokumente','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('vorschriften_artikel','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('rechtsstatus','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('multilingualuri','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisedmtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_darstellungsdienst','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_eigentumsbeschraenkung','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_hinweisdefinitiondokument','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('vorschriften_amt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_geometrie','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisedtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('multilingualtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_grundlageverfeinerung','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('thema','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('languagecode_iso639_1','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('artikelnummer_','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_hinweisdefinition','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_hinweisvorschrift','ch.ehi.ili2db.tableKind','ASSOCIATION');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('chcantoncode','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('transferstruktur_legendeeintrag','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO arp_npl_oereb.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('vorschriften_dokument','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO arp_npl_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CoordSys-20151124.ili','2.3','CoordSys','!! File CoordSys.ili Release 2015-11-24

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

','2020-01-07 08:56:13.361');
INSERT INTO arp_npl_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRMvs_V1_1.ili','2.3','OeREBKRMvs_V1_1{ CHAdminCodes_V1 LocalisationCH_V1 OeREBKRM_V1_1}','INTERLIS 2.3;

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
','2020-01-07 08:56:13.361');
INSERT INTO arp_npl_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRM_V1_1.ili','2.3','OeREBKRM_V1_1{ InternationalCodes_V1 LocalisationCH_V1 CatalogueObjects_V1}','INTERLIS 2.3;

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
','2020-01-07 08:56:13.361');
INSERT INTO arp_npl_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part1_GEOMETRY_20110830.ili','2.3','GeometryCHLV03_V1{ CoordSys Units INTERLIS} GeometryCHLV95_V1{ CoordSys Units INTERLIS}','/* ########################################################################
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
','2020-01-07 08:56:13.361');
INSERT INTO arp_npl_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('OeREBKRMtrsfr_V1_1.ili','2.3','OeREBKRMtrsfr_V1_1{ GeometryCHLV95_V1 CHAdminCodes_V1 LocalisationCH_V1 GeometryCHLV03_V1 OeREBKRM_V1_1 OeREBKRMvs_V1_1}','INTERLIS 2.3;

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
','2020-01-07 08:56:13.361');
INSERT INTO arp_npl_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part4_ADMINISTRATIVEUNITS_20110830.ili','2.3','CHAdminCodes_V1 AdministrativeUnits_V1{ CHAdminCodes_V1 InternationalCodes_V1 Dictionaries_V1 Localisation_V1 INTERLIS} AdministrativeUnitsCH_V1{ CHAdminCodes_V1 InternationalCodes_V1 LocalisationCH_V1 AdministrativeUnits_V1 INTERLIS}','/* ########################################################################
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
','2020-01-07 08:56:13.361');
INSERT INTO arp_npl_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part2_LOCALISATION_20110830.ili','2.3','InternationalCodes_V1 Localisation_V1{ InternationalCodes_V1} LocalisationCH_V1{ InternationalCodes_V1 Localisation_V1} Dictionaries_V1{ InternationalCodes_V1} DictionariesCH_V1{ InternationalCodes_V1 Dictionaries_V1}','/* ########################################################################
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
','2020-01-07 08:56:13.361');
INSERT INTO arp_npl_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part3_CATALOGUEOBJECTS_20110830.ili','2.3','CatalogueObjects_V1{ INTERLIS} CatalogueObjectTrees_V1{ INTERLIS CatalogueObjects_V1}','/* ########################################################################
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
','2020-01-07 08:56:13.361');
INSERT INTO arp_npl_oereb.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('Units-20120220.ili','2.3','Units','!! File Units.ili Release 2012-02-20

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

','2020-01-07 08:56:13.361');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.beautifyEnumDispName','underscore');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','topic');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.localisedTrafo','expand');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.3.1-23b1f79e8ad644414773bb9bd1a97c8c265c5082');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','%ILI_FROM_DB;%XTF_DIR;http://models.interlis.ch/;%JAR_DIR');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.importTabs','simple');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createDatasetCols','addDatasetCol');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.BasketHandling','readWrite');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createEnumDefs','multiTable');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO arp_npl_oereb.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','technicalContact','models@geo.admin.ch');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRM_V1_1','furtherInformation','http://www.cadastre.ch/oereb-public');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRM_V1_1','technicalContact','mailto:infovd@swisstopo.ch');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','technicalContact','models@geo.admin.ch');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjectTrees_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjectTrees_V1','technicalContact','models@geo.admin.ch');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMvs_V1_1','furtherInformation','http://www.cadastre.ch/oereb-public');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMvs_V1_1','technicalContact','mailto:infovd@swisstopo.ch');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMtrsfr_V1_1','furtherInformation','http://www.cadastre.ch/oereb-public');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('OeREBKRMtrsfr_V1_1','technicalContact','mailto:infovd@swisstopo.ch');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjects_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO arp_npl_oereb.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjects_V1','technicalContact','models@geo.admin.ch');
COMMENT ON SCHEMA arp_npl_oereb IS 'Schema für den Datenumbau ins OEREB-Transferschema';
GRANT USAGE ON SCHEMA arp_npl_oereb TO :PG_WRITE_USER;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA arp_npl_oereb TO :PG_WRITE_USER;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA arp_npl_oereb TO :PG_WRITE_USER;
