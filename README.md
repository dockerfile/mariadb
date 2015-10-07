## MariaDB Dockerfile


This repository contains **Dockerfile** of [MariaDB](https://mariadb.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dockerfile/mariadb/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/dockerfile/mariadb/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull dockerfile/mariadb`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/mariadb" github.com/dockerfile/mariadb`)


### Usage

#### Run `mysqld-safe`

    docker run -d --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=<password> mariadb

#### Run `mysql`

    docker run -it --rm --link mysql:mysql mariadb bash -c 'mysql -h mysql -p'
