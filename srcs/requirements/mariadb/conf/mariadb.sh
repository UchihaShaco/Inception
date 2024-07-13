#!/bin/sh

# Start the MariaDB service
service mariadb start

# Wait for MariaDB to be fully up and running
sleep 5

# Create database and user, and grant privileges
mariadb -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
mariadb -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mariadb -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"
mariadb -e "FLUSH PRIVILEGES;"

# Stop the MariaDB service
service mariadb stop

# Start MariaDB safely
mysqld_safe
