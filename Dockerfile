FROM crunchydata/crunchy-postgres-gis:centos7-11.2-2.3.1

LABEL name="sogis/oereb-db"
LABEL vendor="AGI"
LABEL url="https://agi.so.ch"
LABEL summary="Image based on crunchydata/crunchy-postgres-gis providing a PostGIS database with OEREB tables"
LABEL description="This image provides a PostGIS database with empty OEREB tables, ready for importing data with ili2pg."

USER root

RUN localedef -c -i de_CH -f UTF-8 de_CH.UTF-8
COPY pgconf/* /pgconf/

USER 26

HEALTHCHECK --interval=30s --timeout=5s --start-period=60s CMD /usr/pgsql-11/bin/pg_isready -h localhost -p 5432