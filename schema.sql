--Create Table
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(20),
  address VARCHAR(255)
);

CREATE TABLE Suppliers (
  supplier_id INT PRIMARY KEY,
  supplier_name VARCHAR(255) NOT NULL,
  contact_email VARCHAR(255),
  contact_phone VARCHAR(20)
);

CREATE TABLE Guns (
  gun_id INT PRIMARY KEY,
  gun_name VARCHAR(255) NOT NULL,
  gun_type VARCHAR(100),
  gun_price DECIMAL(10, 2) NOT NULL,
  supplier_id INT,
  FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  gun_id INT,
  order_date DATE,
  quantity INT NOT NULL,
  total_price DECIMAL(10, 2),
  status VARCHAR(50),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (gun_id) REFERENCES Guns(gun_id)
);

--Insert into Suppliers
INSERT INTO Suppliers (supplier_id, supplier_name, contact_email, contact_phone) VALUES
(1, 'Colt Manufacturing', 'info@colt.com', '555-9876'),
(2, 'Smith & Wesson', 'sales@smith-wesson.com', '555-6543'),
(3, 'Glock Ges.m.b.H', 'support@glock.com', '555-3210'),
(4, 'Sig Sauer', 'info@sigsauer.com', '555-7412');

--Insert into Customers
INSERT INTO Customers (customer_id, name, email, phone, address) VALUES
(1, 'John Wick', 'john.wick@example.com', '555-1234', 'Continental Hotel, NY'),
(2, 'Sarah Connor', 'sarah.connor@example.com', '555-5678', 'Los Angeles, CA'),
(3, 'Ellen Ripley', 'ellen.ripley@example.com', '555-4321', 'Nostromo Spaceship'),
(4, 'James Bond', 'james.bond@example.com', '555-8765', 'MI6 Headquarters, London'),
(5, 'Frank Castle', 'frank.castle@example.com', '555-1357', 'Hell’s Kitchen, NY');

--Insert into Guns with prices in PHP
INSERT INTO Guns (gun_id, gun_name, gun_type, gun_price, supplier_id) VALUES
(1, 'Colt M1911', 'Pistol', 45000.00, 1),    -- Price in PHP
(2, 'Smith & Wesson Model 29', 'Revolver', 52000.00, 2),
(3, 'Glock 17', 'Pistol', 48000.00, 3),
(4, 'Sig Sauer P226', 'Pistol', 55000.00, 4),
(5, 'Colt AR-15', 'Rifle', 120000.00, 1);

-- Insert into Orders with total price in PHP
INSERT INTO Orders (order_id, customer_id, gun_id, order_date, quantity, total_price, status) VALUES
(1, 1, 1, '2024-09-08', 1, 45000.00, 'Pending'), 
(2, 2, 3, '2024-09-07', 2, 96000.00, 'Shipped'), 
(3, 3, 4, '2024-09-06', 1, 55000.00, 'Delivered'), 
(4, 4, 2, '2024-09-05', 1, 52000.00, 'Pending'), 
(5, 5, 5, '2024-09-04', 1, 120000.00, 'Delivered');
