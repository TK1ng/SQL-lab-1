-- 1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(30),
  product_price INTEGER,
  quantity INTEGER
 );

-- 2.  Add 5 orders to the orders table.
    -- Make orders for at least two different people.
    -- person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('222','matrix tee', '20', '5'), 100
('222','black cargo pant', '45', '10'), 450
('100', 'baby yoda crew socks', '10', '20'), 200
('102', 'command line jersey', '35', '2'), 70
('678', 'koffee and code mug', '10', '3'); 30


-- 5. Select all the records from the orders table.
SELECT * FROM orders;

-- 6. Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- 7. Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;

-- 8. Calculate the total order price by a single person_id.
SELECT person_id, SUM(product_price * quantity) FROM orders
GROUP BY person_id;