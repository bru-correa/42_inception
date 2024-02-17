COMPOSE_PATH = ./srcs/docker-compose.yml

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
	@ apt-get install -y docker-compose
	@ mkdir -p /home/bcorrea/data/html
	@ mkdir -p /home/bcorrea/data/mysql
	@ grep bcorrea.42.fr /etc/hosts || echo "127.0.0.1 bcorrea.42.fr" >> /etc/hosts
	@ wget https://github.com/bru-correa/42_inception/tree/main/srcs/.env

.PHONY: all clean fclean re down setup
