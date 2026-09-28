CREATE TABLE categories(
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE tags(
id INT PRIMARY KEY,
name VARCHAR(30)
);

CREATE TABLE notes(
id INT PRIMARY KEY,
user_id INT,
category_id INT,
title VARCHAR(100),
content TEXT,
FOREIGN KEY(user_id) REFERENCES users(id),
FOREIGN KEY(category_id) REFERENCES categories(id)
);
USERS
INSERT INTO users VALUES
(1,'zainab','z@e.com','123'),
(2,'ali','a@e.com','456'),
(3,'zikra','z2@e.com','789');

-- CATEGORIES
INSERT INTO categories VALUES
(1,'Study','Study'),(2,'Work','Work'),(3,'Personal','Personal');

-- TAGS
INSERT INTO tags VALUES
(1,'Important'),(2,'SQL'),(3,'NextJS'),(4,'Urgent');

-- NOTES
INSERT INTO notes VALUES
(1,1,1,'SQL','Learn SQL'),
(2,1,2,'Work','Task'),
(3,2,1,'NextJS','Practice'),
(4,3,3,'Personal','Books');

-- JOIN
SELECT e.first_name,d.department_name
FROM employees e JOIN department d
ON e.department_id=d.department_id;

SELECT e.first_name,a.status
FROM attendance a JOIN employees e
ON a.employee_id=e.employee_id;

SELECT e.first_name,lr.leave_type
FROM leave_request lr JOIN employees e
ON lr.employee_id=e.employee_id
WHERE lr.status='Approved';