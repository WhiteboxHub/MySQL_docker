# Use the MySQL official base image
FROM mysql:latest

# Set the root password as an environment variable
ENV MYSQL_ROOT_PASSWORD=Innovapath1

# Set the default database to be created
ENV MYSQL_DATABASE=Docker_MYSQL_DATABASE

# Copy the .sql file to the container's initialization folder
COPY Dump123456.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306

