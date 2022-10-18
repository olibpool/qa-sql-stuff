SELECT * FROM sakila.actor;

SELECT * FROM sakila.actor WHERE first_name='JOHN';

SELECT * FROM sakila.actor WHERE last_name='NEESON';

SELECT * FROM sakila.actor WHERE actor_id%10=0;

SELECT description FROM sakila.film WHERE film_id=100;

SELECT * FROM sakila.film WHERE rating='R';

SELECT * FROM sakila.film WHERE 'Deleted Scenes' in (special_features);

SELECT DISTINCT last_name FROM sakila.actor;

/*CREATE VIEW result AS
SELECT last_name, COUNT(*) as num_appearences FROM sakila.actor GROUP BY last_name;
note that this view is neccessary for the next two Qs but has to be made ina a new window.

SELECT last_name FROM result WHERE num_appearences>1;


SELECT last_name FROM result WHERE num_appearences=(SELECT MAX(num_appearences) FROM result);
*/

SELECT store_id FROM sakila.inventory i INNER JOIN sakila.film f on i.film_id=f.film_id WHERE f.title='ACADEMY DINOSAUR';

SELECT AVG(length) FROM sakila.film;

/*
CREATE VIEW film_id_cat AS
SELECT film_id, name FROM sakila.category c INNER JOIN sakila.film_category fc on c.category_id=fc.category_id;
*/

SELECT c.name, AVG(f.length) as length_per_cat FROM sakila.film f INNER JOIN film_id_cat c ON f.film_id=c.film_id GROUP BY name;

SELECT COUNT(*) FROM sakila.film WHERE description LIKE '%Robot%';

SELECT * FROM sakila.film WHERE length=(SELECT MAX(length) FROM sakila.film);

SELECT COUNT(*) FROM sakila.film WHERE release_year=2010;

SELECT CONCAT(first_name, last_name) as 'full_name' FROM sakila.staff WHERE staff_id=1;

SELECT actor_id FROM sakila.actor WHERE first_name='FRED' AND last_name='Costner'; 
/* id=16 */
SELECT f.title FROM sakila.film f INNER JOIN 
(SELECT film_id FROM sakila.film_actor WHERE actor_id=16) id 
ON f.film_id=id.film_id;

SELECT store_id, COUNT(store_id) FROM sakila.inventory WHERE film_id=(SELECT film_id FROM sakila.film WHERE title='BUCKET BROTHERHOOD')
GROUP BY store_id;

SELECT DISTINCT * FROM sakila.country;

SELECT name FROM sakila.language ORDER BY name;

SELECT CONCAT(first_name,' ', last_name) as full_name FROM sakila.actor
WHERE last_name IN (SELECT last_name FROM sakila.actor WHERE last_name LIKE '%son%')
ORDER BY last_name;