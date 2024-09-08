Table Customers {
  customer_id INT [primary key]
  name VARCHAR
  email VARCHAR
  phone VARCHAR
  address VARCHAR
}

Table Guns {
  gun_id INT [primary key]
  gun_name VARCHAR
  gun_type VARCHAR
  gun_price DECIMAL
  supplier_id INT
}

Table Suppliers {
  supplier_id INT [primary key]
  supplier_name VARCHAR
  contact_email VARCHAR
  contact_phone VARCHAR
}

Table Orders {
  order_id INT [primary key]
  customer_id INT
  gun_id INT
  order_date DATE
  quantity INT
  total_price DECIMAL
  status VARCHAR
}

Ref: Orders.customer_id > Customers.customer_id
Ref: Orders.gun_id > Guns.gun_id
Ref: Guns.supplier_id > Suppliers.supplier_id
