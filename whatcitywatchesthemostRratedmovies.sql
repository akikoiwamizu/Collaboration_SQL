SELECT city, AVG(CASE WHEN rating = "R" THEN 1 ELSE 0 END) AS fraction_R, COUNT(rating) AS n_ratings
FROM sakila.film AS sf
JOIN sakila.inventory AS si ON si.film_id = sf.film_id
JOIN sakila.store AS ss ON ss.store_id = si.store_id
JOIN sakila.address AS sa ON sa.address_id = ss.address_id
JOIN sakila.city AS sc ON sc.city_id = sa.city_id
GROUP BY sc.city_id;