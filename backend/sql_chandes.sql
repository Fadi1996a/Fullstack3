-- Create the "products" table
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Create the "customers" table
CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Create the "orders" table
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER NOT NULL REFERENCES customers (id),
  order_date DATE NOT NULL,
  total_amount DECIMAL(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Create the "order_items" table
CREATE TABLE order_items (
  id SERIAL PRIMARY KEY,
  order_id INTEGER NOT NULL REFERENCES orders (id),
  product_id INTEGER NOT NULL REFERENCES products (id),
  quantity INTEGER NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);


-- Insert sample products
INSERT INTO products (name, price, description) VALUES
  ('Product A', 19.99, 'Description for Product A'),
  ('Product B', 9.99, 'Description for Product B'),
  ('Product C', 29.99, 'Description for Product C');

-- Insert sample customers
INSERT INTO customers (name, email) VALUES
  ('John Doe', 'john@example.com'),
  ('Jane Smith', 'jane@example.com');

-- Insert sample orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
  (1, '2023-05-15', 49.98),
  (2, '2023-05-16', 19.99),
  (1, '2023-05-17', 59.98);

-- Insert sample order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
  (1, 1, 2, 39.98),
  (1, 2, 1, 9.99),
  (2, 3, 1, 29.99),
  (3, 1, 3, 59.97);


-- Insert more sample products
INSERT INTO products (name, price, description) VALUES
  ('Product D', 14.99, 'Description for Product D'),
  ('Product E', 24.99, 'Description for Product E'),
  ('Product F', 39.99, 'Description for Product F');

-- Insert more sample customers
INSERT INTO customers (name, email) VALUES
  ('Sarah Johnson', 'sarah@example.com'),
  ('Michael Brown', 'michael@example.com');

-- Insert more sample orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
  (3, '2023-05-18', 29.98),
  (4, '2023-05-18', 74.97);

-- Insert more sample order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
  (4, 1, 2, 39.98),
  (4, 3, 1, 34.99),
  (5, 2, 3, 29.97),
  (5, 3, 2, 49.98);


-- Insert more sample products
INSERT INTO products (name, price, description) VALUES
  ('Product G', 19.99, 'Description for Product G'),
  ('Product H', 14.99, 'Description for Product H'),
  ('Product I', 29.99, 'Description for Product I');

-- Insert more sample customers
INSERT INTO customers (name, email) VALUES
  ('Emily Davis', 'emily@example.com'),
  ('Daniel Wilson', 'daniel@example.com');

-- Insert more sample orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
  (5, '2023-05-18', 49.98),
  (6, '2023-05-18', 84.97),
  (3, '2023-05-17', 94.96);

-- Insert more sample order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
  (6, 2, 1, 14.99),
  (7, 3, 2, 59.98),
  (7, 4, 3, 44.97),
  (8, 1, 2, 39.98),
  (8, 5, 1, 24.99),
  (8, 6, 1, 29.99),
  (9, 4, 3, 44.97),
  (9, 7, 2, 39.98),
  (9, 9, 1, 29.99);

-- Insert more sample products
INSERT INTO products (name, price, description) VALUES
  ('Product J', 9.99, 'Description for Product J'),
  ('Product K', 19.99, 'Description for Product K'),
  ('Product L', 29.99, 'Description for Product L');

-- Insert more sample customers
INSERT INTO customers (name, email) VALUES
  ('Sophia Thompson', 'sophia@example.com'),
  ('Benjamin Martinez', 'benjamin@example.com');

-- Insert more sample orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
  (7, '2023-05-16', 29.99),
  (8, '2023-05-15', 109.95),
  (9, '2023-05-15', 74.97);

-- Insert more sample order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
  (10, 11, 2, 19.98),
  (10, 12, 1, 14.99),
  (11, 9, 1, 29.99),
  (11, 11, 3, 59.97),
  (12, 8, 2, 39.98),
  (12, 10, 1, 29.99),
  (12, 13, 2, 59.98),
  (13, 12, 1, 14.99),
  (13, 14, 1, 29.99);

-- Insert more sample products
INSERT INTO products (name, price, description) VALUES
  ('Product M', 14.99, 'Description for Product M'),
  ('Product N', 19.99, 'Description for Product N'),
  ('Product O', 24.99, 'Description for Product O');

-- Insert more sample customers
