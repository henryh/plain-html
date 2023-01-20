help:
	cat Makefile
up:
	docker-compose down --remove-orphans
	docker-compose up -d --build
down:
	docker-compose down --remove-orphans
bash:
	docker-compose exec nginx sh