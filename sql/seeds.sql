-- Seed data goes here
INSERT INTO customers (id,first_name,last_name, email, date_of_birth, address_id, order_id) VALUES ( 1,'Brit', 'Sosa', 'trex@gmail.com', '1995-04-03', 1, 1);

INSERT INTO customers (id,  first_name, last_name, email, date_of_birth, address_id, order_id) VALUES (2, 'Kev', 'Stone', 'teddybear4u@yahoo.com', '1990-02-18', 2, 2);

INSERT INTO customers (id, first_name, last_name,email, date_of_birth, address_id, order_id) VALUES (3, 'Mad', 'Maxx', 'thunderboltxxx@gmail.com', '2003-03-03', 3, 3);
INSERT INTO customers (id, first_name,last_name, email, date_of_birth, address_id, order_id) VALUES (4,'Zo', 'Bizno', 'kittykittybangbang@gmail.com', '2004-09-30',4, 4);


INSERT INTO addresses (id, street_name ,city, state, zipcode, customer_id) VALUES (1, '6232 Guiseppe Courts', 'Jamartown', 'Maryland', '49028', 1);
INSERT INTO addresses (id, street_name ,city, state, zipcode, customer_id) VALUES (2, '704 Cecil Mountain', 'West Jon', 'South Dakota', '91578', 2);
INSERT INTO addresses (id, street_name ,city, state, zipcode, customer_id) VALUES (3, '41613 Huel Ranch', 'Loycefort', 'Florida', '12109', 3);
INSERT INTO addresses (id, street_name ,city, state, zipcode, customer_id) VALUES (4, '1397 Braden Shoals', 'New Karine', 'New York', '03913', 4);



INSERT INTO categories(id, category_name ) VALUES (1,'Kitchen');
INSERT INTO categories(id,category_name ) VALUES (2,'Artwork');
INSERT INTO categories(id, category_name )VALUES ( 3,'Home_Office');
INSERT INTO categories(id, category_name ) VALUES ( 4,'Lifestyle');


INSERT INTO products (id, item_desc, size, color, price, qty, category_name ) VALUES (1, 'bambo picture','medium', 'black/green', 30 , '1', 'Artwork');
INSERT INTO products (id, item_desc, size, color, price, qty, category_name ) VALUES (2,',lime green placemats', '8 x 10','green', 80, '8', 'Kitchen');
INSERT INTO products(id, item_desc, size, color, price, qty, category_name ) VALUES (3, 'palmistry hanging', '2 x 2', 'brown', 25, '2', 'Artwork');
INSERT INTO products (id,item_desc, size, color, price, qty, category_name  ) VALUES(4,'leather yoga mat','6 x 2', 'tan' , 120, '4', 'Lifestyle');
INSERT INTO products (id,item_desc, size, color, price, qty, category_name) VALUES(5,'matte green desk','6 x 2', 'tan' , 120, '4', 'Home_Office');

INSERT INTO orders (id, first_name, last_name, product_ordered,Order_date, Total, category_name,Customer_id ) VALUES (1,'Brit', 'Sosa' ,'bamboo picture', '2020-09-07', 30, 'Artwork', 1);
INSERT INTO orders (id, first_name, last_name, product_ordered, Order_date,Total, category_name, Customer_id) VALUES (2,'Kev', 'Stone','lime green placemats' ,'2020-03-04', 80, 'Kitchen', 2);
INSERT INTO orders (id,first_name, last_name, product_ordered, Order_date, Total,  category_name, Customer_id ) VALUES (3,'Mad', 'Maxx' ,'palmistry hanging', '2020-09-09', 25, 'Artwork', 3);
INSERT INTO orders (id,first_name,last_name, product_ordered, Order_date, Total,  category_name, Customer_id ) VALUES (4, 'Zo','Bizno','leather yoga mat', '2020-10-17', 120,'Lifestyle', 4);
INSERT INTO orders (id, first_name, last_name, product_ordered, Order_date,Total, category_name, Customer_id) VALUES (5,'Kev', 'Stone','black mouse pad' ,'2020-03-04',  15, 'Home_Office', 2);

INSERT INTO purchased_products (id, first_name, last_name, product_ordered, order_id,Customer_id) VALUES (1,'Brit', 'Sosa',' black mouse pad',1, 2);
INSERT INTO purchased_products (id, first_name, last_name, product_ordered, order_id,Customer_id) VALUES (2,'Kev', 'Stone', 'black mouse pad',2, 2);
INSERT INTO purchased_products (id, first_name, last_name, product_ordered, order_id,Customer_id) VALUES (3,'Mad', 'Maxx','palmistry hanging',3, 3);
INSERT INTO purchased_products (id, first_name, last_name, product_ordered, order_id,Customer_id) VALUES (4,'Zo', 'Bizno','leather yoga mat',4, 4);
INSERT INTO purchased_products (id, first_name, last_name, product_ordered, order_id,Customer_id) VALUES (5,'Kev', 'Stone', 'palmistry hanging',2, 2);



SELECT setval('customers_id_seq', (SELECT MAX(id) FROM customers));
SELECT setval('categories_id_seq', (SELECT MAX(id) FROM categories));
SELECT setval('products_id_seq', (SELECT MAX(id) FROM products));
SELECT setval
('orders_id_seq', (SELECT MAX(id) FROM orders));
SELECT setval
('addresses_id_seq', (SELECT MAX(id) FROM addresses));
SELECT setval
('purchased_products_id_seq', (SELECT MAX(id) FROM purchased_products))

