COMPOSE_PATH = ./srcs/docker-compose.yml
SETUP_PATH = ./srcs/requirements/tools/setup.sh

all: setup
	@ docker-compose -f ${COMPOSE_PATH} up --build

clean:
	@ docker system prune -a --force

fclean:
	@ rm -rf /home/bcorrea/data

re: fclean all

down:
	@ docker-compose -f ${COMPOSE_PATH} down

setup:
	sudo ./${SETUP_PATH}

.PHONY: all clean fclean re down setup
