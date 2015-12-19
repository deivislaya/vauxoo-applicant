-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
  id serial NOT NULL,
  first_name character varying,
  last_name character varying
);

ALTER TABLE employee
  ADD CONSTRAINT pkey_id PRIMARY KEY (id);

CREATE TABLE employee_department (
  id serial NOT NULL,
  name character varying,
  description character varying
);

ALTER TABLE employee_department
  ADD CONSTRAINT pkey_departament PRIMARY KEY (id);

CREATE TABLE employee_hobby (

);


ALTER TABLE employee
  ADD CONSTRAINT fkey_departament FOREIGN KEY (departament_id) REFERENCES employee_department (id)
   ON UPDATE CASCADE ON DELETE CASCADE;
CREATE INDEX fki_fkey_departament
  ON employee(departament_id);


INSERT INTO employee_department (name,description) VALUES ('Administracion', 'Administracion Financiera');
INSERT INTO employee_department (name,description) VALUES ('Compras', 'Compras de oficina');
INSERT INTO employee_department (name,description) VALUES ('Presupesto', 'Proyeccion de Presupuesto Anual');
INSERT INTO employee_department (name,description) VALUES ('Produccion', 'Desarrollo de Nuevos Productos');
INSERT INTO employee_department (name,description) VALUES ('Talento Humano', 'Administracion de Personal');
INSERT INTO employee_department (name,description) VALUES ('Tecnologia', 'Administracion de Computadores');

INSERT INTO employee (first_name, last_name) VALUES ('Deivis', 'Laya');
INSERT INTO employee (first_name, last_name) VALUES ('Yenifer', 'Santiago');
INSERT INTO employee (first_name, last_name) VALUES ('Hernan', 'Neuman');
INSERT INTO employee (first_name, last_name) VALUES ('Edgar', 'Camejo');

-- ...
