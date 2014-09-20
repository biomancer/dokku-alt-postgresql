# dokku-alt-postgresql

Dockerfile to build a PostgreSQL 9.3 container for Dokku

## Features

* [Phusion Baseimage](https://github.com/phusion/baseimage-docker) using Ubuntu 14.04 LTS
* [Official PostgreSQL Packages](http://wiki.postgresql.org/wiki/Apt)
* [PostgreSQL Extension Whitelisting](https://github.com/dimitri/pgextwlist)
* [Lightly tuned configuration](https://github.com/yabawock/dokku-alt-postgresql/blob/develop/configs/postgresql.conf)

### Phusion Baseimage

* PostgreSQL service is supervised by runit
* PostgreSQL output is logged by runit

### Official PostgreSQL Packages

The packages provided by the PGDG allow installation of features not available in the Ubuntu maintained version.

### PostgreSQL Extension Whitelisting

Allow normal database users to perform the operations `CREATE EXTENSION`, `DROP EXTENSION` and `ALTER EXTENSION ... UPDATE`.

### Tuned configuration

The [Configuration](https://github.com/yabawock/dokku-alt-postgresql/blob/develop/configs/postgresql.conf) is tuned for
a system memory of ~512MB and not more than 100 connections to the database.

# Using the image

To use this image with [dokku-alt](https://github.com/dokku-alt/dokku-alt) you need to set some configuration variables in `/home/dokku/dokkurc`:

```bash
export POSTGRESQL_IMAGE=yabawock/dokku-alt-postgresql
export POSTGRESQL_USER=postgres
export POSTGRESQL_COMMAND=/sbin/my_init
export POSTGRESQL_CONTAINER_VOLUME=/var/lib/postgresql
export POSTGRESQL_CONTAINER_PASSWORD=/etc/postgresql/9.3/main/postgresql.password
```
