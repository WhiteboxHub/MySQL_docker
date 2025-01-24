# MySQL Docker Container Setup and Explanation


This guide walks you through the steps to set up a MySQL Docker container, initialize a database with a custom schema, and access the database.
---

## 2. Create the `docker-compose.yml` File

### Example `docker-compose.yml`:

``` bash

version: '3.8'

services:
  db:
    image: mysql:8.0
    container_name: training_management_db
    environment:
      MYSQL_ROOT_PASSWORD: rootpassword  # Set MySQL root password
      MYSQL_DATABASE: training_management  # Name of the database to create
    volumes:
      - ./init.sql:/docker-entrypoint-initdb.d/init.sql  # Mount the initialization script
    ports:
      - "3306:3306"  # Expose MySQL port
    networks:
      - training_management_network

networks:
  training_management_network:
    driver: bridge

```

### Explanation:
- **MySQL Image**: Uses the official MySQL 8.0 image from Docker Hub.
- **Environment Variables**:
	- •	MYSQL_ROOT_PASSWORD: Sets the root password for MySQL.
	- •	MYSQL_DATABASE: Automatically creates a database named training_management.
	- •	Volume: Mounts your init.sql file to initialize the database schema.
	- •	Ports: Exposes MySQL port 3306 for local access.

## Create the init.sql File

### Example init.sql:
```bash
CREATE TABLE example_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO example_table (name) VALUES ('Sample Entry');

```

### Explanation:

- This SQL script creates a table named example_table and inserts a sample entry.

## Build and Start the Docker Containers

## Command to Build and Run Containers:
```bash
docker-compose up -d
```

### Explanation:
- **`-d`**: Runs the container in detached mode (in the background).
- **`--name mysql-container`**: Assigns the name `mysql-container` to your container.
- **`-e MYSQL_ROOT_PASSWORD=root`**: Passes the root password as an environment variable.
- **`-p 3307:3306`**: Maps port `3306` inside the container to port `3307` on your local machine.
- **`training-management-db`**: Refers to the image built in Step 3.

---

## 5. Verify the Container is Running

### Command:
```bash
$ docker ps
```
- **Purpose**: Lists all running containers.
- **Expected Output**:
  - You should see `mysql-container` with its status as `Up` and the port mapping (`3307->3306`).

---

## 6. Access the Database

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

---

## Summary
- We set up a MySQL Docker container using docker-compose.
- The container automatically initializes the database with a custom schema using the init.sql script.
- We can access the database via MySQL clients on localhost:3306.
- Commands for stopping and removing the container are also provided.

