#!/bin/bash

INIT_FILE="/tmp/init.sql"

# Injects environment variables
sed -i -e "s/\$DATABASE_NAME/$DATABASE_NAME/g" $INIT_FILE
sed -i -e "s/\$DATABASE_USER/$DATABASE_USER/g" $INIT_FILE
sed -i -e "s/\$DATABASE_PASSWORD/$DATABASE_PASSWORD/g" $INIT_FILE
sed -i -e "s/\$DATABASE_ROOT_PASSWORD/$DATABASE_ROOT_PASSWORD/g" $INIT_FILE

# Setup mysql database if it doesn't exist
if [ -d "/var/lib/mysql/$DATABASE_NAME" ]; then
	mysqld_safe

else
	echo "Setting up $DATABASE_NAME database..."
	mysqld --init-file=$INIT_FILE
fi
