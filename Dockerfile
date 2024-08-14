FROM debian:bullseye-20240612

RUN apt update && apt install -y mariadb-server wordpress nginx procps iputils-ping

CMD sleep infinity