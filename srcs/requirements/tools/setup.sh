#!/bin/bash

echo "Creating data folder..."
mkdir -p /home/bcorrea/data/html
mkdir -p /home/bcorrea/data/mysql

echo "Updating hosts file..."
grep bcorrea.42.fr /etc/hosts || echo "127.0.0.1 bcorrea.42.fr" >>/etc/hosts

if [[ -f ./srcs/.env ]]; then
	echo "Found .env file"
else
	echo "ERROR: You need to setup the .env file in srcs folder"
	exit 1
fi

echo "Setup complete"
