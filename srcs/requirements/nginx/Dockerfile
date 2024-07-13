FROM debian:bullseye

RUN apt-get update && apt-get install -y \
	nginx \
	openssl && \
	rm -rf /var/lib/apt/lists/*

COPY ./conf/nginx.conf /conf/nginx.conf

COPY ./tools/ngin.sh /

CMD ["bash", "/ngin.sh"]