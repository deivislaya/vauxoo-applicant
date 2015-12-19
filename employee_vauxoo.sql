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
  id serial NOT NULL,
  name character varying,
  description character varying
);


ALTER TABLE employee_hobby
  ADD CONSTRAINT pkey_hobby PRIMARY KEY (id);

ALTER TABLE employee ADD COLUMN departament_id integer;

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

INSERT INTO employee (first_name, last_name, departament_id) VALUES ('Deivis', 'Laya', 1);
INSERT INTO employee (first_name, last_name, departament_id) VALUES ('Yenifer', 'Santiago', 2);
INSERT INTO employee (first_name, last_name, departament_id) VALUES ('Hernan', 'Neuman', 3);
INSERT INTO employee (first_name, last_name, departament_id) VALUES ('Edgar', 'Camejo', 4);

INSERT INTO employee_hobby (name,description) VALUES ('Cine', 'Peliculas');
INSERT INTO employee_hobby (name,description) VALUES ('Playa', 'Cayo Sombrero');
INSERT INTO employee_hobby (name,description) VALUES ('Video Juego', 'Warcraft');

CREATE TABLE employee_hobby_relation (
  id serial NOT NULL,
  employee_id integer,
  hobby_id integer
);

ALTER TABLE employee_hobby_relation
  ADD CONSTRAINT pkey_hobby_rel PRIMARY KEY (id);


INSERT INTO employee_hobby_relation (employee_id, hobby_id) VALUES (1,1);
INSERT INTO employee_hobby_relation (employee_id, hobby_id) VALUES (1,2);
INSERT INTO employee_hobby_relation (employee_id, hobby_id) VALUES (2,1);
INSERT INTO employee_hobby_relation (employee_id, hobby_id) VALUES (2,3);
INSERT INTO employee_hobby_relation (employee_id, hobby_id) VALUES (3,1);
INSERT INTO employee_hobby_relation (employee_id, hobby_id) VALUES (3,3);
INSERT INTO employee_hobby_relation (employee_id, hobby_id) VALUES (4,1);
INSERT INTO employee_hobby_relation (employee_id, hobby_id) VALUES (4,3);


ALTER TABLE employee
   ADD COLUMN jefe_id integer;

ALTER TABLE employee
  ADD CONSTRAINT fky_jefe FOREIGN KEY (jefe_id) REFERENCES employee (id)
   ON UPDATE NO ACTION ON DELETE NO ACTION;
CREATE INDEX fki_fky_jefe
  ON employee(jefe_id);

-- ...
