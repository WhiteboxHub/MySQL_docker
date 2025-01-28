# Use the official MySQL 8.0 image as the base image
FROM mysql:8.0

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=training_management

# Copy the init.sql file into the container's initialization directory
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the MySQL default port
EXPOSE 3306