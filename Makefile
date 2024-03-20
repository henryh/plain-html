LOG_LINES = 10

help:
	cat Makefile

install:
	@make check_env
	@make up
check_env:
	test -f .env || cp .env.example .env
up:
	@make down
	docker-compose up -d --build
down:
	docker-compose down --remove-orphans
bash:
	docker-compose exec nginx sh
logs:
	docker-compose logs --tail=$(LOG_LINES)
