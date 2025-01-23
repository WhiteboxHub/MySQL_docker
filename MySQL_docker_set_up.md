
# Commands to Run the Container and Test MySQL Database

## Step 1: Run the Container

To run a container with MySQL, use the following command:

```bash
docker run -d --name my_sql_class -p 3306:3306 sql_class
```

### Explanation:
- `-d` runs the container in detached mode (in the background).
- `--name my_sql_class` gives the container a custom name (you can change it to anything).
- `-p 3306:3306` maps port 3306 inside the container to port 3306 on your machine, so you can connect to the database.
- `sql_class` is the name of the Docker image you are using.

## Step 2: Verify the Container is Running

To check if your container is running, use:

```bash
docker ps
```

This will show a list of all running containers. You should see `my_sql_class` listed.

## Step 3: Access the MySQL Shell

To access the MySQL command line interface inside the container:

```bash
docker exec -it my_sql_class mysql -u root -p
```

It will ask for a password. Enter:

```
Innovapath1
```

## Step 4: Check Database and Tables

Once you are inside MySQL, verify the databases and tables:

```sql
SHOW DATABASES;
USE my_db;
SHOW TABLES;
```

## Step 5: Run a Sample Query

To run a simple query (e.g., show the first 10 records from `authuser` table):

```sql
SELECT * FROM authuser LIMIT 10;
```

## Step 6: Exit MySQL Shell

Once done, you can exit the MySQL shell:

```sql
EXIT;
```

---

## After Pulling the Image

If you need to pull the MySQL Docker image and run it, follow these steps:

## Step 1: Log in to Docker Hub

Log in to Docker Hub:

```bash
docker login
```

## Step 2: Pull the Docker Image

To pull the MySQL Docker image:

```bash
docker pull sairam1219/class_mysql_docker
```

## Step 3: Verify the Image is Pulled

To verify that the image has been pulled successfully:

```bash
docker images
```

## Step 4: Run the Docker Container

To run the container with MySQL and set a password:

```bash
docker run -d --name mysql-container -e MYSQL_ROOT_PASSWORD=Innovapath1 -p 3306:3306 sairam1219/class_mysql_docker
```

### Explanation:
- `-d` runs the container in detached mode.
- `--name mysql-container` gives the container a name.
- `-e MYSQL_ROOT_PASSWORD=Innovapath1` sets the root password for MySQL.
- `-p 3306:3306` maps port 3306 on your machine to port 3306 inside the container.
- `sairam1219/class_mysql_docker` is the name of the image.

## Step 5: Verify the Container is Running

To verify if the container is running:

```bash
docker ps
```

## Step 6: Connect to MySQL via MySQL Workbench

1. Open MySQL Workbench.
2. Create a new connection:
   - **Hostname**: 127.0.0.1 or localhost
   - **Port**: 3306
   - **Username**: root
   - **Password**: Innovapath1
3. Test the connection.
4. Click OK to save the connection.

## Step 7: Access the Database in MySQL CLI

To access MySQL inside the running container via CLI:

1. Check if the container is running:

   ```bash
   docker ps
   ```

2. Access MySQL CLI:

   ```bash
   docker exec -it mysql-container mysql -u root -p
   ```

3. Verify the databases and tables:

   ```sql
   SHOW DATABASES;
   USE my_db;
   SHOW TABLES;
   ```

4. Exit MySQL CLI:

   ```sql
   EXIT;
   ```

---