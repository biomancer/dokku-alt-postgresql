#!/bin/bash

if [[ ! -d /var/lib/postgresql/9.3/main ]]; then
  mkdir -p /var/lib/postgresql/9.3
  chown -R postgres:postgres /var/lib/postgresql
  sudo -u postgres /usr/lib/postgresql/9.3/bin/initdb -D /var/lib/postgresql/9.3/main
fi
