FROM mysql:8.0
LABEL maintainer="UMESH"
LABEL description="Docker MySQL Replication"
EXPOSE 3306
COPY devops.sql /docker-entrypoint-initdb.d
ENV MYSQL_ROOT_PASSWORD=admin123

