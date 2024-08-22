FROM debian:bullseye-20240612

EXPOSE 3306

RUN apt update && apt install -y mariadb-server

COPY $PWD/conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY $PWD/conf/mariadb.cnf /etc/mysql/mariadb.cnf
COPY $PWD/conf/entrypoint.sh /entrypoint.sh

CMD bash /entrypoint.sh
