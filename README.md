# Data Bases Classes code repository

This repository is mainly focused on managing the tools for the classes of data bases. It will include also some some structural elements for the exercises. 

In terms of update, this repository will be updated continously according to the classes and the proposed exercises to promote studends learning. 


## First Steps with the respository

For working offline with the PostgreSQL database, we will work with Docker technology. Using this technology, we will give the code for configuring PostgeSQL and also, the needed structure for the databases. 

For installing Docker, it is required to follow up the steps identified and described in the [Docker documentation](https://docs.docker.com/desktop/).



After installing docker, the next step is to configure the docker compose (like a program) to configure POSTGRES and the corresponding admin (PG-ADMIN). For that, we need to create a folder and download the file called "docker-compose.yml": 

```
version: '3.8'
services:
  db:
    container_name: pg_container
    image: postgres
    restart: always
    environment:
      POSTGRES_USER: root
      POSTGRES_PASSWORD: root
      POSTGRES_DB: test_db
    ports:
      - "5432:5432"
  pgadmin:
    container_name: pgadmin4_container
    image: dpage/pgadmin4
    restart: always
    environment:
      PGADMIN_DEFAULT_EMAIL: admin@admin.com
      PGADMIN_DEFAULT_PASSWORD: root
    ports:
      - "5050:80"
```

Now run the following command from the same directory where the docker-compose.yml file is located: 

```
docker compose up

```

This command starts and runs the entire app generated to play with the dabases that we will elaborate in class. Once installed and running up everything, we can access the database under the following URL: 

- pgAdmin: 
    - URL: http://localhost:5050
    - email: admin@admin.com
    - password: root

Once in the main screen of the pgAdmin, we need to create a connection to our PostgreSQL. For that, we need to positoning on servers and with right click, select "Register/Servers" and fill information: 
- General tab
    - name: bbdd-classes 
- Connection tab
    - host Name: pg_container
    - port: 5432
    - username: root
    - password: root

![](https://i.imgur.com/8kgYh6c.png)
![](https://i.imgur.com/oc2VB3J.png)

And now, we have created or own working environment!!! Congrats! :100: 

To close the application from the computer, we need to aply the following command in the terminal: 

```
docker compose stop

```

and if we want to start again, we need to apply the following command: 

```
docker compose start
```

Finally, if we want to ***stop and remove the containers***, we need to apply the following command: 

```
docker compose down

```

Now, you are ready to continue with the laboratory exercise under 

