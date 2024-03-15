use ablejobs;

create table Sales1 ( 
salesman_id int,
name varchar(100),
city varchar(100),
commission float);

select * from Sales1;

insert into Sales1 values 
('5001', 'James Hoog', 'New York', '0.15'),
('5002', 'Nail Knite', 'Paris', '0.13'),
('5005', 'Pit Alex', 'London', '0.11'),
('5006', 'Mc Lyon', 'Paris', '0.14'),
('5007', 'Paul Adam', 'Rome', '0.13'),
('5003', 'Lauson Hen', 'San Jose', '0.12');

select * from Sales1;

create table Sales2 (
customer_id int,
cust_name varchar(100),
city varchar(100),
grade int,
salesman_id int);

select * from Sales2;

insert into Sales2 values
('3002', 'Nick Rimando', 'New York', '100', '5001'),
('3007', 'Brad Davis', 'New York', '200', '5001'),
('3005', 'Graham Zusi', 'California', '200', '5002'),
('3008', 'Julian Green', 'London', '300', '5002'),
('3004', 'Fabian Johnson', 'Paris', '300', '5006'),
('3009', 'Geoff Cameron', 'Berlin', '100', '5003'),
('3003','Jozy Altidor', 'Moscow', '200', '5007');

select * from Sales2;

/*Session 3*/
/* C. In the above table, write a SQL query to change the following data:
	i.Change commission of salesman with name of ‘Pit Alex’ to 0.22*/

update Sales1 set commission = '0.22' where name = 'Pit Alex';

select * from Sales1;

/*Change city of salesman with salesman_id of ‘5003’ to Paris */

update Sales1 set city = 'Paris' where salesman_id = '5003';

select * from Sales1;

/*Session 3 - Other Basic Queries*/
/*C.i)Change grade of customer with name of ‘Graham Zusi’ to 300*/

update Sales2 set grade = '300' where cust_name = 'Graham Zusi';

/*Change city of customer with cust_id of ‘3009’ to London*/

update Sales2 set city = 'London' where cust_id = '3009';

/*e.Display all the data in the above table*/
select * from Sales2;

/*Session 4 - FUnctions and Wildcards*/
/*From the above table, write a SQL query to find the details of those salespeople who come from the 'Paris' City or 'Rome' City. Return salesman_id, name, city, commission*/

select salesman_id, name, city, commission from Sales1 where city = 'Paris' or city = 'Rome';

/*From the following table, write a SQL query to find the details of those salespeople who live in cities apart from 'Paris' and 'Rome'. 
Return salesman_id, name, city, commission.*/

select salesman_id, name, city, commission from Sales1 where city != 'Paris' or city != 'Rome';

/*From the following table, write a SQL query to find the details of salespeople who get the commission in the range from 0.12 to 0.14
 (begin and end values are included). Return salesman_id, name, city, and commission.*/
 
select salesman_id, name, city, commission from Sales1 where commission >= '0.12' and commission <= '0.14';
select salesman_id, name, city, commission from Sales1 where commission between 0.12 and 0.14;

select * from Sales1;

/*From the following table, write a SQL query to find the details of those salespeople whose name starts with any letter within 'A' and 'L' (not inclusive). 
Return salesman_id, name, city, commission.*/

SELECT salesman_id, name, city, commission FROM Sales1 WHERE name BETWEEN 'A' AND 'L';

/*From the following table, write a SQL query to find the details of the customers whose name begins with the letter 'B'. 
Return customer_id, cust_name, city, grade, salesman_id.*/

select customer_id, cust_name, city, grade, salesman_id from Sales2 where cust_name like 'B%';

/*From the following table, write a SQL query to find the details of the customers whose names end with the letter 'n'. 
Return customer_id, cust_name, city, grade, salesman_id.*/

select customer_id, cust_name, city, grade, salesman_id from Sales2 where cust_name like '%n';

/*From the following table, write a SQL query to find the details of those salespeople whose name starts with ‘N’ and the fourth character is 'l'. 
Rests may be any character. Return salesman_id, name, city, commission.*/

select salesman_id, name,city, commission from Sales1 where name like 'N__l%';

/*2.b. Create the following Table with the name: Nobel*/


create table Nobel (
year int,
subject char(50),
winner varchar(100),
country varchar(100),
category varchar(100));

select * from Nobel;

insert into Nobel values
('1970','Physics','Hannes Alfven','Sweden','Scientist'),
('1970','Physics','Louis Neel','France','Scientist'),
('1970','Chemistry','Luis Federico Leloir','France','Scientist'),
('1970','Physiology','Ulf von Euler','Sweden','Scientist'),
('1970','Physiology','Bernard Katz','Germany','Scientist'),
('1970','Literature','Aleksandr Solzhenitsyn','Russia','Linguist'),
('1970','Economics','Paul Samuelson','USA','Economist'),
('1970','Physiology','Julius Axelrod','USA','Scientist'),
('1971','Physics','Dennis Gabor','Hungary','Scientist'),
('1971','Chemistry','Gerhard Herzberg','Germany','Scientist'),
('1971','Peace','Willy Brandt','Germany','Chancellor'),
('1971','Literature','Pablo Neruda','Chile','Linguist'),
('1971','Economics','SImon Kuznets','Russia','Economist'),
('1978','Peace','Anwar al-Sadat','Egypt','President'),
('1978','Peace','Menachem Begin','Israel','Prime Minister'),
('1987','Chemistry','Donald J. Cram','USA','Scientist'),
('1987','Chemistry','Jean-Marie Lehn','France','Scientist'),
('1987','Physiology','Susumu Tonegawa','Japan','Scientist'),
('1994','Economics','Reinhard Selten','Germany','Economist'),
('1994','Peace','Yitzhak Rabin','Israel','Prime Minister'),
('1987','Physics','Johannes Georg Bednorz','Germany','Scientist'),
('1987','Literature','Joseph Brodsky','Russia','Linguist'),
('1987','Economics','Robert Solow','USA','Economist'),
('1994','Literature','Kenzaburo Oe','Japan','Linguist');

select * from Nobel;
update Nobel set category = 'Prime Minister' where winner = 'Yitzhak Rabin';

/*From the above table, write a SQL query to find the Nobel Prize winner(s) in the following years (Return year, subject and winner) :
1970
1987
*/
select year, subject, winner from Nobel where year like '%1970%' or year like '%1987%';

/*From the above table, write a SQL query to find the Nobel Prize winner in 'Literature' in the year 1971. Return winner.*/

select winner from Nobel where subject like '%Literature%' and year like '%1971%';

/*From the following table, write a SQL query to find the Nobel Prize winner 'Dennis Gabor'. Return year, subject.*/

select year from Nobel where winner like '%Dennis Gabor%';

/*From the following table, write a SQL query to find the Nobel Prize winners in 'Physics' since the year 1950. Return winner.*/

select winner from Nobel where subject like '%Physics%' and year > 1950;

/*From the following table, write a SQL query to find the Nobel Prize winners in 'Chemistry' between the years 1965 to 1975. 
Begin and end values are included. Return year, subject, winner, and country*/

select year, subject, winner, country from Nobel where subject like '%Chemistry%' and year between 1965 and 1975;

/*Write a SQL query to show all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.*/

select * from Nobel where year > 1972 and category like '%Prime Minister%';

/*From the following table, write a SQL query to find the details of the winners whose 
first name matches with the string 'Louis'. Return year, subject, winner, country, and category.*/

select year, subject, winner, country, category from Nobel where winner like 'Louis%';

/*From the following table, write a SQL query to find the details of the Nobel Prize winner
 'Johannes Georg Bednorz'. Return year, subject, winner, country, and category.*/
 
 select year, subject, winner, country, category from Nobel where winner like '%Johannes%';
 
 /* 3.b. Create the following Table with the name: Orders*/
 
 create table Orders (
 ord_no int,
 purch_amt float,
 ord_date date,
 customer_id int,
 salesman_id int);
 

 select * from Orders;
 
insert into Orders values
('70001','150.5','2012-10-05','3005','5002'),
('70009','270.65','2012-09-10','3001','5005'),
('70002','65.26','2012-10-05','3002','5001'),
('70004','110.5','2012-08-17','3009','5003'),
('70007','948.5','2012-09-10','3005','5002'),
('70005','2400.6','2012-07-27','3007','5001'),
('70008','5760','2012-09-10','3002','5001'),
('70010','1983.43','2012-10-10','3004','5006'),
('70003','2480.4','2012-10-10','3009','5003'),
('70012','250.45','2012-06-07','3008','5002'),
('70011','75.29','2012-08-17','3003','5007'),
('70013','3045.6','2012-04-25','3002','5001');

select * from Orders;

/*C. From the following table, write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.*/

SELECT SUM(purch_amt) AS Total_Purchase
FROM Orders;

/*From the following table, write a SQL query to calculate average purchase amount of all orders. Return average purchase amount.*/

SELECT AVG(purch_amt) AS Avg_Purchase
FROM Orders;

/*From the following table, write a SQL query to count the number of unique salespeople. Return number of salespeople.*/

SELECT COUNT(DISTINCT salesman_id) AS Salespeople 
FROM Orders; 

/*From the following table, write a SQL query to count the number of customers. Return number of customers.*/

SELECT COUNT(DISTINCT customer_id) AS Totalcustomers
FROM Orders;

/************Session 5*********************/

/*1.c. From the above table, write a SQL query to combine the winners in Physics, 1970 and in Economics, 1971. 
Return year, subject, winner, country, and category.*/

SELECT Nobel.year, Nobel.subject,  Nobel.winner, Nobel.country, Nobel.category
 FROM Nobel
 WHERE Nobel.subject = 'Physics' and Nobel.year = '1970'
 UNION
 SELECT Nobel.year, Nobel.subject,  Nobel.winner, Nobel.country, Nobel.category
 FROM Nobel
 WHERE Nobel.subject = 'Economics' and Nobel.year = '1971';
 
 /*2.d. From the above tables write a SQL query to find the salesperson and customer who belongs to same city. Return Salesman, cust_name and city.*/
 
 update Sales1 set city = 'San Jose' where name = 'Lauson Hen';
 
 select * from Sales1;
 
 select s1.name, s2.cust_name, s1.city
 from Sales1 as s1
 join Sales2 as s2
 on s1.city=s2.city;
 
 /*From the above tables write a SQL query to find the salesperson(s) and the customer(s) he handle. Return Customer Name, city, Salesman, commission.*/
 
 select s2.cust_name, s2.city, s1.name, s1.commission
 from Sales2 as s2
 join Sales1 as s1
 on s1.salesman_id = s2.salesman_id;
 
 /*From the above tables write a SQL query to find those salespersons who received a commission from the company more than 12%.*/
 
 select * from Sales1 where commission > 0.12;
 
 /*From the following tables write a SQL query to find those salespersons do not live in the same city where 
 their customers live and received a commission from the company more than 12%. Return Customer Name, customer city, Salesman, salesman city, commission.*/
 
 select s2.cust_name, s2.city, s1.name, s1.city, s1.commission
 from Sales2 as s2
 join Sales1 as s1
 on s1.salesman_id=s2.salesman_id
 where s1.city != s2.city
 and s1.commission > 0.12;
 
 /*********Session 6 & 7***************/
 /*Consider a database for an online bookstore. The database consists of two tables: Customers and Orders.*/
 
 create table Customers (
 CustomerID int,
 CustomerName varchar(100),
 City char(100));
 
 select * from Customers;
 
 insert into Customers values 
 ('1','John Smith','New York'),
 ('2','Jane Doe','Los Angeles'),
 ('3','Bob Johnson','Chicago');
 
 select * from Customers;
 
 create table Orders1 (
 OrderID int,
 CustomerID int,
 Product varchar(100),
 Quantity int,
 Price float);
 
 select * from Orders1;
 
 insert into Orders1 values
 ('1','1','Laptop','2','340'),
 ('2','1','Printer','1','240'),
 ('3','2','Smartphone','3','70'),
 ('4','3','Tablet','2','80');
 
 select * from Orders1;
 
 /*Retrieve the names of all customers who have placed an order for a product with a price greater than $100.*/
 
 select c.CustomerName,o.Product,o.Quantity,o.Price from Customers as c
 join Orders1 as o
 on c.CustomerID=o.CustomerID
 where o.Price > 100;

/*List the products that have been ordered by customers from the same city as customer 'John Smith'.*/

SELECT o.Product
FROM Orders1 o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.City = (
    SELECT c.City
    FROM Customers c
    WHERE c.CustomerName = 'John Smith'
); 

/*Find the order IDs and total order amounts for orders that contain at least one product with a quantity greater than 2.*/

select o.OrderID, SUM(o.Price * o.Quantity) AS TotalAmount
from Orders1 o 
join 
(select OrderID from Orders1 
where Quantity > 2 
group by OrderID)
AS subquery on o.OrderID = subquery.OrderID
group by o.OrderID;