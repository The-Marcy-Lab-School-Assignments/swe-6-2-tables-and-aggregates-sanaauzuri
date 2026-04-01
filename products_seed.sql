DROP DATABASE IF EXISTS products_db;
CREATE DATABASE products_db;
\c products_db

CREATE TABLE products (
  product_id  SERIAL        PRIMARY KEY,
  name        TEXT          NOT NULL,
  category    TEXT          NOT NULL,
  brand       TEXT          NOT NULL,
  price       NUMERIC(6,2)  NOT NULL,
  stock       INT           NOT NULL,
  rating      NUMERIC(3,1)  NOT NULL
);

INSERT INTO products (name, category, brand, price, stock, rating) VALUES
  ('Wireless Headphones',  'electronics', 'Sony',               79.99,  45, 4.5),
  ('Running Shoes',        'clothing',    'Nike',               89.99,  30, 4.7),
  ('Coffee Maker',         'home',        'Breville',          129.99,  20, 4.8),
  ('Yoga Mat',             'sports',      'Lululemon',          68.00,  55, 4.6),
  ('Mechanical Keyboard',  'electronics', 'Logitech',          129.99,  25, 4.4),
  ('Denim Jacket',         'clothing',    'Levi''s',            59.99,  40, 4.2),
  ('Air Purifier',         'home',        'Dyson',             249.99,  15, 4.7),
  ('Protein Powder',       'sports',      'Optimum Nutrition',  54.99,  60, 4.3),
  ('Bluetooth Speaker',    'electronics', 'JBL',                49.99,  70, 4.6),
  ('Hiking Boots',         'clothing',    'Merrell',           119.99,  22, 4.5),
  ('Stand Mixer',          'home',        'KitchenAid',        349.99,  10, 4.9),
  ('Resistance Bands',     'sports',      'TRX',                29.99,  90, 4.1),
  ('Laptop Stand',         'electronics', 'Rain Design',        39.99,  35, 4.3),
  ('Fleece Pullover',      'clothing',    'Patagonia',          99.99,  28, 4.6),
  ('Vacuum Cleaner',       'home',        'Dyson',             399.99,   8, 4.8),
  ('USB-C Hub',            'electronics', 'Anker',              29.99,  80, 4.2);
