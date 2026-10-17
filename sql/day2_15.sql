select Salesperson,Team
from people;


select SaleDate, Amount,Boxes,Amount/Boxes
from sales;


select SaleDate,Amount,Boxes,Amount/Boxes as 'Amount per Boxes'
from sales;


select * 
from sales
where Amount > 10000;
-- 1240

select * 
from sales
where Customers < 50;
-- 1442

select *
from sales
where Boxes > 250;
-- 4194  

select *
from sales
where SPID = 'SP10';
-- 307

select *
from sales
where PID = 'P22';
-- 355

select * 
from sales
where Amount > 1000
order by Amount;
-- 6748

select * 
from sales
where Amount > 1000
order by Amount desc;

select *
from sales
where GeoID = 'g1'
order by PID,Amount desc;

select * from sales
where amount > 10000 and SaleDate >= '2022-01-01';
-- 287


-- no of sales where customers less than 100 and boxes greater than 500
select *
from sales
where Customers < 100 and Boxes > 500;
-- 735 

select PID
from sales
where Amount < 1000 or Boxes < 100;
-- 1499

select * from sales

select SaleDate, Amount 
from sales
where Amount > 10000 and year(SaleDate) = 2022
order by Amount Desc;

select * from sales
where boxes > 0 and boxes<50;
-- 726

select * from sales
where boxes between 0 and 50;  
-- 741   (between inclusive of 0 and 50)

select * from sales 
where boxes >= 0 and boxes <= 50;


select saledate,amount,boxes,weekday(saledate) as 'DayofWeek'
from sales
where weekday(saledate) = 4;
-- 1618

-- weekend sales

select * from sales
where weekday(saledate) = 6 or weekday(saledate) = 5;
-- no sale in weekends

-- sales of product p02 in wednesday


select pid, weekday(saledate) as 'weekno'
from sales
where PID = 'p02'and weekday(saledate) = 2;
-- 82

-- total sales made by sales person sp20 in monday
select * from sales
where spid = 'sp20' and weekday(saledate) = 0;
-- 54


-- identify highest sale made in tueday and lowest sale made in friday

select amount,weekday(saledate) 
from sales
where weekday(saledate) = 1 and max(amount);


select * from people;

select * from people
where team in ('Delish','jucies');


select * from people
where salesperson like 'B%';

select * from people
where salesperson like '%y';


select * from people
where salesperson like '%i%';

select * from people
where salesperson like 'An%';


select * from people
where salesperson like '%n_';
-- Barr Faughny
-- Gigi Bohling
-- Curtice Advani
-- Rafaelita Blaksland
-- Janene Hairsine

select * from people
where salesperson like '_e%';
-- Dennison Crosswaite
-- Kelci Walkden
-- Beverie Moffet
-- Jehu Rudeforth
-- Benny Karolovsky






