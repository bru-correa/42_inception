# TODO: Maybe install docker in the VirtualMachine

NGINX-PATH			= ./services/nginx
WORDPRESS-PATH		= ./services/wordpress
MARIADB-PATH		= ./services/mariadb

all: build-nginx # build-wordpress build-mariadb
	docker compose up

build-nginx: $(NGINX-PATH)
	docker build $< -t nginx:stable

build-wordpress: $(WORDPRESS-PATH)
	docker build $< -t wordpress:stable
	
build-maridb: $(MARIADB-PATH)
	docker build $< -t mariadb:stable
