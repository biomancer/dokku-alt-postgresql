#!/bin/bash
. /etc/container_environment.sh

# run idemptoent database configuration
sudo -i -u postgres /usr/lib/postgresql/9.3/bin/postgres --single -D /var/lib/postgresql/9.3/main -c config-file=${PG_CONFIG} <<EOF
ALTER ROLE postgres WITH PASSWORD '${DB_ADMIN_PASS}';
EOF
