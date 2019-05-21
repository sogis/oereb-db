FROM crunchydata/crunchy-postgres-gis:centos7-11.2-2.3.1

# LABEL ...

USER root

RUN localedef -c -i de_CH -f UTF-8 de_CH.UTF-8
COPY pgconf/* /pgconf/

USER 26
