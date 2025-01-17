MySQL Assignment 4

===============================================================================================================================================================================================
Lab Activity 1:

mysql> CREATE TABLE Student (
    -> StdID INT(4) PRIMARY KEY, StdName VARCHAR(30) NOT NULL, Sex VARCHAR(10), Percentage DECIMAL(5,2), SClass INT ,  Sec VARCHAR(1), Stream VARCHAR(10), DOB DATE );
Query OK, 0 rows affected, 1 warning (0.28 sec)



================================================================================================================================================================================================

mysql> INSERT INTO Student VALUES (1001, 'AKSHRA AGARWAL','FEMALE',70,11,'A','Science','1996-11-10');
Query OK, 1 row affected (0.06 sec)

mysql> select*from student;
+-------+----------------+--------+------------+--------+------+---------+------------+
| StdID | StdName        | Sex    | Percentage | SClass | Sec  | Stream  | DOB        |
+-------+----------------+--------+------------+--------+------+---------+------------+
|  1001 | AKSHRA AGARWAL | FEMALE |      70.00 |     11 | A    | Science | 1996-11-10 |
+-------+----------------+--------+------------+--------+------+---------+------------+
1 row in set (0.00 sec)


================================================================================================================================================================================================
mysql> INSERT INTO Student (StdID, StdName, Sex, Percentage, SClass, Sec, Stream, DOB)
    -> VALUES
    -> (1002, 'ANJANI SHARMA', 'FEMALE', 75, 11, 'A', 'Commerce', '1996-09-18'),
    -> (1003, 'ANSHUL SAXENA', 'MALE', 78, 11, 'A', 'Commerce', '1996-11-19'),
    -> (1004, 'AISHWARYA SINGH', 'FEMALE', null, 11, 'A', 'Commerce', '1996-11-01'),
    -> (1005, 'AKRITI SAXENA', 'FEMALE', 76, 11, 'A', 'Commerce', '1996-09-20'),
    -> (1006, 'KHUSHI AGARWAL', 'FEMALE', null, 11, 'A', 'Commerce', '2003-09-14'),
    -> (1007, 'MAAHI AGARWAL', 'FEMALE', null, 11, 'A', 'Science', '1997-04-21'),
    -> (1008, 'MITALI GUPTA', 'FEMALE', 78, 12, 'A', 'Science', '1997-11-26'),
    -> (1009, 'NIKUNJ AGARWAL', 'MALE', 58, 12, 'A', 'Science', '1997-07-12'),
    -> (1010, 'PARKHI', 'FEMALE', 59, 12, 'A', 'Commerce', '1997-12-20'),
    -> (1011, 'PRAKHAR TIWARI', 'MALE', 43, 12, 'A', 'Science', '1997-04-22'),
    -> (1012, 'RAGHAV GANGWAR', 'MALE', 58, 12, 'A', 'Commerce', '1997-12-21'),
    -> (1013, 'SAHIL SARASWAT', 'MALE', 57, 12, 'A', 'Commerce', '1997-08-13'),
    -> (1014, 'SWATI MISHRA', 'FEMALE', null, 11, 'A', 'Science', '1996-08-13'),
    -> (1015, 'HARSH AGARWAL', 'MALE', 58, 11, 'B', 'Science', '2003-08-28'),
    -> (1016, 'HARSHIT KUMAR', 'MALE', 98, 11, 'B', 'Science', '2003-05-22'),
    -> (1017, 'JAHANVI KAPOOR', 'MALE', 65, 11, 'B', 'Science', '1997-01-10'),
    -> (1018, 'STUTI MISHRA', 'MALE', 66, 11, 'C', 'Commerce', '1996-01-10'),
    -> (1019, 'SURYANSH KUMAR AGARWAL', 'MALE', 85, 11, 'C', 'Commerce', '2007-08-22'),
    -> (1020, 'TANI RASTOGI', 'FEMALE', 75, 12, 'C', 'Commerce', '1998-01-15'),
    -> (1021, 'TANISHK GUPTA', 'MALE', 55, 12, 'C', 'Science', '1998-04-11'),
    -> (1022, 'TANMAY AGARWAL', 'MALE', 57, 11, 'C', 'Commerce', '1998-06-28'),
    -> (1023, 'YASH SAXENA', 'MALE', 79, 11, 'C', 'Science', '1998-03-13'),
    -> (1024, 'YESH DUBEY', 'MALE', 85, 12, 'C', 'Commerce', '1998-04-03');
Query OK, 23 rows affected (0.08 sec)
Records: 23  Duplicates: 0  Warnings: 0

==============================================================================================================================================================================================
 Lab Activity 2:

1)To display all the records form STUDENT table.  

mysql> select*from student;
+-------+------------------------+--------+------------+--------+------+----------+------------+
| StdID | StdName                | Sex    | Percentage | SClass | Sec  | Stream   | DOB        |
+-------+------------------------+--------+------------+--------+------+----------+------------+
|  1001 | AKSHRA AGARWAL         | FEMALE |      70.00 |     11 | A    | Science  | 1996-11-10 |
|  1002 | ANJANI SHARMA          | FEMALE |      75.00 |     11 | A    | Commerce | 1996-09-18 |
|  1003 | ANSHUL SAXENA          | MALE   |      78.00 |     11 | A    | Commerce | 1996-11-19 |
|  1004 | AISHWARYA SINGH        | FEMALE |       NULL |     11 | A    | Commerce | 1996-11-01 |
|  1005 | AKRITI SAXENA          | FEMALE |      76.00 |     11 | A    | Commerce | 1996-09-20 |
|  1006 | KHUSHI AGARWAL         | FEMALE |       NULL |     11 | A    | Commerce | 2003-09-14 |
|  1007 | MAAHI AGARWAL          | FEMALE |       NULL |     11 | A    | Science  | 1997-04-21 |
|  1008 | MITALI GUPTA           | FEMALE |      78.00 |     12 | A    | Science  | 1997-11-26 |
|  1009 | NIKUNJ AGARWAL         | MALE   |      58.00 |     12 | A    | Science  | 1997-07-12 |
|  1010 | PARKHI                 | FEMALE |      59.00 |     12 | A    | Commerce | 1997-12-20 |
|  1011 | PRAKHAR TIWARI         | MALE   |      43.00 |     12 | A    | Science  | 1997-04-22 |
|  1012 | RAGHAV GANGWAR         | MALE   |      58.00 |     12 | A    | Commerce | 1997-12-21 |
|  1013 | SAHIL SARASWAT         | MALE   |      57.00 |     12 | A    | Commerce | 1997-08-13 |
|  1014 | SWATI MISHRA           | FEMALE |       NULL |     11 | A    | Science  | 1996-08-13 |
|  1015 | HARSH AGARWAL          | MALE   |      58.00 |     11 | B    | Science  | 2003-08-28 |
|  1016 | HARSHIT KUMAR          | MALE   |      98.00 |     11 | B    | Science  | 2003-05-22 |
|  1017 | JAHANVI KAPOOR         | MALE   |      65.00 |     11 | B    | Science  | 1997-01-10 |
|  1018 | STUTI MISHRA           | MALE   |      66.00 |     11 | C    | Commerce | 1996-01-10 |
|  1019 | SURYANSH KUMAR AGARWAL | MALE   |      85.00 |     11 | C    | Commerce | 2007-08-22 |
|  1020 | TANI RASTOGI           | FEMALE |      75.00 |     12 | C    | Commerce | 1998-01-15 |
|  1021 | TANISHK GUPTA          | MALE   |      55.00 |     12 | C    | Science  | 1998-04-11 |
|  1022 | TANMAY AGARWAL         | MALE   |      57.00 |     11 | C    | Commerce | 1998-06-28 |
|  1023 | YASH SAXENA            | MALE   |      79.00 |     11 | C    | Science  | 1998-03-13 |
|  1024 | YESH DUBEY             | MALE   |      85.00 |     12 | C    | Commerce | 1998-04-03 |
+-------+------------------------+--------+------------+--------+------+----------+------------+
24 rows in set (0.00 sec)

==============================================================================================================================================================================================

2)To display ony name and date of birth from the table STUDENT.  

mysql> SELECT StdName, DOB FROM student ;
+------------------------+------------+
| StdName                | DOB        |
+------------------------+------------+
| AKSHRA AGARWAL         | 1996-11-10 |
| ANJANI SHARMA          | 1996-09-18 |
| ANSHUL SAXENA          | 1996-11-19 |
| AISHWARYA SINGH        | 1996-11-01 |
| AKRITI SAXENA          | 1996-09-20 |
| KHUSHI AGARWAL         | 2003-09-14 |
| MAAHI AGARWAL          | 1997-04-21 |
| MITALI GUPTA           | 1997-11-26 |
| NIKUNJ AGARWAL         | 1997-07-12 |
| PARKHI                 | 1997-12-20 |
| PRAKHAR TIWARI         | 1997-04-22 |
| RAGHAV GANGWAR         | 1997-12-21 |
| SAHIL SARASWAT         | 1997-08-13 |
| SWATI MISHRA           | 1996-08-13 |
| HARSH AGARWAL          | 2003-08-28 |
| HARSHIT KUMAR          | 2003-05-22 |
| JAHANVI KAPOOR         | 1997-01-10 |
| STUTI MISHRA           | 1996-01-10 |
| SURYANSH KUMAR AGARWAL | 2007-08-22 |
| TANI RASTOGI           | 1998-01-15 |
| TANISHK GUPTA          | 1998-04-11 |
| TANMAY AGARWAL         | 1998-06-28 |
| YASH SAXENA            | 1998-03-13 |
| YESH DUBEY             | 1998-04-03 |
+------------------------+------------+
24 rows in set (0.00 sec)

=============================================================================================================================================================================================
3)To display all students record where percentage is greater of equal to 80 FROM student table. 

mysql> SELECT * FROM student WHERE percentage >= 80;
+-------+------------------------+------+------------+--------+------+----------+------------+
| StdID | StdName                | Sex  | Percentage | SClass | Sec  | Stream   | DOB        |
+-------+------------------------+------+------------+--------+------+----------+------------+
|  1016 | HARSHIT KUMAR          | MALE |      98.00 |     11 | B    | Science  | 2003-05-22 |
|  1019 | SURYANSH KUMAR AGARWAL | MALE |      85.00 |     11 | C    | Commerce | 2007-08-22 |
|  1024 | YESH DUBEY             | MALE |      85.00 |     12 | C    | Commerce | 1998-04-03 |
+-------+------------------------+------+------------+--------+------+----------+------------+
3 rows in set (0.02 sec)

==============================================================================================================================================================================================

4. To display student name, stream and percentage where percentage of student is more than 80  

mysql> SELECT StdName, Stream, Percentage from student WHERE percentage > 80;
+------------------------+----------+------------+
| StdName                | Stream   | Percentage |
+------------------------+----------+------------+
| HARSHIT KUMAR          | Science  |      98.00 |
| SURYANSH KUMAR AGARWAL | Commerce |      85.00 |
| YESH DUBEY             | Commerce |      85.00 |
+------------------------+----------+------------+
3 rows in set (0.00 sec)

==============================================================================================================================================================================================

5. To display all records of science students whose percentage is more than 75 form student table.


mysql> SELECT * FROM student WHERE stream='Science' AND percentage > 75;
+-------+---------------+--------+------------+--------+------+---------+------------+
| StdID | StdName       | Sex    | Percentage | SClass | Sec  | Stream  | DOB        |
+-------+---------------+--------+------------+--------+------+---------+------------+
|  1008 | MITALI GUPTA  | FEMALE |      78.00 |     12 | A    | Science | 1997-11-26 |
|  1016 | HARSHIT KUMAR | MALE   |      98.00 |     11 | B    | Science | 2003-05-22 |
|  1023 | YASH SAXENA   | MALE   |      79.00 |     11 | C    | Science | 1998-03-13 |
+-------+---------------+--------+------------+--------+------+---------+------------+
3 rows in set (0.00 sec)

==============================================================================================================================================================================================
    Lab Activity 3:
	
1. To display the STUDENT table structure. 


mysql> desc student;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| StdID      | int          | NO   | PRI | NULL    |       |
| StdName    | varchar(30)  | NO   |     | NULL    |       |
| Sex        | varchar(10)  | YES  |     | NULL    |       |
| Percentage | decimal(5,2) | YES  |     | NULL    |       |
| SClass     | int          | YES  |     | NULL    |       |
| Sec        | varchar(1)   | YES  |     | NULL    |       |
| Stream     | varchar(10)  | YES  |     | NULL    |       |
| DOB        | date         | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

==============================================================================================================================================================================================
2. To add a column (FIELD)in the STUDENT table,for example TeacherID as VARCHAR(20);


mysql> ALTER TABLE Student ADD TeacherID VARCHAR(20);
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

3. Type the statement 
DESC Student;

mysql> desc student;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| StdID      | int          | NO   | PRI | NULL    |       |
| StdName    | varchar(30)  | NO   |     | NULL    |       |
| Sex        | varchar(10)  | YES  |     | NULL    |       |
| Percentage | decimal(5,2) | YES  |     | NULL    |       |
| SClass     | int          | YES  |     | NULL    |       |
| Sec        | varchar(1)   | YES  |     | NULL    |       |
| Stream     | varchar(10)  | YES  |     | NULL    |       |
| DOB        | date         | YES  |     | NULL    |       |
| TeacherID  | varchar(20)  | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
9 rows in set (0.01 sec)


==============================================================================================================================================================================================
4. Type the statement and press enter key, note the new field that you have added as TeacherID 

mysql>  SELECT * FROM student;
+-------+------------------------+--------+------------+--------+------+----------+------------+-----------+
| StdID | StdName                | Sex    | Percentage | SClass | Sec  | Stream   | DOB        | TeacherID |
+-------+------------------------+--------+------------+--------+------+----------+------------+-----------+
|  1001 | AKSHRA AGARWAL         | FEMALE |      70.00 |     11 | A    | Science  | 1996-11-10 | NULL      |
|  1002 | ANJANI SHARMA          | FEMALE |      75.00 |     11 | A    | Commerce | 1996-09-18 | NULL      |
|  1003 | ANSHUL SAXENA          | MALE   |      78.00 |     11 | A    | Commerce | 1996-11-19 | NULL      |
|  1004 | AISHWARYA SINGH        | FEMALE |       NULL |     11 | A    | Commerce | 1996-11-01 | NULL      |
|  1005 | AKRITI SAXENA          | FEMALE |      76.00 |     11 | A    | Commerce | 1996-09-20 | NULL      |
|  1006 | KHUSHI AGARWAL         | FEMALE |       NULL |     11 | A    | Commerce | 2003-09-14 | NULL      |
|  1007 | MAAHI AGARWAL          | FEMALE |       NULL |     11 | A    | Science  | 1997-04-21 | NULL      |
|  1008 | MITALI GUPTA           | FEMALE |      78.00 |     12 | A    | Science  | 1997-11-26 | NULL      |
|  1009 | NIKUNJ AGARWAL         | MALE   |      58.00 |     12 | A    | Science  | 1997-07-12 | NULL      |
|  1010 | PARKHI                 | FEMALE |      59.00 |     12 | A    | Commerce | 1997-12-20 | NULL      |
|  1011 | PRAKHAR TIWARI         | MALE   |      43.00 |     12 | A    | Science  | 1997-04-22 | NULL      |
|  1012 | RAGHAV GANGWAR         | MALE   |      58.00 |     12 | A    | Commerce | 1997-12-21 | NULL      |
|  1013 | SAHIL SARASWAT         | MALE   |      57.00 |     12 | A    | Commerce | 1997-08-13 | NULL      |
|  1014 | SWATI MISHRA           | FEMALE |       NULL |     11 | A    | Science  | 1996-08-13 | NULL      |
|  1015 | HARSH AGARWAL          | MALE   |      58.00 |     11 | B    | Science  | 2003-08-28 | NULL      |
|  1016 | HARSHIT KUMAR          | MALE   |      98.00 |     11 | B    | Science  | 2003-05-22 | NULL      |
|  1017 | JAHANVI KAPOOR         | MALE   |      65.00 |     11 | B    | Science  | 1997-01-10 | NULL      |
|  1018 | STUTI MISHRA           | MALE   |      66.00 |     11 | C    | Commerce | 1996-01-10 | NULL      |
|  1019 | SURYANSH KUMAR AGARWAL | MALE   |      85.00 |     11 | C    | Commerce | 2007-08-22 | NULL      |
|  1020 | TANI RASTOGI           | FEMALE |      75.00 |     12 | C    | Commerce | 1998-01-15 | NULL      |
|  1021 | TANISHK GUPTA          | MALE   |      55.00 |     12 | C    | Science  | 1998-04-11 | NULL      |
|  1022 | TANMAY AGARWAL         | MALE   |      57.00 |     11 | C    | Commerce | 1998-06-28 | NULL      |
|  1023 | YASH SAXENA            | MALE   |      79.00 |     11 | C    | Science  | 1998-03-13 | NULL      |
|  1024 | YESH DUBEY             | MALE   |      85.00 |     12 | C    | Commerce | 1998-04-03 | NULL      |
+-------+------------------------+--------+------------+--------+------+----------+------------+-----------+
24 rows in set (0.00 sec)

==============================================================================================================================================================================================
5. To modify the TeacherID data type form character to integer. 


mysql>  ALTER TABLE Student MODIFY TeacherID INTEGER ;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| StdID      | int          | NO   | PRI | NULL    |       |
| StdName    | varchar(30)  | NO   |     | NULL    |       |
| Sex        | varchar(10)  | YES  |     | NULL    |       |
| Percentage | decimal(5,2) | YES  |     | NULL    |       |
| SClass     | int          | YES  |     | NULL    |       |
| Sec        | varchar(1)   | YES  |     | NULL    |       |
| Stream     | varchar(10)  | YES  |     | NULL    |       |
| DOB        | date         | YES  |     | NULL    |       |
| TeacherID  | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> select*from student;
+-------+------------------------+--------+------------+--------+------+----------+------------+-----------+
| StdID | StdName                | Sex    | Percentage | SClass | Sec  | Stream   | DOB        | TeacherID |
+-------+------------------------+--------+------------+--------+------+----------+------------+-----------+
|  1001 | AKSHRA AGARWAL         | FEMALE |      70.00 |     11 | A    | Science  | 1996-11-10 |      NULL |
|  1002 | ANJANI SHARMA          | FEMALE |      75.00 |     11 | A    | Commerce | 1996-09-18 |      NULL |
|  1003 | ANSHUL SAXENA          | MALE   |      78.00 |     11 | A    | Commerce | 1996-11-19 |      NULL |
|  1004 | AISHWARYA SINGH        | FEMALE |       NULL |     11 | A    | Commerce | 1996-11-01 |      NULL |
|  1005 | AKRITI SAXENA          | FEMALE |      76.00 |     11 | A    | Commerce | 1996-09-20 |      NULL |
|  1006 | KHUSHI AGARWAL         | FEMALE |       NULL |     11 | A    | Commerce | 2003-09-14 |      NULL |
|  1007 | MAAHI AGARWAL          | FEMALE |       NULL |     11 | A    | Science  | 1997-04-21 |      NULL |
|  1008 | MITALI GUPTA           | FEMALE |      78.00 |     12 | A    | Science  | 1997-11-26 |      NULL |
|  1009 | NIKUNJ AGARWAL         | MALE   |      58.00 |     12 | A    | Science  | 1997-07-12 |      NULL |
|  1010 | PARKHI                 | FEMALE |      59.00 |     12 | A    | Commerce | 1997-12-20 |      NULL |
|  1011 | PRAKHAR TIWARI         | MALE   |      43.00 |     12 | A    | Science  | 1997-04-22 |      NULL |
|  1012 | RAGHAV GANGWAR         | MALE   |      58.00 |     12 | A    | Commerce | 1997-12-21 |      NULL |
|  1013 | SAHIL SARASWAT         | MALE   |      57.00 |     12 | A    | Commerce | 1997-08-13 |      NULL |
|  1014 | SWATI MISHRA           | FEMALE |       NULL |     11 | A    | Science  | 1996-08-13 |      NULL |
|  1015 | HARSH AGARWAL          | MALE   |      58.00 |     11 | B    | Science  | 2003-08-28 |      NULL |
|  1016 | HARSHIT KUMAR          | MALE   |      98.00 |     11 | B    | Science  | 2003-05-22 |      NULL |
|  1017 | JAHANVI KAPOOR         | MALE   |      65.00 |     11 | B    | Science  | 1997-01-10 |      NULL |
|  1018 | STUTI MISHRA           | MALE   |      66.00 |     11 | C    | Commerce | 1996-01-10 |      NULL |
|  1019 | SURYANSH KUMAR AGARWAL | MALE   |      85.00 |     11 | C    | Commerce | 2007-08-22 |      NULL |
|  1020 | TANI RASTOGI           | FEMALE |      75.00 |     12 | C    | Commerce | 1998-01-15 |      NULL |
|  1021 | TANISHK GUPTA          | MALE   |      55.00 |     12 | C    | Science  | 1998-04-11 |      NULL |
|  1022 | TANMAY AGARWAL         | MALE   |      57.00 |     11 | C    | Commerce | 1998-06-28 |      NULL |
|  1023 | YASH SAXENA            | MALE   |      79.00 |     11 | C    | Science  | 1998-03-13 |      NULL |
|  1024 | YESH DUBEY             | MALE   |      85.00 |     12 | C    | Commerce | 1998-04-03 |      NULL |
+-------+------------------------+--------+------------+--------+------+----------+------------+-----------+
24 rows in set (0.00 sec)
===============================================================================================================================================================================================
   Lab Activity 4:
   
 1. To Drop (Delete) a field form a table. For e.g you wantto delete TeacherID field.
 
 mysql>  ALTER TABLE Student DROP TeacherID;
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| StdID      | int          | NO   | PRI | NULL    |       |
| StdName    | varchar(30)  | NO   |     | NULL    |       |
| Sex        | varchar(10)  | YES  |     | NULL    |       |
| Percentage | decimal(5,2) | YES  |     | NULL    |       |
| SClass     | int          | YES  |     | NULL    |       |
| Sec        | varchar(1)   | YES  |     | NULL    |       |
| Stream     | varchar(10)  | YES  |     | NULL    |       |
| DOB        | date         | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)
=============================================================================================================================================================================================

 2. To subtract 5 form all students percentage and display name and percentage.
 
 mysql> SELECT stdname, percentage-5 FROM Student;
+------------------------+--------------+
| stdname                | percentage-5 |
+------------------------+--------------+
| AKSHRA AGARWAL         |        65.00 |
| ANJANI SHARMA          |        70.00 |
| ANSHUL SAXENA          |        73.00 |
| AISHWARYA SINGH        |         NULL |
| AKRITI SAXENA          |        71.00 |
| KHUSHI AGARWAL         |         NULL |
| MAAHI AGARWAL          |         NULL |
| MITALI GUPTA           |        73.00 |
| NIKUNJ AGARWAL         |        53.00 |
| PARKHI                 |        54.00 |
| PRAKHAR TIWARI         |        38.00 |
| RAGHAV GANGWAR         |        53.00 |
| SAHIL SARASWAT         |        52.00 |
| SWATI MISHRA           |         NULL |
| HARSH AGARWAL          |        53.00 |
| HARSHIT KUMAR          |        93.00 |
| JAHANVI KAPOOR         |        60.00 |
| STUTI MISHRA           |        61.00 |
| SURYANSH KUMAR AGARWAL |        80.00 |
| TANI RASTOGI           |        70.00 |
| TANISHK GUPTA          |        50.00 |
| TANMAY AGARWAL         |        52.00 |
| YASH SAXENA            |        74.00 |
| YESH DUBEY             |        80.00 |
+------------------------+--------------+
24 rows in set (0.00 sec)

=============================================================================================================================================================================================

 3. Using column alise for example we wantto display StdName as Student Name and DOB as Date of Birth  then the statement will be. 

     
mysql> SELECT StdName AS "Student Name",
    -> DOB As "Date of Birth" FROM Student;
+------------------------+---------------+
| Student Name           | Date of Birth |
+------------------------+---------------+
| AKSHRA AGARWAL         | 1996-11-10    |
| ANJANI SHARMA          | 1996-09-18    |
| ANSHUL SAXENA          | 1996-11-19    |
| AISHWARYA SINGH        | 1996-11-01    |
| AKRITI SAXENA          | 1996-09-20    |
| KHUSHI AGARWAL         | 2003-09-14    |
| MAAHI AGARWAL          | 1997-04-21    |
| MITALI GUPTA           | 1997-11-26    |
| NIKUNJ AGARWAL         | 1997-07-12    |
| PARKHI                 | 1997-12-20    |
| PRAKHAR TIWARI         | 1997-04-22    |
| RAGHAV GANGWAR         | 1997-12-21    |
| SAHIL SARASWAT         | 1997-08-13    |
| SWATI MISHRA           | 1996-08-13    |
| HARSH AGARWAL          | 2003-08-28    |
| HARSHIT KUMAR          | 2003-05-22    |
| JAHANVI KAPOOR         | 1997-01-10    |
| STUTI MISHRA           | 1996-01-10    |
| SURYANSH KUMAR AGARWAL | 2007-08-22    |
| TANI RASTOGI           | 1998-01-15    |
| TANISHK GUPTA          | 1998-04-11    |
| TANMAY AGARWAL         | 1998-06-28    |
| YASH SAXENA            | 1998-03-13    |
| YESH DUBEY             | 1998-04-03    |
+------------------------+---------------+
24 rows in set (0.00 sec)
==============================================================================================================================================================================================
  4. Display the name of all students whose stream is not Science  

   mysql> SELECT StdName FROM student
    -> WHERE Stream<>'Science';
+------------------------+
| StdName                |
+------------------------+
| ANJANI SHARMA          |
| ANSHUL SAXENA          |
| AISHWARYA SINGH        |
| AKRITI SAXENA          |
| KHUSHI AGARWAL         |
| PARKHI                 |
| RAGHAV GANGWAR         |
| SAHIL SARASWAT         |
| STUTI MISHRA           |
| SURYANSH KUMAR AGARWAL |
| TANI RASTOGI           |
| TANMAY AGARWAL         |
| YESH DUBEY             |
+------------------------+
13 rows in set (0.00 sec)

===============================================================================================================================================================================================

5. Display all name and percentage where percentage is between 60 and 80

 mysql> SELECT StdName, percentage FROM student WHERE percentage >=60 AND percentage<=80 ;
+----------------+------------+
| StdName        | percentage |
+----------------+------------+
| AKSHRA AGARWAL |      70.00 |
| ANJANI SHARMA  |      75.00 |
| ANSHUL SAXENA  |      78.00 |
| AKRITI SAXENA  |      76.00 |
| MITALI GUPTA   |      78.00 |
| JAHANVI KAPOOR |      65.00 |
| STUTI MISHRA   |      66.00 |
| TANI RASTOGI   |      75.00 |
| YASH SAXENA    |      79.00 |
+----------------+------------+
9 rows in set (0.00 sec)

==============================================================================================================================================================================================

Lab Activity 5: 

1. TochangeastudentnamefromSWATIMISHRAtoSWATIVERMAwhoseStdIDis1014andalsochange  percentage 86. 

  mysql> UPDATE Student SET StdName = 'SWATI VERMA', percentage=86
    -> WHERE StdId=1014;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT *from student;
+-------+------------------------+--------+------------+--------+------+----------+------------+
| StdID | StdName                | Sex    | Percentage | SClass | Sec  | Stream   | DOB        |
+-------+------------------------+--------+------------+--------+------+----------+------------+
|  1001 | AKSHRA AGARWAL         | FEMALE |      70.00 |     11 | A    | Science  | 1996-11-10 |
|  1002 | ANJANI SHARMA          | FEMALE |      75.00 |     11 | A    | Commerce | 1996-09-18 |
|  1003 | ANSHUL SAXENA          | MALE   |      78.00 |     11 | A    | Commerce | 1996-11-19 |
|  1004 | AISHWARYA SINGH        | FEMALE |       NULL |     11 | A    | Commerce | 1996-11-01 |
|  1005 | AKRITI SAXENA          | FEMALE |      76.00 |     11 | A    | Commerce | 1996-09-20 |
|  1006 | KHUSHI AGARWAL         | FEMALE |       NULL |     11 | A    | Commerce | 2003-09-14 |
|  1007 | MAAHI AGARWAL          | FEMALE |       NULL |     11 | A    | Science  | 1997-04-21 |
|  1008 | MITALI GUPTA           | FEMALE |      78.00 |     12 | A    | Science  | 1997-11-26 |
|  1009 | NIKUNJ AGARWAL         | MALE   |      58.00 |     12 | A    | Science  | 1997-07-12 |
|  1010 | PARKHI                 | FEMALE |      59.00 |     12 | A    | Commerce | 1997-12-20 |
|  1011 | PRAKHAR TIWARI         | MALE   |      43.00 |     12 | A    | Science  | 1997-04-22 |
|  1012 | RAGHAV GANGWAR         | MALE   |      58.00 |     12 | A    | Commerce | 1997-12-21 |
|  1013 | SAHIL SARASWAT         | MALE   |      57.00 |     12 | A    | Commerce | 1997-08-13 |
|  1014 | SWATI VERMA            | FEMALE |      86.00 |     11 | A    | Science  | 1996-08-13 |
|  1015 | HARSH AGARWAL          | MALE   |      58.00 |     11 | B    | Science  | 2003-08-28 |
|  1016 | HARSHIT KUMAR          | MALE   |      98.00 |     11 | B    | Science  | 2003-05-22 |
|  1017 | JAHANVI KAPOOR         | MALE   |      65.00 |     11 | B    | Science  | 1997-01-10 |
|  1018 | STUTI MISHRA           | MALE   |      66.00 |     11 | C    | Commerce | 1996-01-10 |
|  1019 | SURYANSH KUMAR AGARWAL | MALE   |      85.00 |     11 | C    | Commerce | 2007-08-22 |
|  1020 | TANI RASTOGI           | FEMALE |      75.00 |     12 | C    | Commerce | 1998-01-15 |
|  1021 | TANISHK GUPTA          | MALE   |      55.00 |     12 | C    | Science  | 1998-04-11 |
|  1022 | TANMAY AGARWAL         | MALE   |      57.00 |     11 | C    | Commerce | 1998-06-28 |
|  1023 | YASH SAXENA            | MALE   |      79.00 |     11 | C    | Science  | 1998-03-13 |
|  1024 | YESH DUBEY             | MALE   |      85.00 |     12 | C    | Commerce | 1998-04-03 |
+-------+------------------------+--------+------------+--------+------+----------+------------+
24 rows in set (0.00 sec)

==============================================================================================================================================================================================

2. To delete the records form student table where StdId is 1016. 


mysql> DELETE FROM Student WHERE StdID = 1016;
Query OK, 1 row affected (0.03 sec)

mysql> select*from student;
+-------+------------------------+--------+------------+--------+------+----------+------------+
| StdID | StdName                | Sex    | Percentage | SClass | Sec  | Stream   | DOB        |
+-------+------------------------+--------+------------+--------+------+----------+------------+
|  1001 | AKSHRA AGARWAL         | FEMALE |      70.00 |     11 | A    | Science  | 1996-11-10 |
|  1002 | ANJANI SHARMA          | FEMALE |      75.00 |     11 | A    | Commerce | 1996-09-18 |
|  1003 | ANSHUL SAXENA          | MALE   |      78.00 |     11 | A    | Commerce | 1996-11-19 |
|  1004 | AISHWARYA SINGH        | FEMALE |       NULL |     11 | A    | Commerce | 1996-11-01 |
|  1005 | AKRITI SAXENA          | FEMALE |      76.00 |     11 | A    | Commerce | 1996-09-20 |
|  1006 | KHUSHI AGARWAL         | FEMALE |       NULL |     11 | A    | Commerce | 2003-09-14 |
|  1007 | MAAHI AGARWAL          | FEMALE |       NULL |     11 | A    | Science  | 1997-04-21 |
|  1008 | MITALI GUPTA           | FEMALE |      78.00 |     12 | A    | Science  | 1997-11-26 |
|  1009 | NIKUNJ AGARWAL         | MALE   |      58.00 |     12 | A    | Science  | 1997-07-12 |
|  1010 | PARKHI                 | FEMALE |      59.00 |     12 | A    | Commerce | 1997-12-20 |
|  1011 | PRAKHAR TIWARI         | MALE   |      43.00 |     12 | A    | Science  | 1997-04-22 |
|  1012 | RAGHAV GANGWAR         | MALE   |      58.00 |     12 | A    | Commerce | 1997-12-21 |
|  1013 | SAHIL SARASWAT         | MALE   |      57.00 |     12 | A    | Commerce | 1997-08-13 |
|  1014 | SWATI VERMA            | FEMALE |      86.00 |     11 | A    | Science  | 1996-08-13 |
|  1015 | HARSH AGARWAL          | MALE   |      58.00 |     11 | B    | Science  | 2003-08-28 |
|  1017 | JAHANVI KAPOOR         | MALE   |      65.00 |     11 | B    | Science  | 1997-01-10 |
|  1018 | STUTI MISHRA           | MALE   |      66.00 |     11 | C    | Commerce | 1996-01-10 |
|  1019 | SURYANSH KUMAR AGARWAL | MALE   |      85.00 |     11 | C    | Commerce | 2007-08-22 |
|  1020 | TANI RASTOGI           | FEMALE |      75.00 |     12 | C    | Commerce | 1998-01-15 |
|  1021 | TANISHK GUPTA          | MALE   |      55.00 |     12 | C    | Science  | 1998-04-11 |
|  1022 | TANMAY AGARWAL         | MALE   |      57.00 |     11 | C    | Commerce | 1998-06-28 |
|  1023 | YASH SAXENA            | MALE   |      79.00 |     11 | C    | Science  | 1998-03-13 |
|  1024 | YESH DUBEY             | MALE   |      85.00 |     12 | C    | Commerce | 1998-04-03 |
+-------+------------------------+--------+------------+--------+------+----------+------------+
23 rows in set (0.00 sec)

=============================================================================================================================================================================================
 3. Type the following SQL statement and note the output. 

mysql>
mysql> SELECT * FROM Student WHERE StdName LIKE 'G_' ;
Empty set (0.00 sec)

mysql> SELECT * FROM Student WHERE StdName='G';
Empty set (0.00 sec)

mysql> SELECT * FROM Student WHERE StdName LIKE 'G%' ;
Empty set (0.00 sec)

mysql> select*from student where stdname like '%G%';
+-------+------------------------+--------+------------+--------+------+----------+------------+
| StdID | StdName                | Sex    | Percentage | SClass | Sec  | Stream   | DOB        |
+-------+------------------------+--------+------------+--------+------+----------+------------+
|  1001 | AKSHRA AGARWAL         | FEMALE |      70.00 |     11 | A    | Science  | 1996-11-10 |
|  1004 | AISHWARYA SINGH        | FEMALE |       NULL |     11 | A    | Commerce | 1996-11-01 |
|  1006 | KHUSHI AGARWAL         | FEMALE |       NULL |     11 | A    | Commerce | 2003-09-14 |
|  1007 | MAAHI AGARWAL          | FEMALE |       NULL |     11 | A    | Science  | 1997-04-21 |
|  1008 | MITALI GUPTA           | FEMALE |      78.00 |     12 | A    | Science  | 1997-11-26 |
|  1009 | NIKUNJ AGARWAL         | MALE   |      58.00 |     12 | A    | Science  | 1997-07-12 |
|  1012 | RAGHAV GANGWAR         | MALE   |      58.00 |     12 | A    | Commerce | 1997-12-21 |
|  1015 | HARSH AGARWAL          | MALE   |      58.00 |     11 | B    | Science  | 2003-08-28 |
|  1019 | SURYANSH KUMAR AGARWAL | MALE   |      85.00 |     11 | C    | Commerce | 2007-08-22 |
|  1020 | TANI RASTOGI           | FEMALE |      75.00 |     12 | C    | Commerce | 1998-01-15 |
|  1021 | TANISHK GUPTA          | MALE   |      55.00 |     12 | C    | Science  | 1998-04-11 |
|  1022 | TANMAY AGARWAL         | MALE   |      57.00 |     11 | C    | Commerce | 1998-06-28 |
+-------+------------------------+--------+------------+--------+------+----------+------------+
12 rows in set (0.00 sec)

==============================================================================================================================================================================================
  4. Display all the streams in student table. 

  mysql> SELECT DISTINCT Stream FROM Student;
+----------+
| Stream   |
+----------+
| Science  |
| Commerce |
+----------+
2 rows in set (0.00 sec)

==============================================================================================================================================================================================

  5. Note the output of the following statement. 
  
  
  mysql> SELECT StdName, Sex, Stream FROM Student WHERE percentage BETWEEN 70 AND 80;
+----------------+--------+----------+
| StdName        | Sex    | Stream   |
+----------------+--------+----------+
| AKSHRA AGARWAL | FEMALE | Science  |
| ANJANI SHARMA  | FEMALE | Commerce |
| ANSHUL SAXENA  | MALE   | Commerce |
| AKRITI SAXENA  | FEMALE | Commerce |
| MITALI GUPTA   | FEMALE | Science  |
| TANI RASTOGI   | FEMALE | Commerce |
| YASH SAXENA    | MALE   | Science  |
+----------------+--------+----------+

==============================================================================================================================================================================================

Do yourself: 
Create a Table Empl to store employee details as shown below and write statements  for following queries based on the table. 



mysql> CREATE TABLE Empl (
    ->     empno INT PRIMARY KEY,
    ->     ename VARCHAR(50),
    ->     job VARCHAR(50),
    ->     mgr INT,
    ->     hiredate DATE,
    ->     sal DECIMAL(10, 2),
    ->     comm DECIMAL(10, 2),
    ->     deptno INT
    -> );
Query OK, 0 rows affected (0.43 sec)

mysql> desc empl;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| empno    | int           | NO   | PRI | NULL    |       |
| ename    | varchar(50)   | YES  |     | NULL    |       |
| job      | varchar(50)   | YES  |     | NULL    |       |
| mgr      | int           | YES  |     | NULL    |       |
| hiredate | date          | YES  |     | NULL    |       |
| sal      | decimal(10,2) | YES  |     | NULL    |       |
| comm     | decimal(10,2) | YES  |     | NULL    |       |
| deptno   | int           | YES  |     | NULL    |       |
+----------+---------------+------+-----+---------+-------+
8 rows in set (0.01 sec)


mysql> INSERT INTO Empl VALUES (8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20);
Query OK, 1 row affected (0.11 sec)

mysql> INSERT INTO Empl VALUES (8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30);
Query OK, 1 row affected (0.05 sec)

mysql> INSERT INTO Empl VALUES (8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Empl VALUES (8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Empl VALUES (8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Empl VALUES (8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30);
Query OK, 1 row affected (0.04 sec)

mysql> INSERT INTO Empl VALUES (8839, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Empl VALUES (8882, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Empl VALUES (8888, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Empl VALUES (8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);
Query OK, 1 row affected (0.04 sec)

mysql> select*from empl;
+-------+-----------+-----------+------+------------+---------+---------+--------+
| empno | ename     | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+-----------+-----------+------+------------+---------+---------+--------+
|  8369 | SMITH     | CLERK     | 8902 | 1990-12-18 |  800.00 |    NULL |     20 |
|  8499 | ANYA      | SALESMAN  | 8698 | 1991-02-20 | 1600.00 |  300.00 |     30 |
|  8521 | SETH      | SALESMAN  | 8698 | 1991-02-22 | 1250.00 |  500.00 |     30 |
|  8566 | MAHADEVAN | MANAGER   | 8839 | 1991-04-02 | 2985.00 |    NULL |     20 |
|  8654 | MOMIN     | SALESMAN  | 8698 | 1991-09-28 | 1250.00 | 1400.00 |     30 |
|  8698 | BINA      | MANAGER   | 8839 | 1991-05-01 | 2850.00 |    NULL |     30 |
|  8839 | SHIVANSH  | MANAGER   | 8839 | 1991-06-09 | 2450.00 |    NULL |     10 |
|  8844 | KULDEEP   | SALESMAN  | 8698 | 1991-09-08 | 1500.00 |    0.00 |     30 |
|  8882 | SCOTT     | ANALYST   | 8566 | 1992-12-09 | 3000.00 |    NULL |     20 |
|  8888 | AMIR      | PRESIDENT | NULL | 1991-11-18 | 5000.00 |    NULL |     10 |
+-------+-----------+-----------+------+------------+---------+---------+--------+
10 rows in set (0.00 sec)


=============================================================================================================================================================================================

a. Write a query to display EName and Sal of employees whose salary are greater than  or equal to 2200? 

 mysql> SELECT EName, Sal
    -> FROM empl
    -> WHERE sal >= 2200;
+-----------+---------+
| EName     | Sal     |
+-----------+---------+
| MAHADEVAN | 2985.00 |
| BINA      | 2850.00 |
| SHIVANSH  | 2450.00 |
| SCOTT     | 3000.00 |
| AMIR      | 5000.00 |
+-----------+---------+
5 rows in set (0.00 sec)

==============================================================================================================================================================================================

 b. Write a query to display details of employs who are not getting commission?
 
 mysql> SELECT *
    -> FROM empl
    -> WHERE comm IS NULL;
+-------+-----------+-----------+------+------------+---------+------+--------+
| empno | ename     | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+-----------+-----------+------+------------+---------+------+--------+
|  8369 | SMITH     | CLERK     | 8902 | 1990-12-18 |  800.00 | NULL |     20 |
|  8566 | MAHADEVAN | MANAGER   | 8839 | 1991-04-02 | 2985.00 | NULL |     20 |
|  8698 | BINA      | MANAGER   | 8839 | 1991-05-01 | 2850.00 | NULL |     30 |
|  8839 | SHIVANSH  | MANAGER   | 8839 | 1991-06-09 | 2450.00 | NULL |     10 |
|  8882 | SCOTT     | ANALYST   | 8566 | 1992-12-09 | 3000.00 | NULL |     20 |
|  8888 | AMIR      | PRESIDENT | NULL | 1991-11-18 | 5000.00 | NULL |     10 |
+-------+-----------+-----------+------+------------+---------+------+--------+

==============================================================================================================================================================================================

 c. Write a query to display employee name and salary of those employees who don’t have  their salary in range of 2500 to 4000? 

mysql> SELECT EName, Sal
    -> FROM empl
    -> WHERE Sal < 2500 OR Sal > 4000;
+----------+---------+
| EName    | Sal     |
+----------+---------+
| SMITH    |  800.00 |
| ANYA     | 1600.00 |
| SETH     | 1250.00 |
| MOMIN    | 1250.00 |
| SHIVANSH | 2450.00 |
| KULDEEP  | 1500.00 |
| AMIR     | 5000.00 |
+----------+---------+


================================================================================================================================================================================================
 d. Write a query to display the name, job title and salary of employees who don’t have manager? 
 
 mysql> SELECT EName, job, Sal
    -> FROM empl
    -> WHERE mgr IS NULL;
+-------+-----------+---------+
| EName | job       | Sal     |
+-------+-----------+---------+
| AMIR  | PRESIDENT | 5000.00 |
+-------+-----------+---------+
1 row in set (0.00 sec)

==============================================================================================================================================================================================
e. Write a query to display the name of employee whose name contains “A” as third alphabet?

   mysql> SELECT EName
    -> FROM empl
    -> WHERE EName LIKE '__A%';
Empty set (0.00 sec)

==============================================================================================================================================================================================

f. Write a query to display the name of employee whose name contains “T” as last alphabet? 

   mysql> SELECT EName
    -> FROM empl
    -> WHERE EName LIKE '%T';
+-------+
| EName |
+-------+
| SCOTT |
+-------+
1 row in set (0.00 sec)

==============================================================================================================================================================================================

g. Write a query to display the name of employee whose name contains ”M” as First and  “L” as third alphabet? 

  mysql> SELECT EName
    -> FROM empl
    -> WHERE EName LIKE 'M_L%';
Empty set (0.00 sec)

==============================================================================================================================================================================================

h. Write a query to display details of employs with the text “Not given”, if commission is null?

mysql> SELECT empno, ename, job, mgr, hiredate, sal,
    ->        CASE
    ->            WHEN comm IS NULL THEN 'Not given'
    ->            ELSE comm
    ->        END AS comm,
    ->        deptno
    -> FROM empl;
+-------+-----------+-----------+------+------------+---------+-----------+--------+
| empno | ename     | job       | mgr  | hiredate   | sal     | comm      | deptno |
+-------+-----------+-----------+------+------------+---------+-----------+--------+
|  8369 | SMITH     | CLERK     | 8902 | 1990-12-18 |  800.00 | Not given |     20 |
|  8499 | ANYA      | SALESMAN  | 8698 | 1991-02-20 | 1600.00 | 300.00    |     30 |
|  8521 | SETH      | SALESMAN  | 8698 | 1991-02-22 | 1250.00 | 500.00    |     30 |
|  8566 | MAHADEVAN | MANAGER   | 8839 | 1991-04-02 | 2985.00 | Not given |     20 |
|  8654 | MOMIN     | SALESMAN  | 8698 | 1991-09-28 | 1250.00 | 1400.00   |     30 |
|  8698 | BINA      | MANAGER   | 8839 | 1991-05-01 | 2850.00 | Not given |     30 |
|  8839 | SHIVANSH  | MANAGER   | 8839 | 1991-06-09 | 2450.00 | Not given |     10 |
|  8844 | KULDEEP   | SALESMAN  | 8698 | 1991-09-08 | 1500.00 | 0.00      |     30 |
|  8882 | SCOTT     | ANALYST   | 8566 | 1992-12-09 | 3000.00 | Not given |     20 |
|  8888 | AMIR      | PRESIDENT | NULL | 1991-11-18 | 5000.00 | Not given |     10 |
+-------+-----------+-----------+------+------------+---------+-----------+--------+
10 rows in set (0.00 sec)



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
