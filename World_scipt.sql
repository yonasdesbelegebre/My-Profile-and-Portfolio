use world;
select name,lifeExpectancy from country order by lifeExpectancy desc limit 1;
select name from city  where name like '%New %';
select * from city order by population desc limit 10;
select name,population from city where population >2000000;
select name from city where name like 'Be%';
select name,population from city where population between 500000 and 1000000;
select name from city order by name;
select name,population from city order by population desc limit 1;
select distinct name,count(name) from city  group by name order by name;
select name,population from city order by population asc limit 1;
select name,population from country order by population desc limit 10;
select name from city where ID=(select Capital from country where name='Spain'); -- select Capital from country where name='Spain';
select city.name,country.name from city join country on city.countryCode=country.code and Continent='Europe';
select country.name,avg(city.population) as average_population from city join country on city.countrycode=country.code group by countrycode;
select name,population from city where ID in(select distinct capital from country); 
select SurfaceArea/Population as density,name from country order by density desc ; 
select  city.name as city,country.name as Country,(country.GNP/city.population)as 
GNP_Capital from city join country on city.countrycode=country.code
where (country.GNP/city.population)>(select avg(GNP/population) from country) 
order by GNP_Capital desc; 
Select name,countrycode,population from city order by population desc limit 10 offset 30;