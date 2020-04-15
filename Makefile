install:
	cp app/.env.local app/.env
	docker-compose up -d --build
	docker exec -it app bash -c 'composer install'
	docker exec -it app bash -c 'composer dump-autoload'
	docker exec -it app bash -c 'php artisan migrate'

up-d:
	docker-compose up -d --build

up:
	docker-compose up --build

down:
	docker-compose down

update:
	docker exec -it app bash -c 'composer install'
	docker exec -it app bash -c 'php artisan migrate'

console:
	docker exec -it app bash

npm-i:
	docker exec -it app bash -c 'npm i'

watch:
	docker exec -it app bash -c 'npm run watch'

prod:
	docker exec -it app bash -c 'npm run prod'
