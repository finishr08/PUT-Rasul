-- Create Database
CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

-- Categories Table
CREATE TABLE IF NOT EXISTS Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Products Table
CREATE TABLE IF NOT EXISTS Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    quantity_available INT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Customers Table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    phone_number VARCHAR(20)
);

-- Orders Table
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Order_Items Table
CREATE TABLE IF NOT EXISTS Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Reviews Table
CREATE TABLE IF NOT EXISTS Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5),
    review_text TEXT,
    review_date DATE NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


-- database data for all tables


USE ecommerce_db;

-- Describe Categories Table
DESC Categories;

-- Insert initial data into Categories
INSERT INTO Categories (category_name) VALUES 
('Electronics'), 
('Books'), 
('Clothing');

-- Describe Customers Table
DESC Customers;

-- Insert initial data into Customers
INSERT INTO Customers (first_name, last_name, email, password, address, city, state, country, postal_code, phone_number) VALUES 
('John', 'Doe', 'john.doe@example.com', 'password123', '123 Main St', 'Anytown', 'Anystate', 'USA', '12345', '123-456-7890'),
('Jane', 'Smith', 'jane.smith@example.com', 'password123', '456 Elm St', 'Othertown', 'Otherstate', 'USA', '67890', '098-765-4321');

-- Describe Products Table
DESC Products;

-- Insert initial data into Products
INSERT INTO Products (product_name, description, price, quantity_available, category_id) VALUES 
('Smartphone', 'A high-end smartphone', 699.99, 50, 1),
('Laptop', 'A powerful laptop', 999.99, 30, 1),
('Novel', 'A thrilling novel', 14.99, 100, 2),
('T-shirt', 'A cotton t-shirt', 9.99, 200, 3);

-- Describe Orders Table
DESC Orders;

-- Insert initial data into Orders
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES 
(1, '2024-05-01', 714.98), 
(2, '2024-05-02', 14.99);

-- Describe Order_Items Table
DESC Order_Items;

-- Insert initial data into Order_Items
INSERT INTO Order_Items (order_id, product_id, quantity, unit_price) VALUES 
(1, 1, 1, 699.99),
(1, 2, 1, 999.99),
(2, 3, 1, 14.99);

-- Describe Reviews Table
DESC Reviews;

-- Insert initial data into Reviews
INSERT INTO Reviews (product_id, customer_id, rating, review_text, review_date) VALUES 
(1, 1, 5, 'Amazing smartphone!', '2024-05-03'),
(3, 2, 4, 'Great read!', '2024-05-04');
