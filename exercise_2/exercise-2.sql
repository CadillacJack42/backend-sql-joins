-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental

SELECT 
    first_name,
    (rental)rental_date
FROM
    customer
INNER JOIN 
    rental
ON
    customer.customer_id = rental.customer_id
WHERE customer.first_name = 'Patricia'

