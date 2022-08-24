1. Count the number of students of each department.

mysql> SELECT branch, COUNT(*)  FROM studentss  GROUP BY branch;
+--------+----------+
| branch | COUNT(*) |
+--------+----------+
| cse    |        2 |
| etc    |        3 |
| eee    |        1 |
| bme    |        1 |
+--------+----------+
4 rows in set (0.01 sec)

2. Count the number of students of each department where the department name starts with ‘E’.
mysql> SELECT  COUNT(*)  FROM studentss   WHERE branch LIKE "e%" ;
+----------+
| COUNT(*) |
+----------+
|        4 |
+----------+
1 row in set (0.00 sec)


3. Add a field called MARKS to the table STUDENT which can hold a number upto 8 digit length.
mysql> ALTER TABLE studentss ADD marks int;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0


4. Modify the field :”NAME” of the table STUDENT to hold a maximum of 25 character.

mysql> ALTER TABLE studentss modify COLUMN name varchar(25);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

5. Delete all rows from the table STUDENT where branch is ETC.


mysql> DELETE FROM studentss WHERE branch="etc";
Query OK, 3 rows affected (0.01 sec)

mysql> select * from studentss;
+--------+------+--------+---------+-------+
| name   | roll | branch | city    | marks |
+--------+------+--------+---------+-------+
| vijaya |  150 | cse    | chennai |  NULL |
| ravi   |  300 | eee    | delhi   |  NULL |
| karan  |  111 | cse    | ctc     |  NULL |
| rekha  |  117 | bme    | bbsr    |  NULL |
+--------+------+--------+---------+-------+
4 rows in set (0.00 sec)


6. Rename the table STUDENT to STUDINFORMATION.

mysql> ALTER TABLE  studentss RENAME TO studentsinfo;
Query OK, 0 rows affected (0.03 sec)


7. Delete all the data part from the table STUDENT.

mysql> delete from studentsinfo;
Query OK, 4 rows affected (0.02 sec)

8. Destroy the table STUDENT.
mysql> drop table studentsinfo;
Query OK, 0 rows affected (0.02 sec)
