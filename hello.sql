SELECT release_year, COUNT(film_ID) as NumberOfFilms
from sakila.film
where 
group by release_year;
