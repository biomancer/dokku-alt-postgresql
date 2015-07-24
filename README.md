# dokku-alt-postgresql

Dockerfile to build a PostgreSQL 9.4 container for Dokku

## Features

* [Phusion Baseimage](https://github.com/phusion/baseimage-docker) using Ubuntu 14.04 LTS
* [Official PostgreSQL Packages](http://wiki.postgresql.org/wiki/Apt)
* [PostgreSQL Extension Whitelisting](https://github.com/dimitri/pgextwlist)
* [PostgreSQL Execution Statistics](http://www.postgresql.org/docs/9.4/static/pgstatstatements.html)
* [Lightly tuned configuration](https://github.com/yabawock/dokku-alt-postgresql/blob/develop/configs/postgresql.conf)

### Phusion Baseimage

* PostgreSQL service is supervised by runit
* PostgreSQL output is logged by runit

### Official PostgreSQL Packages

The packages provided by the PGDG allow installation of features not available in the Ubuntu maintained version.

### PostgreSQL Extension Whitelisting

Allow normal database users to perform the operations `CREATE EXTENSION`, `DROP EXTENSION` and `ALTER EXTENSION ... UPDATE`.

### PostgreSQL Execution Statistics

The pg_stat_statements module provides a means for tracking execution statistics of all SQL statements executed by a server.
This can be used to get insights into the PostgreSQL Server using tools like [PgHero](https://github.com/ankane/pghero).

# Using the image

To use this image with [dokku-alt](https://github.com/dokku-alt/dokku-alt) you need to set some configuration variables in `/home/dokku/dokkurc`:

```bash
export POSTGRESQL_IMAGE=biomancer/dokku-alt-postgresql:9.4
export POSTGRESQL_USER=postgres
export POSTGRESQL_COMMAND=/sbin/my_init
export POSTGRESQL_CONTAINER_VOLUME=/var/lib/postgresql
export POSTGRESQL_CONTAINER_PASSWORD=/etc/postgresql/9.4/main/postgresql.password
```
