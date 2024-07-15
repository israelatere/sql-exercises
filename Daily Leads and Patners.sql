CREATE TABLE DailySales (
date_id date,
make_name varchar,
lead_id int,
partner_id int
);

--There is no primary key (column with unique values) for this table. It may contain duplicates.
--This table contains the date and the name of the product sold and the IDs of the lead and partner it was sold to.
--The name consists of only lowercase English letters.

select * from DailySales;
insert into DailySales (date_id, make_name, lead_id, partner_id)
values
('2020-12-8', 'toyota', 0,1)
('2020-12-8', 'toyota', 1,0)
('2020-12-8', 'toyota', 1,2)
(4, 'Bill', null)
(5, 'Zack', 1),
(6, 'Mark', 2);


--In SQL, id is the primary key column for this table.
--Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.

--Exercise
--Find the names of the customer that are not referred by the customer with id = 2.
--Return the result table in any order.

SELECT name FROM Customer
WHERE referee_id is NULL
OR referee_id = 1;