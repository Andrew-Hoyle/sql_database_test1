--Week4/Day1/SQL-Homework

--Question 1:
SELECT last_name
from actor
where last_name = 'Wahlberg';

-- How many payments were made between $3.99 and $5.99?
Select amount, count(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99
group by (amount);


--What film does the store have the most of? (search in inventory)

select film_id, count(film_id)
from inventory
group by(film_id)
Order by count(film_id) desc;



--How many customers have the last name ‘William’?
select first_name, count(first_name)
from customer
where first_name = 'William'
group by first_name;

--What store employee (get the id) sold the most rentals?
select count(staff_id)
from payment;



--How many different district names are there?
select count(district)
from address;

select *
from address;


--What film has the most actors in it? (use film_actor table and get film_id)

select film_id, count(*)
from film_actor
group by film_id
Order by count(*)DESC;


--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

Select count(last_name)
from customer
where last_name like '%es';

-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
--  of ids 380-430 - how many had rental amounts larger than 250  -- use payments table

select customer_id, sum(amount)
from payment
Where customer_id between 380 and 430 
group by customer_id
Order by customer_id ASC;


-- Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
select count(rating), film_id
from film
group by film_id
having count(rating) > 0;

