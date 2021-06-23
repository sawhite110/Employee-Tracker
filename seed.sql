DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;
USE employee_tracker_db;

CREATE TABLE employee(
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT default 0,
  manager_id INT default 0,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES manager(id)
);
CREATE TABLE role(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT default 0,
  PRIMARY KEY (id),
  FOREIGN KEY (department_id) REFERENCES department(id)
);
CREATE TABLE department(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO employee (first_name, last_name)
VALUES ('Stevenson', 'White II');

INSERT INTO employee (first_name, last_name)
VALUES ('Sam', 'Coffee');

INSERT INTO employee (first_name, last_name)
VALUES ('Kevin', 'Clean');

INSERT INTO employee (first_name, last_name)
VALUES ('Beth', 'Wright');

INSERT INTO role (title, salary)
VALUES ('Full Stack Developer', '60000');

INSERT INTO role (title, salary)
VALUES ('Sales Manager', '60000');

INSERT INTO role (title, salary)
VALUES ('Coordinator', '60000');

INSERT INTO role (title, salary)
VALUES ('Front End Developer', '60000');

INSERT INTO department (dept_name)
VALUES ('Engineering');

INSERT INTO department (dept_name)
VALUES ('Sales');

INSERT INTO department (dept_name)
VALUES ('Humam Resources');

INSERT INTO department (dept_name)
VALUES ('Engineering');