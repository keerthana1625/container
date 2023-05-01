FROM mysql:latest

# Set the timezone to UTC
ENV TZ=UTC

# Set the root password and database name
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=db

# Copy the SQL script to initialize the database
COPY ./init.sql /docker-entrypoint-initdb.d/

# Set the character set and collation for the database
RUN echo "character-set-server=utf8mb4" >> /etc/mysql/conf.d/docker.cnf && \
    echo "collation-server=utf8mb4_general_ci" >> /etc/mysql/conf.d/docker.cnf

# Expose the default MySQL port
EXPOSE 3306
