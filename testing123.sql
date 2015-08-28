-- Joining tables and making sure the database & tables are working
SELECT * 
FROM sakila.actor AS sa, 
	sakila.film_actor AS sfa, 
    sakila.film AS sf,
    sakila.inventory AS si
WHERE sa.actor_id = sfa.actor_id
AND sfa.film_id = sf.film_id
AND sfa.film_id = si.film_id
AND sf.rating = "R"
GROUP BY sfa.film_id
ORDER BY sf.rental_rate DESC;
