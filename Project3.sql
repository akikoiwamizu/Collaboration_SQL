-- Project 3
-- Using INNER JOIN statements
SELECT CONCAT(sa.last_name,', ',sa.first_name) AS full_name, 
        sf.title,
        sf.description,
        sf.rating
FROM sakila.actor AS sa
INNER JOIN sakila.film_actor AS sfa
ON sfa.actor_id = sa.actor_id
INNER JOIN sakila.film AS sf
ON sf.film_id = sfa.film_id
ORDER BY full_name;
