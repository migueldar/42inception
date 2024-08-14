up:
	docker compose -f srcs/docker-compose.yml build 
	docker compose -f srcs/docker-compose.yml up

down:
	docker compose -f srcs/docker-compose.yml down

test:
	docker build . -t test
	docker run -it --rm -p 443:443 -v $(shell pwd)/testconf:/conf --name test test bash

mariadb:
	docker exec -it mariadb bash

nginx:
	docker exec -it nginx bash

wordpress:
	docker exec -it wordpress bash
