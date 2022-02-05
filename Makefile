up:
	docker compose up -d server
down:
	docker compose down
build:
	docker compose build
prune:
	docker container prune

composer:
	docker compose run --rm composer $(c)

artisan:
	docker compose run --rm artisan $(c)

npm:
	docker compose run --rm npm $(c)