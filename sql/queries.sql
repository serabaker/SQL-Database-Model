-- Queries go here
Retrieve the customers with a Gmail email address;

select * from customers
where email like '%gmail%';

Retrieve the customers under 25 years old;
select first_name, last_name, age(date_of_birth) from customers 
where customers.date_of_birth >
'1996-01-01';

Retrieve customer ID 2s orders;

select * from orders where customer_id =2;


Retrieve customer ID 2s purchased products:

select * from purchased_products where order_id = 2;


Retrieve all the products under a the "Home Office" category
select products.* from products where category_name like '%Home_Office%';

Retrieve all the orders that have a product which belongs to the "Kitchen" category;

select orders.* from orders
join products on products.category_name = orders.category_name
where orders.category_name like'%Kitchen%';

