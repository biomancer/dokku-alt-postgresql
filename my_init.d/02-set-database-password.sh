#!/bin/bash
. /etc/container_environment.sh

DB_ADMIN_PASS="$(cat /etc/postgresql/9.3/main/postgresql.password 2>/dev/null)"
if [[ -z /etc/postgresql/9.3/main/postgresql.password ]]; then
	echo "No PostgreSQL super user password defined!"
	exit 1
fi

# run idemptoent database configuration
sudo -i -u postgres /usr/lib/postgresql/9.3/bin/postgres --single -D /var/lib/postgresql/9.3/main -c config-file=${PG_CONFIG} <<EOF
ALTER ROLE postgres WITH PASSWORD '${DB_ADMIN_PASS}';
EOF
