# MySQL Basics and Queries

## Overview

This document provides a comprehensive guide to basic MySQL concepts and query examples. It covers the creation, manipulation, and retrieval of data in a MySQL database, making it a valuable resource for beginners and professionals alike.

## MySQL Database Concepts

### 1. MySQL Database

A structured collection of data managed by MySQL.

```sql
CREATE DATABASE example_db;
```

_Creates a new database named `example_db`._

### 2. MySQL Create DB

The `CREATE DATABASE` command creates a new database.

```sql
CREATE DATABASE example_db;
```

_Creates a new database named `example_db`._

### 3. MySQL Drop DB

The `DROP DATABASE` command deletes an existing database and its data.

```sql
DROP DATABASE example_db;
```

_Deletes the database named `example_db`._

## Table Management

### 4. MySQL Create Table

The `CREATE TABLE` command creates a new table within a database.

```sql
CREATE TABLE example_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

_Creates a table named `example_table` with `id`, `name`, and `created_at` columns._

### 5. MySQL Drop Table

The `DROP TABLE` command deletes an existing table and its data.

```sql
DROP TABLE example_table;
```

_Deletes the table named `example_table`._

### 6. MySQL Alter Table

The `ALTER TABLE` command modifies the structure of an existing table.

```sql
ALTER TABLE example_table ADD age INT;
ALTER TABLE example_table DROP COLUMN age;
ALTER TABLE example_table MODIFY COLUMN name VARCHAR(150);
```

_Adds a column `age`, drops the column `age`, and modifies the column `name` in the `example_table`._

### 7. MySQL Constraints

Constraints enforce data integrity and limit the type of data that can be stored in a table.

```sql
CREATE TABLE example_table (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

_Defines various constraints: `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `CHECK`, and `DEFAULT`._

## Column Constraints

### 8. MySQL Not Null

Ensures a column cannot have a `NULL` value.

```sql
CREATE TABLE example_table (
    name VARCHAR(100) NOT NULL
);
```

_Ensures the `name` column cannot have `NULL` values._

### 9. MySQL Unique

Ensures all values in a column are unique.

```sql
CREATE TABLE example_table (
    email VARCHAR(100) UNIQUE
);
```

_Ensures all values in the `email` column are unique._

### 10. MySQL Primary Key

Uniquely identifies each row in a table.

```sql
CREATE TABLE example_table (
    id INT PRIMARY KEY
);
```

_Defines the `id` column as the primary key._

### 11. MySQL Foreign Key

Creates a relationship between two tables.

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```

_Defines a foreign key in the `orders` table referencing the `customer_id` in the `customers` table._

### 12. MySQL Check

Ensures values in a column satisfy a specific condition.

```sql
CREATE TABLE example_table (
    age INT CHECK (age >= 18)
);
```

_Ensures the `age` column values are 18 or older._

### 13. MySQL Default

Assigns a default value to a column if no value is specified.

```sql
CREATE TABLE example_table (
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

_Sets a default value for the `created_at` column._

### 14. MySQL Create Index

Improves the speed of data retrieval operations.

```sql
CREATE INDEX idx_name ON example_table (name);
```

_Creates an index on the `name` column._

### 15. MySQL Auto Increment

Automatically generates a unique number for each new row.

```sql
CREATE TABLE example_table (
    id INT AUTO_INCREMENT PRIMARY KEY
);
```

_Automatically generates unique values for the `id` column._

### 16. MySQL Dates

Supports several date and time data types.

```sql
CREATE TABLE example_table (
    created_at DATE,
    updated_at DATETIME,
    event_time TIME
);
```

_Defines columns for date, datetime, and time values._

### 17. MySQL Views

A virtual table based on the result set of an SQL query.

```sql
CREATE VIEW example_view AS
SELECT name, email FROM customers WHERE active = 1;
```

_Creates a view named `example_view` that selects active customers._

## Data Retrieval and Manipulation

### 18. MySQL SQL

SQL is used to manage and manipulate relational databases.

```sql
SELECT * FROM example_table;
```

_Retrieves all records from the `example_table`._

### 19. MySQL SELECT

Retrieves data from a database.

```sql
SELECT name, email FROM example_table;
```

_Selects the `name` and `email` columns from the `example_table`._

### 20. MySQL WHERE

Filters records based on specified conditions.

```sql
SELECT * FROM example_table WHERE age > 18;
```

_Retrieves records where `age` is greater than 18._

### 21. MySQL AND, OR, NOT

Combines multiple conditions in a `WHERE` clause.

```sql
SELECT * FROM example_table WHERE age > 18 AND city = 'New York';
SELECT * FROM example_table WHERE age > 18 OR city = 'New York';
SELECT * FROM example_table WHERE NOT city = 'New York';
```

_Combines conditions using `AND`, `OR`, and `NOT` operators._

### 22. MySQL ORDER BY

Sorts the result set by one or more columns.

```sql
SELECT * FROM example_table ORDER BY name ASC;
```

_Sorts the results by the `name` column in ascending order._

### 23. MySQL INSERT INTO

Adds new records to a table.

```sql
INSERT INTO example_table (name, email) VALUES ('John Doe', 'john@example.com');
```

_Inserts a new record into the `example_table`._

### 24. MySQL NULL Values

Represents a missing or undefined value.

```sql
INSERT INTO example_table (name, email) VALUES ('Jane Doe', NULL);
```

_Inserts a record with a `NULL` value for the `email` column._

### 25. MySQL UPDATE

Modifies existing records in a table.

```sql
UPDATE example_table SET email = 'jane@example.com' WHERE name = 'Jane Doe';
```

_Updates the `email` of `Jane Doe` in the `example_table`._

### 26. MySQL DELETE

Removes records from a table.

```sql
DELETE FROM example_table WHERE name = 'Jane Doe';
```

_Deletes the record with the name `Jane Doe` from the `example_table`._

### 27. MySQL LIMIT

Restricts the number of rows returned by a query.

```sql
SELECT * FROM example_table LIMIT 10;
```

_Retrieves the first 10 rows from the `example_table`._

### 28. MySQL MIN and MAX

Returns the smallest and largest values in a column.

```sql
SELECT MIN(age) FROM example_table;
SELECT MAX(age) FROM example_table;
```

_Retrieves the smallest and largest values from the `age` column._

### 29. MySQL COUNT, AVG, SUM

Performs calculations on a set of values.

```sql
SELECT COUNT(*) FROM example_table;
SELECT AVG(age) FROM example_table;
SELECT SUM(salary) FROM example_table;
```

_Counts the number of rows, calculates the average age, and sums the salaries in the `example_table`._

### 30. MySQL LIKE

Pattern matching in string searches.

```sql
SELECT * FROM example_table WHERE name LIKE 'J%';
```

_Retrieves records where the `name` starts with 'J'._

### 31. MySQL Wildcards

Used with the `LIKE` operator for flexible pattern matching.

```sql
SELECT * FROM example_table WHERE name LIKE 'J%';
SELECT * FROM example_table WHERE name LIKE '_a%';
```

_Uses `%` for zero or more characters and `_` for a single character.\_

### 32. MySQL IN

Allows specifying multiple values in a `WHERE` clause.

```sql
SELECT * FROM example_table WHERE city IN ('New York', 'Los Angeles', 'Chicago');
```

_Retrieves records where the `city` is either 'New York', 'Los Angeles', or 'Chicago'._

### 33. MySQL BETWEEN

Filters data within a specified range.

```sql
SELECT * FROM example_table WHERE age BETWEEN 18 AND 30;
```

_Retrieves records where `age` is between 18 and 30._

### 34. MySQL Aliases

Renames columns or tables for readability.

```sql
SELECT name AS customer_name, email AS customer_email FROM example_table AS customers;
```

_Renames the `name` and `email` columns and the `example_table` for readability._

## Joins

### 35. MySQL Joins

Combines rows from two or more tables based on related columns.

```sql
SELECT orders.order_id,

 customers.name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id;
```

_Joins the `orders` and `customers` tables to combine related data._

### 36. MySQL INNER JOIN

Returns rows with matching values in both tables.

```sql
SELECT * FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;
```

_Retrieves records with matching `customer_id` in both `orders` and `customers` tables._

### 37. MySQL LEFT JOIN

Returns all rows from the left table and matching rows from the right table.

```sql
SELECT * FROM orders
LEFT JOIN customers ON orders.customer_id = customers.customer_id;
```

_Retrieves all records from `orders` and matching records from `customers`._

### 38. MySQL RIGHT JOIN

Returns all rows from the right table and matching rows from the left table.

```sql
SELECT * FROM orders
RIGHT JOIN customers ON orders.customer_id = customers.customer_id;
```

_Retrieves all records from `customers` and matching records from `orders`._

### 39. MySQL CROSS JOIN

Returns the Cartesian product of the two tables.

```sql
SELECT * FROM table1
CROSS JOIN table2;
```

_Combines all rows from `table1` with all rows from `table2`._

### 40. MySQL Self Join

Joins a table to itself to query hierarchical data or related rows within the same table.

```sql
SELECT a.name AS employee, b.name AS manager
FROM employees a, employees b
WHERE a.manager_id = b.employee_id;
```

_Joins the `employees` table to itself to find employees and their managers._

---

This README provides a concise overview of essential MySQL concepts and queries, making it a handy reference for database operations. For more detailed information, refer to the MySQL documentation or additional resources.
