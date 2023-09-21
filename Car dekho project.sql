use cars
select * from cars.car_dekho;

-- READ DATA --

Select * from car_dekho;

-- TOTAL CARS: To get the count of totaL records--

Select count(*) from car_dekho;

-- The manger asked the employee how many cars will be available in 2023 --

Select count(*) from car_dekho where year = 2023;

-- The manger asked the employee how many cars will be available in 2020,2021,2022 --
Select count(*) from car_dekho where year = 2020;
Select count(*) from car_dekho where year = 2021;
Select count(*) from car_dekho where year = 2022;

-- Group by --
select year, count(*) from car_dekho where year in (2020,2021,2022) Group by year;

-- CLient asked to print the total of all cars by years. I don't see all the details... --
Select year, count(*) from car_dekho group by year; 

-- Client asked to car Dealer agent how many deisel cars will be there in 2020? --

Select count(*) from car_dekho where fuel = "Diesel" And year=2020 ; #20

-- CLient requested a car Dealer agent how many petrol cars will be there in 2020 --

Select count(*) from car_dekho where fuel = "Petrol" and year = 2020; #51

-- The manager told the employee to give a print of all the fuel cars ( petrol, deisel, CNG )  come by all year --
  
  Select year, count(*) from car_dekho where fuel= "petrol" group by year;
  Select year, count(*) from car_dekho where fuel= "diesel" group by year;
  Select year, count(*) from car_dekho where fuel= "CNG" group by year;
  
  --  Manager said there were more than 100 cars in a given year, which year had more than 100 cars? --
  
  Select year, count(*) from car_dekho group by year having count(*)>100;
  
  -- for less than 50 --
  
  Select year, count(*) from car_dekho group by year having count(*)<50;
  
  -- The Manager said to the employee all cars count between 2015 and 2023 we need a complete list --
  Select count(*) from car_dekho where  year between 2015 and 2023;  
  
  -- The Manager said to employee all car details between 2015 and 2023 we need complete list--
  
  Select * from car_dekho where year between 2015 and 2023;
  
  
  
  
  