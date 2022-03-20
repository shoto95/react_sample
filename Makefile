build:
	docker-compose build --no-cache --force-rm
up:
	docker-compose up -d 
react:
	docker-compose exec app sh -c "npx create-react-app ."
create-project:
	@make build
	@make up
	@make react
app:
	docker-compose exec app sh
start:
	docker-compose start
	docker-compose exec app sh -c "npm start"
stop:
	docker-compose stop
destroy:
	docker-compose down --rmi all --volumes --remove-orphans