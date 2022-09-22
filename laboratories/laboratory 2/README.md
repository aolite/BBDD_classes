# Enunciado del Laboratorio 2

En este segundo laboratorio vamos a trabajar sobre como realizar consultas en algebra relacional y SQL queries sobre la base de datos de PostgreSQL que se deberá crear. Para aprender como crear una base de datos, es necesario cumplimentar o leer el laboratorio 1. 

En base a estos objetivos y conocimientos previos, vamos a trabajar sobre la siguiente base de datos: 

![](https://i.imgur.com/yPyz5EL.png)

Para ello, vamos a realizar dos actividades. 

## Actividad 1 - Algebra Relacional

La primera actividad, tiene relación con el ejercicio 1 del libro de ejercicios, en el que habrá que modelar las siguientes consultas en algebra relacional. 

1. Listar el nombre de los pilotos que disponen de autorización para pilotar aviones de 300 viajeros. 
2. Listar el nombre de los viajeros que tienen billetes para ir a 'Londres' el día '2022-09-23' a partir de las '13:00H'
3. Listar todos los datos de los aviones que no estan asignados a ningun vuelo el día '2022-09-23' y que puedan estar pilotados por pilotos de más de 45 años.
4. Obtener el nombre y la dirección de los viajeros que, a pesar de ser buenos viajeros, no realizaron ningún viaje durante el mes de octubre. 
5. Obtener el nombre de los aviones que han estado asignados al mismo vuelo de Barcelona a Las Palmas en, como mínimo, dos ocasiones diferentes.

## Actividad 2- Consultas SQL sobre la Base de Datos

En esta segunda parte del laboratorio, lo que vamos a trabajar es sobre una base de datos relacional. Para ello, deberemos realizar las siguientes acciones: 

1. Crear una base de datos llamada 'Laboratorio2' (mirar el laboratorio 1 para ver como se crea una base de datos en PgAdmin). 
2. Crear el esquema (estructura) de la base de datos. Para ello, deberemos ejecutar, dentro del editor de SQL el contenido del fichero llamado "database.sql" que se encuentra dentro de la carpeta "database schema". 
3. Crear los correspondientes inserts para llenar (o poblar) la base de datos. Dichos ficheros se encuentran dentro de la carpeta "inserts". 
4. Realizar los ejercicios de la actividad 1 en SQL. 

    a. Listar el nombre de los pilotos que disponen de autorización para pilotar aviones de 300 viajeros. 
    
    b. Listar el nombre de los viajeros que tienen billetes para ir a 'Londres' el día '2022-09-23' a partir de las '13:00H'
    
    c. Listar todos los datos de los aviones que no estan asignados a ningun vuelo el día '2022-09-23' y que puedan estar pilotados por pilotos de más de 45 años.
    
    d. Obtener el nombre y la dirección de los viajeros que, a pesar de ser buenos viajeros, no realizaron ningún viaje durante el mes de octubre. 
    
    e. Obtener el nombre de los aviones que han estado asignados al mismo vuelo de Barcelona a Las Palmas en, como mínimo, dos ocasiones diferentes.
    
En esta actividad hace falta presentar la sconsultas SQL y los resultados que nos de el sistema gestor de BBDD.