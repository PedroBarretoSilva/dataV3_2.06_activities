USE sakila;


-- 1)  In the table actor, which are the actors whose last names are not repeated?
SELECT * FROM sakila.actor
GROUP BY last_name
HAVING count(*)=1;
-- 66 actors

-- 2)  Which last names appear more than once? 
SELECT * FROM sakila.actor
GROUP BY last_name
HAVING count(*)>1;
-- 55 names shows more than once

-- 3)  Using the rental table, find out how many rentals were processed by each employee.
SELECT staff_id, count(*) FROM sakila.rental
GROUP BY staff_id;

-- 4)  Using the film table, find out how many films were released each year.
SELECT release_year, count(*) as nr_films FROM sakila.film
GROUP BY release_year
ORDER BY release_year DESC;
-- 1000 movies in 2006



-- 5)  Using the film table, find out for each rating how many films were there.
SELECT rating, count(*) as nr_films FROM sakila.film
GROUP BY rating
ORDER BY rating DESC;



-- 6)  What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT rating, round(avg(length),2) as avg_length FROM sakila.film
GROUP BY rating
ORDER BY avg_length DESC;




-- 7)  Which kind of movies (rating) have a mean duration of more than two hours?
SELECT rating, round(avg(length),2) as avg_length FROM sakila.film
GROUP BY rating
HAVING avg_length>120
ORDER BY avg_length DESC;



-- 8)  Rank films by length (filter out the rows that have nulls or 0s in length column). 
--     In your output, only select the columns title, length, and the rank.
SELECT title, length FROM sakila.film
WHERE length <> 0 AND length IS NOT NULL 
ORDER BY length DESC;








