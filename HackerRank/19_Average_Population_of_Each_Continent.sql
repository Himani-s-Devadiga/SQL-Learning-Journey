/*
Problem: Average Population of Each Continent

Given the CITY and COUNTRY tables, query the names of all the continents and their respective average city populations, rounded down to the nearest integer.

Difficulty: Easy
Topic: Basic Join, GROUP BY, Aggregate Functions
*/

SELECT COUNTRY.Continent,
       FLOOR(AVG(CITY.Population))
FROM CITY
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.Continent;
