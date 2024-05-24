# Ecommerce Database Project

## Overview

This project involves creating and managing an e-commerce database using MySQL and interfacing with it using Python. The project utilizes the `mysql.connector` module to connect MySQL to Python and the `tabulate` module to print data in a table format.

## Tech Stack

- **Python**
- **MySQL Connector**: For connecting MySQL to Python
- **Tabulate**: For displaying data in table format
- **MySQL Database**

## Features

The SQL script defines and initializes a database for an e-commerce platform named `ecommerce_db`. Below are the main features and components of this database:

### Database Structure and Tables

1. **Categories Table**

   - Stores the categories of products.
   - Columns:
     - `category_id`: Unique identifier for each category (Primary Key).
     - `category_name`: Name of the category.

2. **Products Table**

   - Stores details about the products available for sale.
   - Columns:
     - `product_id`: Unique identifier for each product (Primary Key).
     - `product_name`: Name of the product.
     - `description`: Description of the product.
     - `price`: Price of the product.
     - `quantity_available`: Quantity available in stock.
     - `category_id`: References the category of the product (Foreign Key).

3. **Customers Table**

   - Stores customer information.
   - Columns:
     - `customer_id`: Unique identifier for each customer (Primary Key).
     - `first_name`: First name of the customer.
     - `last_name`: Last name of the customer.
     - `email`: Email address of the customer (Unique).
     - `password`: Password for the customer account.
     - `address`: Address of the customer.
     - `city`: City of the customer.
     - `state`: State of the customer.
     - `country`: Country of the customer.
     - `postal_code`: Postal code of the customer.
     - `phone_number`: Phone number of the customer.

4. **Orders Table**

   - Stores order information.
   - Columns:
     - `order_id`: Unique identifier for each order (Primary Key).
     - `customer_id`: References the customer who made the order (Foreign Key).
     - `order_date`: Date when the order was placed.
     - `total_amount`: Total amount for the order.

5. **Order_Items Table**

   - Stores details of products included in each order.
   - Columns:
     - `order_item_id`: Unique identifier for each order item (Primary Key).
     - `order_id`: References the order (Foreign Key).
     - `product_id`: References the product (Foreign Key).
     - `quantity`: Quantity of the product ordered.
     - `unit_price`: Price per unit of the product at the time of order.

6. **Reviews Table**
   - Stores product reviews from customers.
   - Columns:
     - `review_id`: Unique identifier for each review (Primary Key).
     - `product_id`: References the product being reviewed (Foreign Key).
     - `customer_id`: References the customer who wrote the review (Foreign Key).
     - `rating`: Rating given by the customer (1 to 5).
     - `review_text`: Text of the review.
     - `review_date`: Date when the review was submitted.

### Data Initialization

The script inserts initial data into these tables:

- **Categories**:

  - Electronics
  - Books
  - Clothing

- **Customers**:

  - John Doe
  - Jane Smith

- **Products**:

  - Smartphone (Electronics)
  - Laptop (Electronics)
  - Novel (Books)
  - T-shirt (Clothing)

- **Orders**:

  - Order by John Doe
  - Order by Jane Smith

- **Order_Items**:

  - Smartphone and Laptop in John Doe's order
  - Novel in Jane Smith's order

- **Reviews**:
  - Positive review for Smartphone by John Doe
  - Positive review for Novel by Jane Smith

### Features of the Database

1. **Categorization of Products**: Products are categorized for easy navigation and filtering.
2. **Customer Management**: Stores comprehensive details about customers, including personal and contact information.
3. **Order Management**: Tracks orders placed by customers, including the order date and total amount.
4. **Order Details**: Keeps detailed records of items in each order, including quantity and unit price at the time of order.
5. **Product Reviews**: Allows customers to leave reviews and ratings for products, enabling feedback and quality control.
6. **Relational Integrity**: Uses foreign keys to maintain relationships between tables, ensuring data consistency (e.g., product reviews are linked to customers and products).

## Getting Started

### Prerequisites

- Python 3.x
- MySQL server
- Required Python modules:
  - mysql.connector
  - tabulate

### Installation

1. **Clone the repository**:

   ```sh
   git clone https://github.com/yourusername/ecommerce-database.git
   cd ecommerce-database
   ```

2. **Install the required Python packages**:

   ```sh
   pip install mysql-connector-python tabulate
   ```

3. **Set up the MySQL database**:

   - Create a database named `ecommerce_db`.
   - Execute the provided SQL script to create tables and insert initial data.

4. **Run the Python scripts**:
   - Use the Python scripts to interact with the database and display data in tabular format.

### Usage

- **Connecting to the Database**:

  ```python
  import mysql.connector

  conn = mysql.connector.connect(
      host="localhost",
      user="yourusername",
      password="yourpassword",
      database="ecommerce_db"
  )
  cursor = conn.cursor()
  ```

- **Displaying Data in Table Format**:

  ```python
  from tabulate import tabulate

  cursor.execute("SELECT * FROM products")
  rows = cursor.fetchall()
  print(tabulate(rows, headers=["Product ID", "Product Name", "Description", "Price", "Quantity Available", "Category ID"]))
  ```

## Acknowledgements

- Thanks to the developers of `mysql.connector` and `tabulate` for providing the necessary tools to interface with MySQL and display data in a user-friendly format.

---
