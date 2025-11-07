create database car_sales;
use car_sales;
select * from car_sales;
describe car_sales;
update carcar_sales set Date = str_to_date(Date,'%d-%m-%Y');
alter table carcar_sales change column ï»¿Car_id Car_id varchar(50) ;
alter table carcar_sales rename to car_sales;


select 
	year(Date) as Year,
    sum(Price) as Total_sales,
    sum(Price) - lag(sum(Price),1) over(order by year(date)) /
lag(sum(Price),1) over(order by year(date)) *100 as YTD
from car_sales 
where year(date) in(2022,2023)
group by     
year(date)
order by 
year(date);
SELECT 
    year(Date) AS year,
    ROUND(SUM(Price),1) AS total_sales,
    (SUM(Price) - LAG(SUM(Price), 1)
    OVER (ORDER BY year(Date))) / LAG(SUM(Price), 1) 
    OVER (ORDER BY year(Date)) * 100 AS YOY_increase_percentage
FROM
car_sales 
WHERE 
    year(Date) IN (2022,2023) 
GROUP BY 
    year(Date)
ORDER BY 
    year(Date);
    
select year(Date) as Year , sum(Price) as Total_price , sum(Price) - lag(sum(Price),1) over(order by year(Date)) as Diff_CY_LY from car_sales where 
year(Date) in (2022,2023) group by year(Date) order by year(date);

SELECT sum(Price) from car_sales where year(Date) = "2022";
SELECT 
    SUM(Price) AS MTD_Sales
FROM car_sales
WHERE YEAR(Date) = 2023 
  AND MONTH(Date) = 4;
  
select sum(Price)+ lag(sum(Price),1) over(order by year(Date)) As total_price  from car_sales where month(Date) = 2 group by year(Date);
    
select sum(price) as Total_price from car_sales where month(Date) = 2;

-- Avg
SELECT 
    year(Date) AS year,
    ROUND(avg(Price),1) AS total_sales,
    (avg(Price) - LAG(avg(Price), 1)
    OVER (ORDER BY year(Date))) / Lag(avg(Price), 1) 
    OVER (ORDER BY year(Date)) * 100 AS YOY_increase_percentage
FROM
car_sales 
WHERE 
    year(Date) IN (2022,2023) 
GROUP BY 
    year(Date)
ORDER BY 
    year(Date);
    
    
select year(Date) as Year , avg(Price) as Total_price , avg(Price) - lag(avg(Price),1) over(order by year(Date)) as Diff_CY_LY from car_sales where 
year(Date) in (2022,2023) group by year(Date) order by year(date);    


select avg(Price) from car_sales where month(Date) = 2;

-- Car sold
SELECT 
    year(Date) AS year,
    ROUND(count(Car_id),1) AS total_sales,
    (count(Car_id) - LAG(count(Car_id), 1)
    OVER (ORDER BY year(Date))) / Lag(count(Car_id), 1) 
    OVER (ORDER BY year(Date)) * 100 AS YOY_increase_percentage
FROM
car_sales 
WHERE 
    year(Date) IN (2022,2023) 
GROUP BY 
    year(Date)
ORDER BY 
    year(Date);


select year(Date) as Year , count(Car_id) as Total_price ,count(Car_id) - lag(count(Car_id),1) over(order by year(Date)) as Diff_CY_LY from car_sales where 
year(Date) in (2022,2023) group by year(Date) order by year(date);

select count(Car_id) as Total_car_sold from car_sales where month(Date)= 2;

select count(Car_id) as Total_car_sold , month(Date) as Month from car_sales group by month(Date);

select count(Car_id) as Total_car_sold from car_sales where year(Date) = 2023;


-- Weekly trend of Cy
select week(Date) ,sum(Price) as Total_Price from car_sales  group by week(Date);
select sum(price) as Total_price from car_sales where week(Date)= 2;

-- Total_sales by body style
select Body_Style,sum(Price) as total_price from car_sales group by Body_Style order by  total_price desc;

-- Total_sales by body Color
select Color,sum(Price) as total_price from car_sales group by Color order by  total_price desc;


-- Company wise YTD trend
SELECT 
    Company,
    avg(CASE WHEN YEAR(Date) = 2023 THEN Price ELSE 0 END) AS YTD_car_avg,
    count(CASE WHEN YEAR(Date) = 2023 THEN Car_id ELSE 0 END) as YTD_car_count,
    SUM(CASE WHEN YEAR(Date) = 2023 THEN Price ELSE 0 END) AS YTD_sales

    
    
FROM car_sales
where year(Date) IN ( 2023)
group BY Company;



SELECT 
    Company,
    AVG(CASE WHEN YEAR(Date) = 2023 THEN Price END) AS YTD_car_avg,
    COUNT(CASE WHEN YEAR(Date) = 2023 THEN Car_id END) AS YTD_car_count,
    SUM(CASE WHEN YEAR(Date) = 2023 THEN Price END) AS YTD_sales,
    (SUM(CASE WHEN YEAR(Date) = 2023 THEN Price END) -
     SUM(CASE WHEN YEAR(Date) = 2022 THEN Price END)) 
     / NULLIF(SUM(CASE WHEN YEAR(Date) = 2022 THEN Price END),0) * 100 AS YOY_increase_percentage
FROM car_sales
WHERE YEAR(Date) IN (2022, 2023)
GROUP BY Company;


-- Total_Price by month

select month(date) ,sum(Price) as total_sales from car_sales group by month(date);

select avg(Total_price) as average_line from (select month(Date)as Month,sum(Price)as Total_price from car_sales group by month(Date)) t;