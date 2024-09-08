--Query Using WHERE Clause
SELECT order_id, gun_id, quantity, total_price, status
FROM Orders
WHERE customer_id = 1;

--Query Using JOIN to Display Orders with Customer and Gun Details
SELECT Orders.order_id, Customers.name AS customer_name, Guns.gun_name, Orders.quantity, Orders.total_price
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
JOIN Guns ON Orders.gun_id = Guns.gun_id;

--Query Using GROUP BY and COUNT
SELECT Customers.name AS customer_name, COUNT(Orders.order_id) AS total_orders
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
GROUP BY Customers.name;

--Query Using GROUP BY and SUM
SELECT Customers.name AS customer_name, SUM(Orders.total_price) AS total_spent
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
GROUP BY Customers.name;

--Query Using JOIN and WHERE
SELECT Orders.order_id, Customers.name AS customer_name, Guns.gun_name, Orders.quantity, Orders.total_price
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
JOIN Guns ON Orders.gun_id = Guns.gun_id
WHERE Orders.status = 'Pending';
