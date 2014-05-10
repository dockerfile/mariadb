## MariaDB Dockerfile


This repository contains **Dockerfile** of [MariaDB](https://mariadb.org/) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/dockerfile/mariadb/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/dockerfile/mariadb/) from public [Docker Registry](https://index.docker.io/): `docker pull dockerfile/mariadb`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/mariadb" github.com/dockerfile/mariadb`)


### Usage

    docker run -it --rm -p 3306:3306 dockerfile/mariadb
