-- 1. Which destination in the flights database is the furthest distance away, based on information in the flights table. 
-- Show the SQL query(s) that support your conclusion.

select dest, distance
from flights
order by distance desc

-- 2. What are the different numbers of engines in the planes table? 
-- For each number of engines, which aircraft have the most number of seats? 
-- Show the SQL statement(s) that support your result.

select distinct seats, engines, model, manufacturer
from planes
order by seats desc;

-- 3. Show the number of total flights.

select Count(flight)
from flights

-- 4. Show the number of total flights by airline (carrier).

select carrier, Count(*)
from flights
group by carrier

-- 5. Show all of the airlines, ordered by number of flights in descending order.

select carrier, Count(*)
from flights
group by carrier
order by Count(*) desc

-- 6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.

select carrier, Count(*)
from flights
group by carrier
order by Count(*) desc
Limit 5

-- 7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order.

select carrier, Count(*)
from flights
where distance >= 1000
group by carrier
order by Count(*) desc
Limit 5 

-- 8. Create a question that (a) uses data from the flights database, and (b) requires aggregation to answer it, and write down both the question, and the query that answers the question.

-- Show the speed of each model and manufacturuer in descending order. Do not include null values.

select distinct speed, model, manufacturer
from planes
where speed is not null
order by speed desc;


