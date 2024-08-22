up:
	docker compose -f srcs/docker-compose.yml build 
	docker compose -f srcs/docker-compose.yml up

down:
	docker compose -f srcs/docker-compose.yml down

mariadb:
	docker exec -it mariadb bash

nginx:
	docker exec -it nginx bash

wordpress:
	docker exec -it wordpress bash

remove:
	docker run --rm -v /home/mde-arpe/CURSUS/42inception/srcs/requirements/mariadb/data:/torm -v $(PWD)/rmall.sh:/rmall.sh debian:bullseye-20240612 bash /rmall.sh
	docker run --rm -v /home/mde-arpe/CURSUS/42inception/srcs/requirements/wordpress/files:/torm -v $(PWD)/rmall.sh:/rmall.sh debian:bullseye-20240612 bash /rmall.sh
