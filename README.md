## MariaDB Dockerfile


This repository contains [MariaDB](https://mariadb.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/luciano-jr/mariadb/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/lucianojr/mariadb/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull luciano-jr/mariadb`

   (alternatively, you can build an image from Dockerfile: `docker build -t="luciano-jr/mariadb" github.com/luciano-jr/mariadb`)


### Usage

#### Run `mysqld-safe`

    docker run -d --name mysql -p 3306:3306 lucianojr/mariadb

#### Run `mysql`

    docker run -it --rm --link mysql:mysql lucianojr/mariadb bash -c 'mysql -h $MYSQL_PORT_3306_TCP_ADDR'
