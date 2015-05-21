#!/bin/bash

if [[ ! -d /var/lib/postgresql/9.4/main ]]; then
  mkdir -p /var/lib/postgresql/9.4
  chown -R postgres:postgres /var/lib/postgresql
  sudo -u postgres /usr/lib/postgresql/9.4/bin/initdb -D /var/lib/postgresql/9.4/main
  touch /var/lib/postgresql/initialized
fi
