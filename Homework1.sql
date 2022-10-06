--Question 1 - How many actors are there with the last name Wahlberg

SELECT first_name,last_name
FROM actor
WHERE last_name = 'Wahlberg';

--Question 2 - How many payments were made between $3.99 and $5.99

SELECT count(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--Question 3 what film does the store have the most of
select film_id, count(inventory_id)
from inventory
group by film_id
order by film_id asc; 

--Question 4 how many customers have last name "William"
SELECT first_name,last_name
FROM customer
WHERE last_name = 'William';

--Question 5 - What store employee sold the most rentals
select count(rental_id), staff_id
from rental 
group by staff_id;

--Question 6
select count(distinct district)
from address;

--Question 7 - what Film has the most actors in it
select film_id, count(actor_id)
from film_actor
group by film_id
order by count(actor_id)desc;

--Question 8 - from store ID 1, how many customers have a last name ending with 'es'
select store_id, first_name, last_name
from customer
where store_id = '1' and last_name like '%es';

--Question 9 - How many payment amounts have had a number of rentals above 250, 
--for customers with id's between 380 and 430
--ask aboout this
SELECT  	amount, COUNT(rental_id)
FROM    	payment
WHERE   	customer_id BETWEEN 380 and 430
GROUP BY    amount
HAVING 		COUNT(rental_id) > 250;


--Question 10 Within the film category, how many ratings are there and which has the most movies total
select rating, count(rating)
from film
group by rating
order by count(rating)desc;


