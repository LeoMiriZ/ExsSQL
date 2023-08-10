-- Exercício 1

select title, description, rental_date
from film
inner join inventory on film.film_id = inventory.film_id
inner join rental on inventory.inventory_id = rental.inventory_id
where rental_date like '%2006%';

-- Exercício 2

select first_name, last_name, title
from customer c
inner join rental on c.customer_id = rental.customer_id
inner join inventory on rental.inventory_id = inventory.inventory_id
inner join film on inventory.film_id = film.film_id
order by c.customer_id;

-- Exercício 3

select first_name, last_name, sum(amount)
from customer
inner join payment on customer.customer_id = payment.customer_id
group by first_name;

-- Exercício 4

select first_name, last_name, address, city, country, district
from customer
inner join address on customer.address_id = address.address_id
inner join city on address.city_id = city.city_id
inner join country on city.country_id = country.country_id;

-- Exercício 5

select title, count(rental_id)
from film
inner join inventory on inventory.film_id = film.film_id
inner join rental on rental.inventory_id = inventory.inventory_id
group by title;

-- Exercício 6

select title, count(rental_id)
from film
inner join inventory on inventory.film_id = film.film_id
inner join rental on rental.inventory_id = inventory.inventory_id
group by title
order by count(rental_id) desc;

-- Exercício 7

select first_name, last_name, count(payment_id)
from payment
inner join customer on payment.customer_id = customer.customer_id
group by first_name
order by count(payment_id) desc;


-- Exercício 8

select name, count(rental_id)
from film 
inner join film_category on film.film_id = film_category.film_id
inner join category c on film_category.category_id = c.category_id
inner join inventory on inventory.film_id = film.film_id
inner join rental on rental.inventory_id = inventory.inventory_id
group by c.category_id
order by count(rental_id) desc;

-- Exercício 9 

select date(rental_date), sum(amount), count(r.rental_id), round(avg(amount), 2)
as 'ticket medio' from rental r
inner join payment p on p.rental_id = r.rental_id
group by date(rental_date);

-- Exercício 10

select store.store_id, sum(amount)
from payment
inner join rental on payment.rental_id = rental.rental_id
inner join customer on rental.customer_id = customer.customer_id
inner join store on customer.store_id = store.store_id
group by store.store_id;


-- Exercício 11

select s.store_id, date(rental_date), count(r.rental_id) 
from rental r
inner join inventory i on i.inventory_id = r.inventory_id
inner join film f on i.film_id = f.film_id
inner join store s on i.store_id = s.store_id
group by s.store_id, day(rental_date);

-- Exercício 12

select first_name, last_name, city
from customer
inner join address on customer.address_id = address.address_id
inner join city on address.city_id = city.city_id;

-- Exercício 13

select count(film.film_id), title, store.store_id
from inventory
inner join film on inventory.film_id = film.film_id
inner join store on inventory.store_id = store.store_id
group by store.store_id, title;

-- Exercício 14

select * from category
where category.category_id not in (select distinct category.category_id
from actor inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film on film_actor.film_id = film.film_id
inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where actor.first_name = 'MARY' and actor.last_name = 'TANDY'
order by category.category_id);

-- Exercício 15

select date(rental_date), sum(amount), count(r.rental_id), round(avg(amount), 1)
as 'ticket medio' from rental r
inner join payment p on p.rental_id = r.rental_id
group by date(rental_date)
having sum(amount) > 300;
 
-- Exercíco 16

select city, month(rental_date), sum(amount)
from rental r
inner join inventory i on r.inventory_id = i.inventory_id
inner join store s on i.store_id = s.store_id
inner join payment p on p.rental_id = r.rental_id
inner join address a on s.address_id = a.address_id
inner join city ct on a.city_id = ct.city_id
group by city, month(rental_date)
order by sum(amount) desc;