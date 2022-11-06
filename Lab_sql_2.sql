use sakila;

-- Select all the actors with the first name ‘Scarlett’
select * from actor
where first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’
select * from actor
where last_name = 'Johansson';

-- How many films (movies) are available for rent?
select count(film_id) from film; -- Increased max number of results, it's still 1000

-- How many films have been rented?
select count(rental_id) from rental; -- 16044

-- What is the shortest and longest rental period?
-- shortest:
select min(rental_duration) from film; -- 3 hours
-- longest:
select max(rental_duration) from film; -- 7 hours

-- What are the shortest and longest movie duration?
select max(length) as max_duration from film; -- 185
select min(length) as min_duration from film; -- 46

-- What's the average movie duration?
select avg(length) as average from film; -- 115

-- What's the average movie duration expressed in format (hours, minutes)?
select concat(floor(avg(length)/60),':',floor(avg(length)%60)) as average
from film; 

-- How many movies longer than 3 hours?
select count(length)
from film
where length > 180; -- 39

-- Get the name and email formatted. Example: Mary SMITH
select concat(lower(first_name),'.',lower(last_name),'@sakilacustomer.org') as 'email'
from customer;





