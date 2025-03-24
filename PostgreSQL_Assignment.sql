-- Active: 1742272089124@@127.0.0.1@5432@bookstore_db
 --------- create books table for db -----------
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(250) NOT NULL,
    author VARCHAR (50) NOT NULL,
    price INT CHECK (price >= 0) NOT NULL,
    stock INT NOT NULL,
    published_year INT NOT NULL
)
 --------- add books table valuse for db -----------

INSERT INTO books (id, title, author, price, stock, published_year) VALUES
(1, 'The Pragmatic Programmer', 'Andrew Hunt', 40.00, 10, 1999),
(2, 'Clean Code', 'Robert C. Martin', 35.00, 5, 2008),
(3, 'You Don''t Know JS', 'Kyle Simpson', 30.00, 8, 2014),
(4, 'Refactoring', 'Martin Fowler', 50.00, 3, 1999),
(5, 'Database Design Principles', 'Jane Smith', 20.00, 0, 2018);

--- ------this commman run show the all books tabile data----------
SELECT * FROM books

 --------- create customers table  for db -----------

CREATE TABLE customers(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(250) NOT NULL,
    email VARCHAR(255) UNIQUE,
   joined_date DATE DEFAULT CURRENT_DATE
)

 --------- add  customers valuse table  for db -----------

INSERT INTO customers (name, email) VALUES
('John Doe', 'john@example.com'),
('Jane Smith', 'jane@example.com');

--- ------this commman run show the all customers tabile data----------

SELECT * FROM customers

 --------- create order table for db -----------

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT CHECK (quantity > 0),
    order_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
)

 --------- add  orders valuse table  for db -----------

INSERT INTO orders (customer_id, book_id, quantity) VALUES
(1, 2, 3),
(2, 1, 1);

--- ------this commman run show the all orders tabile data----------

SELECT * FROM orders
