SELECT * 
FROM sakila.actor AS sa, sakila.film_actor AS sfa, sakila.film AS sf
WHERE sa.actor_id = sfa.actor_id
AND sfa.film_id = sf.film_id
-- GROUP BY sa.actor_id;