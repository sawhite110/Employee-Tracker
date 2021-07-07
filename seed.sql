DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;
USE employee_tracker_db;

CREATE TABLE department(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE role(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT NOT NULL,
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NULL,
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE
);

INSERT INTO department (name)
VALUES ('Engineering');

INSERT INTO department (name)
VALUES ('Sales');

INSERT INTO department (name)
VALUES ('Humam Resources');

INSERT INTO department (name)
VALUES ('IT');

INSERT INTO department (name)
VALUES ('Legal');

INSERT INTO role (title, salary, department_id)
VALUES ('Engineer', '80000', 1);

INSERT INTO role (title, salary, department_id)
VALUES ('Sales Manager', '70000', 2);

INSERT INTO role (title, salary, department_id)
VALUES ('Coordinator', '65000', 3);

INSERT INTO role (title, salary, department_id)
VALUES ('Front End Developer', '95000', 4);

INSERT INTO role (title, salary, department_id)
VALUES ('Lawyer', '105000', 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Stevenson', 'White II', 1, 0);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Sam', 'Coffee', 2, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Kevin', 'Clean', 3, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Beth', 'Wright', 4, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('William', 'King', 5, 1);