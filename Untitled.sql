-- 1 List the number of films per category.


select c.name as category_name , count(f.film_id) as num_films
from sakila.category as c
join sakila.film_category as fc on c.category_id = fc.category_id
join sakila.film as f on fc.film_id = f.film_id
group by  category_name;



-- 2. Display the first and the last names, as well as the address, of each staff member.

select s.first_name, s.last_name, ad.address 
from sakila.staff as s
join sakila.address as ad on s.address_id = ad.address_id;



-- 3. Display the total amount rung up by each staff member in August 2005.

select s.staff_id,first_name,last_name, sum(p.amount)
from sakila.staff s
join sakila.payment p using(staff_id)
where p.payment_date BETWEEN '2005-08-01' AND '2005-08-31'
group by s.staff_id, first_name, last_name;



-- 4. List all films and the number of actors who are listed for each film.

select f.film_id, title, count(a.actor_id)
from sakila.film f
join sakila.film_actor fa using(film_id)
join sakila.actor a using(actor_id)
group by f.film_id, title
order by f.title;


 -- 5. Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer.
 -- List the customers alphabetically by their last names. 
 

select c.first_name, last_name, sum(p.amount)
from sakila.customer c
join sakila.payment p using(customer_id)
group by c.first_name, last_name
order by c.last_name;













