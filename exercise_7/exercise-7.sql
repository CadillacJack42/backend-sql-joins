-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name

SELECT
    title
FROM 
    city
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
WHERE city.city = 'Dundee'
