# TODO: Install/Update docker and docker-compose in the Virtual Machine

NGINX-PATH			= ./srcs/requirements/nginx
WORDPRESS-PATH		= ./srcs/requirements/wordpress
MARIADB-PATH		= ./srcs/requirements/mariadb

all: build-mariadb build-wordpress
	cd ./srcs && docker compose up

build-nginx: $(NGINX-PATH)
	docker build $< -t 42-nginx:stable

build-wordpress: $(WORDPRESS-PATH)
	docker build $< -t 42-wordpress:stable
	
build-mariadb: $(MARIADB-PATH)
	docker build $< -t 42-mariadb:stable
