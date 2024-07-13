all: build up

up:
	cd srcs && docker compose up -d

down:
	cd srcs && docker compose down

build:
	if [ ! -d "/home/${USER}/Inception/data" ]; then \
		mkdir -p "/home/${USER}/Inception/data/wp" \
		mkdir -p "/home/${USER}/Inception/data/db"; \
	fi
	cd srcs && docker compose build

logs:
	cd srcs && docker compose logs -f

remove_volumes:
	docker volume rm $$(docker volume ls -q)
	sudo rm -rf /home/${USER}/Inception/data

fclean: down remove_volumes
	docker system prune --all --force
	@if [ ! -z "$(docker images -q)" ]; then \
		docker rmi -f $$(docker images -q); \
	fi

re: fclean all