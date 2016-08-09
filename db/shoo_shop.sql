DROP TABLE orders;

CREATE TABLE orders (
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
address VARCHAR(255),
size INT2,
quantity INT2
);