import mysql.connector
from tabulate import tabulate

# Connect to the MySQL database
def connect_to_database():
    try:
        conn = mysql.connector.connect(
            host='127.0.0.1',
            user='root',
            password='Mustafa@786',
            database='ecommerce_db'
        )
        print("Connected to the database!")
        return conn
    except mysql.connector.Error as e:
        print("Error connecting to the database:", e)
        return None

# Get list of tables in the database
def get_tables(conn):
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("SHOW TABLES")
            tables = [table[0] for table in cursor.fetchall()]
            cursor.close()
            return tables
        except mysql.connector.Error as e:
            print("Error fetching tables:", e)
            return []
    else:
        print("Not connected to the database!")
        return []

# Execute a query to retrieve all columns from the specified table
def execute_query(conn, table_name):
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute(f"SELECT * FROM {table_name}")
            rows = cursor.fetchall()
            cursor.close()
            return rows, cursor
        except mysql.connector.Error as e:
            print("Error executing query:", e)
            return None, None
    else:
        print("Not connected to the database!")
        return None, None

# Print query results in a table format
def print_results(cursor, rows):
    if rows:
        headers = [f"\033[1m{i[0]}\033[0m" for i in cursor.description]  # Bold syntax for column names
        print(tabulate(rows, headers=headers, tablefmt="grid"))
    else:
        print("No data returned.")

# Print list of tables
def print_tables(tables):
    if tables:
        print("Tables in the database:")
        for table in tables:
            print(table)
    else:
        print("No tables found.")

# Example usage
def main():
    # Connect to the database
    conn = connect_to_database()

    while True:
        # Get list of tables
        tables = get_tables(conn)
        print_tables(tables)

        # Get user input for table name
        table_name = input("Enter table name: ")

        # Execute a query to retrieve all columns from the specified table
        if conn:
            rows, cursor = execute_query(conn, table_name)
            print_results(cursor, rows)
        else:
            print("Database connection failed.")

        # Ask user if they want to continue
        choice = input("Do you want to display another table? (y/n): ")
        if choice.lower() != 'y':
            break

    # Close the database connection
    if conn:
        conn.close()
        print("Database connection closed.")

if __name__ == "__main__":
    main()
