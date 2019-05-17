#!/bin/bash

# This file is sourced by the start.sh script. Changes made to environment
# variables or adding environment variables will take effect in the shell
# postgres is running in. Anything added to this file will be executed
# prior to the start of the postgres server

echo_info "Executing pre-start-hook..." # add below this line

#whoami
# Here it is planned to run a sed command that modifies the custom pg_hba.conf file;
# it should replace in the following line
#host    replication     PG_PRIMARY_USER  0.0.0.0/0              md5
# "PG_PRIMARY_USER" with the actual name of the PG_PRIMARY_USER

