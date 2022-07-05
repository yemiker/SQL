
Create table Customers (name varchar(100),id int)
Create table Orders (id int,customerId int)

INSERT INTO Customers (id, name) values ('1', 'Joe');
INSERT INTO Customers (id, name) values ('2', 'Henry');
INSERT INTO Customers (id, name) values ('3', 'Sam');
INSERT INTO Customers (id, name) values ('4', 'Max');
INSERT INTO Orders (id, customerId) values ('1', '3');
INSERT INTO Orders (id, customerId) values ('2', '1');


/*
Write an SQL query to report all customers who never order anything.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Customers table:
+----+-------+
| id | name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Orders table:
+----+------------+
| id | customerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
Output: 
+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+
*/

select Customers.name from Customers left join Orders on Orders.id = Customers.id
where Orders.id IS NULL