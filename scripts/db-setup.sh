!#/bin/sh

export PGUSER=""postgres

psql -c "CREATE DATABASE inventory"

psql -c "CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\";"
