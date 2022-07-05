
Create table Productss (low_fats varchar(100),recyclable varchar(100),product_id int, CHECK(low_fats IN ('Y','N')), CHECK(recyclable IN ('Y','N')))

INSERT INTO Productss (product_id, low_fats, recyclable) values ('0', 'Y', 'N');
INSERT INTO Productss (product_id, low_fats, recyclable) VALUES ('1', 'Y', 'Y');
INSERT INTO Productss (product_id, low_fats, recyclable) values ('2', 'N', 'Y');
INSERT INTO Productss (product_id, low_fats, recyclable) values ('3', 'Y', 'Y');
INSERT INTO Productss (product_id, low_fats, recyclable) values ('4', 'N', 'N');


/*
Table: Products
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
product_id is the primary key for this table.
low_fats is an ENUM of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
recyclable is an ENUM of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.

Write an SQL query to find the ids of products that are both low fat and recyclable.
Return the result table in any order.
The query result format is in the following example.

Input: 
Products table:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+
Output: 
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+

 
*/
select product_id
from Productss
where low_fats = 'Y' and recyclable = 'Y'