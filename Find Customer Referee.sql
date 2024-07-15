CREATE TABLE Customer (
id int,
name varchar,
referee_id int
);

select * from Customer;
insert into Customer (id, name, referee_id)
values
(1, 'will', null)
(2, 'Jane', null)
(3, 'Alex', 2)
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