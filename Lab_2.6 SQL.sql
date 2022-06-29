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



