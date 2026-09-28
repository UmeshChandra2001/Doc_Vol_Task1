FROM mysql:8.0
LABEL maintainer="UMESH"
LABEL description="MySQL 8.0 with TFI Heroes database pre-loaded"
EXPOSE 3306
COPY mysql.sql /docker-entrypoint-initdb.d
ENV MYSQL_ROOT_PASSWORD=admin123
