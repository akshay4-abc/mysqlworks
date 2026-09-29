use mashup;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO employees VALUES
(1, 'Anjali'),
(2, 'Rohan'),
(3, 'Meena');

CREATE TABLE departments (
    emp_id INT,
    department_name VARCHAR(100)
);

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(4, 'Finance');

SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.id = departments.emp_id;

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.id = departments.emp_id;

SELECT departments.emp_id, departments.department_name, employees.name
FROM departments
LEFT JOIN employees
ON departments.emp_id = employees.id;