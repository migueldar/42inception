FROM debian:bullseye-20240612

#change to not install wordpress, it has tons of big shit we dont need (mariadb, apache...)
RUN apt update && apt install -y php-fpm wordpress

EXPOSE 9000

CMD sleep infinity
