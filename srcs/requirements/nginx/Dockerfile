FROM debian:buster

RUN apt update

RUN apt install -y nginx openssl


COPY ./tools/ngin.sh /

RUN chmod +x /ngin.sh

RUN /ngin.sh

COPY index.html /usr/share/nginx/html

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]
