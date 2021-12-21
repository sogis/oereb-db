FROM sogis/postgis:14-3.1

LABEL maintainer="Amt fuer Geoinformation Kanton Solothurn"

COPY setup.sql /docker-entrypoint-initdb.d/20_setup.sql
COPY initdb-user.sh /docker-entrypoint-initdb.d/30_initdb_user.sh
