-- Project 2
-- Question:Which rate R horror film has the highest rental rate?
SELECT * 
FROM sakila.actor AS sa, 
	sakila.film_actor AS sfa, 
    sakila.film AS sf,
    sakila.film_category AS sfc,
    sakila.category AS sc,
    sakila.inventory AS si,
    sakila.store AS ss,
    sakila.address AS saa,
    sakila.city AS sci
WHERE sa.actor_id = sfa.actor_id
AND sfa.film_id = sf.film_id
AND sf.film_id = sfc.film_id
AND sfc.category_id = sc.category_id
AND sc.name = "Horror"
AND sf.rating = "R"
AND sfa.film_id = si.film_id
AND si.store_id = ss.store_id
AND ss.address_id = saa.address_id
AND saa.city_id = sci.city_id
GROUP BY sfa.film_id
ORDER BY sf.rental_rate DESC;