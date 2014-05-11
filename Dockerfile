#
# MariaDB Dockerfile
#
# https://github.com/dockerfile/mariadb
#

# Pull base image.
FROM dockerfile/ubuntu

# Install MariaDB.
RUN \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0xcbcb082a1bb943db && \
  echo "deb http://mariadb.mirror.iweb.com/repo/10.0/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/mariadb.list && \
  apt-get update && \
  apt-get install -y mariadb-server && \
  sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/my.cnf

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 3306
