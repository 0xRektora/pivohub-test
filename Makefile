up:
	docker-compose up -d --force-recreate db adminer && docker-compose up -d --force-recreate api web web_dev
logs:
	docker-compose up
stop:
	docker-compose stop
down:
	docker-compose down