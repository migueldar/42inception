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
