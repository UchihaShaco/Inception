#! /bin/bash

sed -i "s|cert_placeholder| /etc/ssl/certs/nginx.crt |g" /conf/nginx.conf
sed -i "s|the_key| /etc/ssl/private/nginx.key |g" /conf/nginx.conf

openssl req -x509 -days 365 -nodes -newkey rsa:4096 \
	-keyout /etc/ssl/private/nginx.key \
	-out /etc/ssl/certs/nginx.crt -sha256 -subj "/CN=jalwahei.42.fr"

cp /conf/nginx.conf /etc/nginx/sites-available/default

nginx -g 'daemon off;'