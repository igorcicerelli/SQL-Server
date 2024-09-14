--------------------------------------------------------------------------------------------------------
--	HACKER RANK - BASIC SELECT - RESPOSTAS:
--------------------------------------------------------------------------------------------------------
--	ReferÍncia: https://www.hackerrank.com/
--	Autor: Igor Cicerelli Primo
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
--	Revising the Select Query I
--------------------------------------------------------------------------------------------------------
SELECT *
FROM CITY
WHERE
    POPULATION > 100000
    AND COUNTRYCODE = 'USA'

--------------------------------------------------------------------------------------------------------
--	Revising the Select Query II
--------------------------------------------------------------------------------------------------------
SELECT NAME
FROM CITY
WHERE
    POPULATION > 120000
    AND COUNTRYCODE = 'USA'


--------------------------------------------------------------------------------------------------------
--	Select All
--------------------------------------------------------------------------------------------------------
SELECT *
FROM CITY


--------------------------------------------------------------------------------------------------------
--	Select By ID
--------------------------------------------------------------------------------------------------------
SELECT *
FROM CITY
WHERE
	ID = 1661

--------------------------------------------------------------------------------------------------------
--	Japanese Cities' Attributes
--------------------------------------------------------------------------------------------------------
SELECT *
FROM CITY
WHERE
	COUNTRYCODE = 'JPN'


--------------------------------------------------------------------------------------------------------
--	Japanese Cities' Names
--------------------------------------------------------------------------------------------------------
SELECT NAME
FROM CITY
WHERE
	COUNTRYCODE = 'JPN'


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 1
--------------------------------------------------------------------------------------------------------
SELECT CITY, STATE
FROM STATION


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 3
--------------------------------------------------------------------------------------------------------
--	OBS: ENUNCIADO INCORRETO!!! MOSTRAR A ABA "DISCUSSIONS".

SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 4
--------------------------------------------------------------------------------------------------------
SELECT COUNT(*) - COUNT(DISTINCT CITY)
FROM STATION


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 5
--------------------------------------------------------------------------------------------------------
SELECT TOP 1 CITY, LEN(CITY)
FROM STATION
ORDER BY LEN(CITY), CITY

SELECT TOP 1 CITY, LEN(CITY)
FROM STATION
ORDER BY LEN(CITY) DESC, CITY


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 6
--------------------------------------------------------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE
	NAME LIKE '[a,e,i,o,u]%'


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 7
--------------------------------------------------------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE
    CITY LIKE '%[a,e,i,o,u]'


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 8
--------------------------------------------------------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE
    CITY LIKE '[a,e,i,o,u]%[a,e,i,o,u]'


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 9
--------------------------------------------------------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE
    CITY NOT LIKE '[a,e,i,o,u]%'


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 10
--------------------------------------------------------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE
    CITY NOT LIKE '%[a,e,i,o,u]'


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 11
--------------------------------------------------------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE
    CITY NOT LIKE '[a,e,i,o,u]%'
    OR
    CITY NOT LIKE '%[a,e,i,o,u]'


--------------------------------------------------------------------------------------------------------
--	Weather Observation Station 12
--------------------------------------------------------------------------------------------------------
SELECT DISTINCT CITY
FROM STATION
WHERE
    CITY NOT LIKE '[a,e,i,o,u]%'
    AND
    CITY NOT LIKE '%[a,e,i,o,u]'


--------------------------------------------------------------------------------------------------------
--	Higher Than 75 Marks
--------------------------------------------------------------------------------------------------------
SELECT NAME
FROM STUDENTS
WHERE
    MARKS > 75
ORDER BY
    RIGHT(NAME,3), ID


--------------------------------------------------------------------------------------------------------
--	Employee Names
--------------------------------------------------------------------------------------------------------
SELECT NAME
FROM EMPLOYEE
ORDER BY NAME


--------------------------------------------------------------------------------------------------------
--	Employee Salaries
--------------------------------------------------------------------------------------------------------
SELECT NAME
FROM EMPLOYEE
WHERE
    SALARY > 2000
    AND MONTHS < 10
ORDER BY EMPLOYEE_ID