-- Task 1: Using count, get the number of cities in the USA
SELECT * FROM country;
SELECT * FROM city 
WHERE countrycode= 'USA';
SELECT count(*) as NumberOfCitiesUSA 
FROM city 
WHERE countrycode= 'USA';


-- Task 2: Find out the population and average life expectancy for people in Argentina
SELECT population, lifeExpectancy 
FROM country 
WHERE code = 'Arg';


-- Task 3: Using order by, limit, which country has highest life expectancy
SELECT * FROM country 
WHERE lifeexpectancy is not null 
order by LifeExpectancy desc limit 1;


-- Task 4: Select 25 cities around the world starting with 'F' in a single query
SELECT Name 
FROM city 
WHERE substr(name, 1, 1)= 'f' limit 25;
 

-- Task 5:	create SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only
SELECT id, name, population 
FROM city limit 10; 


-- Task 6: Create a SQL statement to find only those cities from city table whose population is larger than 2000000
SELECT * 
FROM city 
WHERE Population > 2000000; 


-- Task 7:	Create an SQL statement to find all city names from city table whose name begins with “Be” prefix
SELECT * 
from city 
where name like 'Be%';

SELECT * 
FROM city 
WHERE substr(name, 1, 2) = 'be';


-- Task 8:	Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
SELECT * 
FROM city 
WHERE population between 500000 and 1000000; 


-- Task 9:	Create an SQL statement to find a city with the lowest population in the city table
SELECT * 
FROM city 
WHERE population = 
(select min(Population) from city);

SELECT * 
FROM city 
WHERE population is not null 
ORDER BY Population ASC limit 1;


-- Task 10:	Create a SQL statement to find the capital of Spain (ESP)
SELECT city.Name 
FROM country 
INNER JOIN city ON country.capital = city.id
WHERE country.code = 'ESP';


-- Task 11:		Create a SQL statement to list all the languages spoken in the Caribbean region.
SELECT distinct countrylanguage.Language 
FROM country 
INNER JOIN countrylanguage ON countrylanguage.countrycode = country.code
WHERE country.Region='Caribbean';


-- Task 12:	Create a SQL statement to find all cities from the Europe continent
SELECT * 
FROM city 
INNER join country ON city.CountryCode= country.code 
WHERE country.Continent='Europe';


