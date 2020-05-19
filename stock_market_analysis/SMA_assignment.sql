#we have imported the data of all the six stocks into tables under the schema "Assignment" with there respective names.
#Since the data are loaded/ imported, lets provide with working on it for obtaining the expected results


#1. Create a new table named 'bajaj1' containing the date, close price, 20 Day MA and 50 Day MA. (This has to be done for all 6 stocks)

# a.) Bajaj Auto:
#adding a new column to the table
alter table bajaj_auto
add newdate varchar(50);

#updating the table for date format
update bajaj_auto
set newdate=str_to_date(date,"%d-%M-%Y");

#lets drop the  date column
alter table bajaj_auto drop column Date;

#renaming the newdate to date
alter table bajaj_auto rename column newdate to Date;

#creating the table bajaj1 with date, close price and the moving average for 20 and 50 days 
create table bajaj1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20_Day_MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50_Day_MA`
from `Bajaj_auto`
group by `Date`
order by 1;

#updating the 20dayMA and 50dayMA with null for first 19 and 49 rows respectively
update `bajaj1`
set `20_Day_MA` = null
limit 19;

update `bajaj1`
set `50_Day_MA` = null
limit 49;

#b.) Eicher Motors:
#adding a new column to the table
alter table eicher_motors
add newdate varchar(50);

#updating the table for date format
update eicher_motors
set newdate=str_to_date(date,"%d-%M-%Y");

#lets drop the  date column
alter table eicher_motors drop column Date;

#renaming the newdate to date
alter table eicher_motors rename column newdate to Date;

#creating the table eicher1 with date, close price and the moving average for 20 and 50 days 
create table eicher1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20_Day_MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50_Day_MA`
from `eicher_motors`
group by `Date`
order by 1;

#updating the 20dayMA and 50dayMA with null for first 19 and 49 rows respectively
update `eicher1`
set `20_Day_MA` = null
limit 19;

update `eicher1`
set `50_Day_MA` = null
limit 49;

#c.) Hero Motocorp
#adding a new column to the table
alter table hero_motocorp
add newdate varchar(50);

#updating the table for date format
update hero_motocorp
set newdate=str_to_date(date,"%d-%M-%Y");

#lets drop the  date column
alter table hero_motocorp drop column Date;

#renaming the newdate to date
alter table hero_motocorp rename column newdate to Date;

#creating the table hero1 with date, close price and the moving average for 20 and 50 days 
create table hero1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20_Day_MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50_Day_MA`
from `hero_motocorp`
group by `Date`
order by 1;

#updating the 20dayMA and 50dayMA with null for first 19 and 49 rows respectively
update `hero1`
set `20_Day_MA` = null
limit 19;

update `hero1`
set `50_Day_MA` = null
limit 49;

#d.) infosys:
#adding a new column to the table
alter table infosys
add newdate varchar(50);

#updating the table for date format
update infosys
set newdate=str_to_date(date,"%d-%M-%Y");

#lets drop the  date column
alter table infosys drop column Date;

#renaming the newdate to date
alter table infosys rename column newdate to Date;

#creating the table infosys1 with date, close price and the moving average for 20 and 50 days 
create table infosys1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20_Day_MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50_Day_MA`
from `infosys`
group by `Date`
order by 1;

#updating the 20dayMA and 50dayMA with null for first 19 and 49 rows respectively
update `infosys1`
set `20_Day_MA` = null
limit 19;

update `infosys1`
set `50_Day_MA` = null
limit 49;

#e.) TCS:
#adding a new column to the table
alter table tcs
add newdate varchar(50);

#updating the table for date format
update tcs
set newdate=str_to_date(date,"%d-%M-%Y");

#lets drop the  date column
alter table tcs drop column Date;

#renaming the newdate to date
alter table tcs rename column newdate to Date;

#creating the table tcs1 with date, close price and the moving average for 20 and 50 days 
create table tcs1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20_Day_MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50_Day_MA`
from `tcs`
group by `Date`
order by 1;

#updating the 20dayMA and 50dayMA with null for first 19 and 49 rows respectively
update `tcs1`
set `20_Day_MA` = null
limit 19;

update `tcs1`
set `50_Day_MA` = null
limit 49;

#f.) TVS Motors:
#adding a new column to the table
alter table tvs_motors
add newdate varchar(50);

#updating the table for date format
update tvs_motors
set newdate=str_to_date(date,"%d-%M-%Y");

#lets drop the  date column
alter table tvs_motors drop column Date;

#renaming the newdate to date
alter table tvs_motors rename column newdate to Date;

#creating the table tvs1 with date, close price and the moving average for 20 and 50 days 
create table tvs1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20_Day_MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50_Day_MA`
from `tvs_motors`
group by `Date`
order by 1;

#updating the 20dayMA and 50dayMA with null for first 19 and 49 rows respectively
update `tvs1`
set `20_Day_MA` = null
limit 19;

update `tvs1`
set `50_Day_MA` = null
limit 49;

#2. Create a master table containing the date and close price of all the six stocks. (Column header for the price is the name of the stock)
CREATE TABLE `MASTER TABLE` (
  `Date` DATE,
  `Bajaj` DOUBLE,
  `TCS` DOUBLE,
  `TVS` DOUBLE,
  `Infosys` DOUBLE,
  `Eicher` DOUBLE,
  `Hero` DOUBLE
);

INSERT INTO `MASTER TABLE`
SELECT B.`Date`,
B.`Close Price` AS "Bajaj",
TC.`Close Price` AS "TCS",
TV.`Close Price` AS "TVS",
I.`Close Price` AS "Infosys",
E.`Close Price` AS "Eicher",
H.`Close Price` AS "Hero"
FROM `Bajaj_Auto` B INNER JOIN `tcs` TC ON(B.`Date`=TC.`Date`)
INNER JOIN `tvs_motors` TV ON(TC.`Date`=TV.`Date`)
INNER JOIN `Infosys` I     ON(TV.`Date`=I.`Date`)
INNER JOIN `eicher_motors` E ON(I.`Date`=E.`Date`)
INNER JOIN `hero_motocorp` H ON(E.`Date`=H.`Date`);

#3. Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'bajaj2'. Perform this operation for all stocks.
#a.) Bajaj 2 table with signal for the stock: 
create table bajaj2 as
select `Date`,`Close Price`,
case
WHEN `20_Day_MA` > `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20_Day_MA` < `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' 
END as 'signal'
from bajaj1;
     
select*
from bajaj2;

#b.) eicher 2 table with signal for the stock: 
create table eicher2 as
select `Date`,`Close Price`,
case
WHEN `20_Day_MA` > `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20_Day_MA` < `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' 
END as 'signal'
from eicher1;
     
select*
from eicher2;

#c.) hero 2 table with signal for the stock: 
create table hero2 as
select `Date`,`Close Price`,
case
WHEN `20_Day_MA` > `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20_Day_MA` < `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' 
END as 'signal'
from hero1;
     
select*
from hero2;

#d.) infosys 2 table with signal for the stock: 
create table infosys2 as
select `Date`,`Close Price`,
case
WHEN `20_Day_MA` > `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20_Day_MA` < `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' 
END as 'signal'
from infosys1;
     
select*
from infosys2;

#e.) tcs 2 table with signal for the stock: 
create table tcs2 as
select `Date`,`Close Price`,
case
WHEN `20_Day_MA` > `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20_Day_MA` < `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' 
END as 'signal'
from tcs1;
     
select*
from tcs2;

#f.) tvs 2 table with signal for the stock: 
create table tvs2 as
select `Date`,`Close Price`,
case
WHEN `20_Day_MA` > `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20_Day_MA` < `50_Day_MA` AND LAG(`20_Day_MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50_Day_MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' 
END as 'signal'
from tvs1;
     
select*
from tvs2;

#4. Create a User defined function, that takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.
#creating a function for checking the signal on particular input date
DELIMITER $$
create FUNCTION signal_for_date (s varchar(20))

returns VARCHAR(20) deterministic 
begin
declare signal_is varchar(20) ;
set signal_is =(select `Signal` from bajaj2 where Date = s);
return signal_is ;
end 
$$
DELIMITER ;

select Signal_for_date('2015-07-23');	