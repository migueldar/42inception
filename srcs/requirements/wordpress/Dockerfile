FROM debian:bullseye-20240612

RUN apt update && apt install -y php7.4-fpm php7.4-mysql curl sendmail-base && mkdir -p /run/php

#install wp-cli
RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/bin/wp-cli.phar && chmod 755 /usr/bin/wp-cli.phar

#usefull tools, remove
RUN apt install -y vim tcpdump procps psmisc iproute2

EXPOSE 9000

COPY $PWD/conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

CMD bash /conf/entrypoint.sh
