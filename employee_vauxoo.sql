-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

--	Task : Crea una base de datos llamada "employee_employee". Crea una tabla llamada "employee" con los campos "id", "first_name", "last_name".
--	Create database employee_employee
CREATE DATABASE employee_employee;
USE employee_employee;

--	Task : Crea una tabla "employee_department" con los campos "id", "name", "description".
--	Create table employee_department
CREATE TABLE employee_department (
  id integer PRIMARY KEY,
  name varchar(60),
  description varchar(150)
);

--	Task : Inserta 6 departamentos
--	Insert data into table employee_department
INSERT INTO employee_department (id, name, description) VALUES
(1, 'General management', 'General management'),
(2, 'Operations address', 'Commercial address'),
(3, 'Purchasing', 'Operations'),
(4, 'Customer Service', 'Customer Service'),
(5, 'Administration', 'Administration'),
(6, 'Warehouse', 'Warehouse');

--	Create table employee
CREATE TABLE employee (
  id integer PRIMARY KEY,
  first_name varchar(60),
  last_name varchar(150),
  --	Task : Haz los cambios necesarios en la base de datos para poder asignarle a los empleados su respectivo departamento.
  --		Un empleado está asignado a un solo departamento.
  department_id integer REFERENCES employee_department (id),
  --	Task : Haz los cambios necesarios en la base de datos para poder asignar a los empleados un jefe.
  boss_id integer REFERENCES employee (id)
);

--	Task : Inserta 4 empleados
--	Insert data into table  employee
INSERT INTO employee (id, first_name, last_name, department_id, boss_id) VALUES
(1, 'Manríquez', 'Acevedo', 6, 5),
(2, 'José', 'Ferreira', 2, 1),
(3, 'Pablo', 'García', 4, 1),
(4, 'Jesús', 'Forment', 5, 1);

--	Create table employee_hobby
CREATE TABLE employee_hobby (
  id integer PRIMARY KEY,
  name varchar(60),
  description varchar(150)
);

--	Task : Crea una tabla llamada "employee_hobby" con los campos "id", "name", "description".
--	Create table employees_hobbies
CREATE TABLE employees_hobbies (
	--	Un empleado puede tener muchos pasatiempos. Y muchos pasatiempos pueden pertenecer a muchos empleados.
  employee_id integer REFERENCES employee (id),
  department_id integer REFERENCES employee_department (id),
  PRIMARY KEY (employee_id, department_id)
);

--	Task : Inserta 3 pasatiempos
--	Create table employee_hobby
INSERT INTO employee_hobby (id, name, description) VALUES
(1, 'Theater', 'Theater plays'),
(2, 'Video games', 'Playing video games'),
(3, 'Photography', 'Take photos ');

--	Task : asígnale a todos los empleados al menos 2 pasatiempos
--	Insert data into table employees_hobbies
INSERT INTO employees_hobbies (employee_id, department_id) VALUES
(1, 2),
(1, 3),

(2, 3),
(2, 1),

(3, 1),
(3, 2),

(4, 1),
(4, 3);
