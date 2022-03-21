-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name

SELECT
    title
FROM 
    country
LEFT JOIN
    city
ON
    country.country_id = city.country_id
LEFT JOIN 
    address
ON
    city.city_id = address.city_id
LEFT JOIN 
    customer
ON
    address.address_id = customer.address_id
LEFT JOIN 
    rental
ON
    customer.customer_id = rental.customer_id
LEFT JOIN 
    inventory
ON
    rental.inventory_id = inventory.inventory_id
LEFT JOIN
    film
ON
    inventory.film_id = film.film_id
WHERE country.country = 'Peru'