-- Select all data from the dataset.
select * from data;
-- Select the distinct countries in the dataset.
select distinct Region from data;
-- Count the total number of confirmed cases.
select count(Confirmed) from data;
-- Find the total deaths recorded in the dataset.
select sum(Deaths) from data;
-- Get the total number of recoveries.
select sum(Recovered) from data ;
-- Select all records for a specific country (e.g., India).
select * from data where Region="India";
-- Find all records with more than 1000 confirmed cases.
select * from data where Confirmed>1000;
-- Get data for a specific date (e.g., '2021-01-01')
select * from .data where Date='2021-01-01';
-- Find all countries with no deaths recorded.
select Region from data where Deaths=0;
-- Get records where recovered cases are greater than confirmed cases.
select * from data where Recovered>Confirmed;
-- Count the number of records per country.
select Region,count(*) from data group by Region;
-- Get the total confirmed cases per country.
select Region,count(Confirmed) from data group by Region;
-- Find the average number of deaths per country.
select Region,avg(Deaths) from data group by Region;
-- Get the maximum number of recovered cases from any country.
select Region,Recovered from data order by Recovered desc limit 1 ;
-- Find the country with the highest number of confirmed cases.
select confirmed ,Region from data order by Region  limit 1;
-- Count the number of confirmed cases recorded each month.
select Month(Date) as month from data;
describe data;
select Date from data;
drop table data;
-- Find the total deaths per month.
describe data;
select 
month(Date,"")

-- Get daily new confirmed cases (confirmed cases today minus confirmed cases yesterday).
-- Retrieve the first date when each country reported a death.
-- Calculate the recovery rate (Recovered/Confirmed) for each country.
-- Assuming you have a vaccination table, join it with the COVID data based on the country.
-- Get the total confirmed cases and total vaccinations for each country.
-- Find the countries with a case fatality rate (Deaths/Confirmed) greater than 2%.
-- Retrieve countries that have more than 5000 confirmed cases and less than 100 deaths.
-- Count how many countries have reported cases on a specific date.
-- Get the percentage of total confirmed cases for each country relative to the global total.
-- List countries with more than a certain threshold of recovered cases.
-- Find the average number of confirmed cases per day for each country.
-- Get the top 5 countries with the most deaths.
-- Retrieve the date with the highest number of confirmed cases globally.
-- Find the country with the lowest recovery rate.
-- Get countries where confirmed cases are above the average confirmed cases across all countries.
-- Find the total confirmed cases for countries that have a higher death count than the average.
-- Retrieve the countries where the ratio of deaths to confirmed cases is the highest.
-- List countries that have recovered more than the average number of confirmed cases.
-- Get the last date when each country reported cases.
-- Count the number of days with new confirmed cases greater than 100.
-- Find the total number of confirmed cases for each country on the latest date available.
-- Identify countries that have reported cases but no recoveries.
-- Get the country with the least number of confirmed cases recorded.
-- Find the total deaths in countries with more than 1 million confirmed cases.
-- Calculate the average recovery time (days from confirmed to recovered) for each country.
-- Find the daily average increase in confirmed cases for the last month.
-- List countries with the most significant increase in confirmed cases on the last recorded date.
-- Retrieve countries that have a recovery rate of over 90%.
-- Get the total confirmed cases and deaths by year.
-- Identify the countries that have reported cases on every date in the dataset.
-- Find the maximum daily increase in deaths for any country.
-- Count the number of countries that have reported cases in every month of the dataset.
select count(Region) ,Confirmed from data group by month(Date);
-- Retrieve the total confirmed cases grouped by country.
select Region,sum(Confirmed) from data group by Region;







