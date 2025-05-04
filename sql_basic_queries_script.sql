#Display all available tables in the Sakila database.
show tables;
#Retrieve all the data from the tables actor, film and customer.

# Retrieve all data from the actor table
SELECT * FROM actor;

# Retrieve all data from the film table
SELECT * FROM film;

# Retrieve all data from the customer table
SELECT * FROM customer;

#Retrieve the following columns from their respective tables:
#Titles of all films from the film table
SELECT title
FROM film;
SELECT name AS language
FROM language;
SELECT first_name
FROM staff;

#Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;

#Counting records for database insights:
#Determine the number of stores that the company has.
SELECT COUNT(*) AS store_count
FROM store;
#Determine the number of employees that the company has.
SELECT COUNT(*) AS employee_count
FROM staff;
# Determine how many films are available for rent and how many have been rented.
#Number of films available for rent
SELECT COUNT(DISTINCT film_id) AS available_for_rent
FROM inventory;
#Number of films that have been rented
SELECT COUNT(DISTINCT inventory.film_id) AS rented_films
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id;

# Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS unique_last_names
FROM actor;

#Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#Use filtering techniques in order to:
#Retrieve all actors with the first name "SCARLETT".
SELECT first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';

