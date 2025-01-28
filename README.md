# MySQL Docker Container Setup and Explanation


This guide walks you through the steps to set up a MySQL Docker container, initialize a database with a custom schema, and access the database.
---

## 2. Create the `Dockerfile` File

### Example ``:

``` bash

# Use the official MySQL 8.0 image as the base image
FROM mysql:8.0

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=training_management

# Copy the init.sql file into the container's initialization directory
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the MySQL default port
EXPOSE 3306

```

### Explanation:
- **MySQL Image**: The mysql:8.0 official image provides a lightweight and reliable MySQL server.
- **Environment Variables**:
	- •	MYSQL_ROOT_PASSWORD: Sets the root password for MySQL.
	- •	MYSQL_DATABASE: MYSQL_DATABASE: Automatically creates a database named training_management during initialization.
	- •	Volume: The init.sql file is copied into the /docker-entrypoint-initdb.d/ directory, which initializes the database schema on container startup.
	- •	Ports: Expose: Port 3306 (the default MySQL port) is exposed for access.



## 3. Build and Start the Docker Containers

## Command to Build and Run the Docker Container:

# Step 1: Build the Docker Image
- Run the following command in the terminal from the directory containing the Dockerfile and init.sql:

```bash
$ docker build -t training_management_db .
```

### Explanation:
- **`-t`**: training_management_db: Tags the image with the name training_management_db.

---
# Step 2: Run the Docker Container
- Start the container using:

```bash
$ docker run -d --name training_management_db \
  -p 3307:3306 \
  training_management_db
```
### Explanation:
- •	-d: Runs the container in detached mode (in the background).
- •	--name training_management_db: Names the container training_management_db.
- •	-p 3307:3306: Maps port 3306 inside the container to port 3307 on your local machine.
- •	training_management_db: Specifies the image built in Step 1.

## 4. Verify the Container is Running

### Command:
```bash
$ docker ps
```
- **Purpose**: Lists all running containers.
- **Expected Output**:
  - You should see the training_management_db container with its status as Up and the port mapping (3307->3306).

---

## 5. Access the Database

- You can connect to the MySQL container using any MySQL client (e.g., MySQL Workbench, DBeaver, or command-line).


#### Connection Details:
- **Host**: `localhost`
- **Port**: `3307`
- **Username**: `root`
- **Password**: `rootpassword`

### Example Query:
After connecting, verify the setup by running:
```sql
SELECT * FROM example_table;
```
## 6.Stopping and Removing the Container
- Stopping and Removing the Container
```bash
$ docker stop training_management_db
```
- To remove the container:
```bash
$ docker rm training_management_db
```
- To remove the image:
```bash
$ docker rmi training_management_db
```
---

## Summary
- We set up a MySQL Docker container using Dockerfile.
- The database was automatically initialized with a custom schema using the init.sql file.
- The MySQL database is accessible via port 3306 on your local machine.
- Commands for stopping and removing the container are also provided.

