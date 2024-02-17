#!/bin/bash

openssl req -x509 -nodes -newkey rsa:4096 -days 365 -utf8 \
	-keyout /etc/nginx/ssl/bcorrea.key \
	-out /etc/nginx/ssl/bcorrea.csr \
	-subj "/C=BR/ST=SãoPaulo/L=SãoPaulo/O=42SP/CN=bcorrea.42.fr"
