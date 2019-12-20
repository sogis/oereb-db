echo "Running testscript.sh"

export PGHOST=db
export PGPORT=5432
export PGDATABASE=oereb
export PGUSER=ogc_server
export PGPASSWORD=ogc_server

echo "Waiting for PostgreSQL to start.."
while true; do
    /usr/pgsql-10/bin/pg_isready --timeout=2
    if [ $? -eq 0 ]; then
        echo "The database is ready."
        break
    fi
    sleep 2
done

# Have some extra sleep
sleep 3

# Run the tests
gretl
