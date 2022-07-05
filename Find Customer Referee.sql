
Create table Customerr (name varchar(100),id int,referee_id int)

INSERT INTO Customerr (id, name) values ('1', 'Will');
INSERT INTO Customerr (id, name) values ('2', 'Jane');
INSERT INTO Customerr (id, name, referee_id) values ('3', 'Alex', '2');
INSERT INTO Customerr (id, name) values ('4', 'Bill');
INSERT INTO Customerr (id, name, referee_id) values ('5', 'Zack', '1');
INSERT INTO Customerr (id, name, referee_id) values ('6', 'Mark', '2');

select * from Customerr


/*
Write an SQL query to report the names of the customer that are not referred by the customer with id = 2.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Customer table:
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+
Output: 
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+
*/

select name from Customerr
where referee_id IS NULL or referee_id <> 2