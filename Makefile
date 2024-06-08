composeLoc = --project-directory ./srcs

all: up

up: 
	sudo docker compose ${composeLoc} up -d

down: 
	sudo docker compose ${composeLoc} down

start: 
	sudo docker compose ${composeLoc} start

stop: 
	sudo docker compose ${composeLoc} stop

restart:
	sudo docker compose ${composeLoc} restart

re: down
	sudo docker compose ${composeLoc} up --build -d

ps: 
	sudo docker ps