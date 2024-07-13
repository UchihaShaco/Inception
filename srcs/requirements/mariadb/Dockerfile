FROM debian:bullseye

RUN apt-get update -y

RUN apt-get install -y mariadb-server

# Change bind-address to allow connections from any network
RUN sed -i 's/bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/mariadb.sh .

EXPOSE 3306

RUN chmod +x mariadb.sh

CMD ["./mariadb.sh"]
# CMD ["sleep", "999999999"]