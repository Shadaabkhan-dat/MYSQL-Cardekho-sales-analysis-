create schema cars;
use cars;
USE cars;
##read data
select * from car_dekho;
##Total Count
select count(*) from car_dekho;
##cars available in 2023
select count(*) from car_dekho where year = 2023;  #6
##cars available in 2020,2021,2022,2023
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
#Groupby
select count(*) from car_dekho where year in (2020,2021,2022,2023) group by year;
# Sum of all cars by years
select year, count(*) from car_dekho group by year;
#How many deisel cars in 2020
select count(*) from car_dekho where year = 2020 and fuel = "Diesel"; #20
#How many Petrol cars in 2020?
select count(*) from car_dekho where year = 2020 and fuel = "Petrol";  #51
#all the fuel cars by year
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;
#Which Year has more than 100 cars
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<50;
#Count of all cars between 2015 to 2023
select count(*) from car_dekho where  year between 2015 and 2023;
#complete list of car between 2015 and 2023
select * from car_dekho where year between 2015 and 2023;