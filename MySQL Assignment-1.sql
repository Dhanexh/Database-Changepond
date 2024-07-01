MySQL ASSIGNMENT 1

   
1)Write a SQL statement to create a simple table movies which should include columns movie_id, movie_name, movie_type and movie_rating only if it does not exist.
 The combination of movie_id and movie_name should be an unique indentifier of the table.
CREATE TABLE IF NOT EXISTS movies (
movie_id INT,
movie_name VARCHAR(100),
movie_type VARCHAR(50),
movie_rating DECIMAL(3,1),
CONSTRAINT PK_movies PRIMARY KEY (movie_id, movie_name)
);

* Alter query Rename:
==>  alter table movies rename to movies_renamed;

*Add director column: 
==>alter table movies_renamed add movie_director varchar(200);

*Add column id as first column in movies table:
==>alter table movies_renamed add column column_id int first;

*Write a SQL statement to change the data type of the column movie_rating to integer: 
==> alter table movies_renamed
alter column movie_rating integer;

*drop movie director column:
==>alter table movies_renamed drop column movie_director;

*Write a SQL statement to add a column movie_description after the movie_name column in movies_renamed table:
==>ALTER TABLE movies_renamed
    -> ADD COLUMN movie_description VARCHAR(255) AFTER movie_name;
Query OK, 0 rows affected (0.04 sec)


*Write a SQL statement to drop the existing primary key from the movies_renamed table.
==>ALTER TABLE movies_renamed
DROP CONSTRAINT pk_movies_renamed;  

*Write a SQL statement to add primary key for the column movie_id in the movies_renamed table.
==>ALTER TABLE movies_renamed
ADD CONSTRAINT pk_movies_renamed PRIMARY KEY (movie_id);


*Write a SQL statement to add a foreign key constraint named fk_candidate_id on company_id column referencing to the primary key company_id from the company table.
==>ALTER TABLE other_table_name
ADD CONSTRAINT fk_candidate_id
FOREIGN KEY (company_id) REFERENCES company(company_id);



2)Write a SQL statement to create a table company which should include columns company_id, trade, number_of_employees. 
The company_id should be an unique indentifier of the table. trade and number_of_employees columns should not be null.
 The number_of_employees should be 0 by default.

 ==>CREATE TABLE company (
    company_id INT PRIMARY KEY,
    trade VARCHAR(100) NOT NULL,
    number_of_employees INT NOT NULL DEFAULT 0
);


3)Write a SQL statement to create a table job_offer which should include columns offer_id, offer_title, offer_min_salary and offer_max_salary, company_id,
 and make sure that, the default value for job_offer_title is blank, offer_min_salary is 5000 and offer_max_salary is null.
 The offer_id column should be unique. The foreign key company_id can contain only those values which exist in the company table.
 
==>CREATE TABLE job_offer (
    offer_id INT PRIMARY KEY,
    offer_title VARCHAR(100) DEFAULT '' NOT NULL,
    offer_min_salary DECIMAL(10, 2) DEFAULT 5000.00 NOT NULL,
    offer_max_salary DECIMAL(10, 2),
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES company(company_id)
);



=====================================================================================================================================================================================================
mysql> alter table movies rename to movies_renamed;
Query OK, 0 rows affected (0.07 sec)


mysql> desc movies_renamed;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| movie_id     | int          | NO   | PRI | NULL    |       |
| movie_name   | varchar(100) | NO   | PRI | NULL    |       |
| movie_type   | varchar(50)  | YES  |     | NULL    |       |
| movie_rating | decimal(3,1) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table movies_renamed add movie_director varchar(200);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc movies_renamed;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| movie_id       | int          | NO   | PRI | NULL    |       |
| movie_name     | varchar(100) | NO   | PRI | NULL    |       |
| movie_type     | varchar(50)  | YES  |     | NULL    |       |
| movie_rating   | decimal(3,1) | YES  |     | NULL    |       |
| movie_director | varchar(200) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)


mysql> ALTER TABLE movies_renamed
    -> MODIFY COLUMN movie_rating INTEGER;
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc movies_renamed;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| movie_id       | int          | NO   | PRI | NULL    |       |
| movie_name     | varchar(100) | NO   | PRI | NULL    |       |
| movie_type     | varchar(50)  | YES  |     | NULL    |       |
| movie_rating   | int          | YES  |     | NULL    |       |
| movie_director | varchar(200) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table movies_renamed
    -> drop column movie_director;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc movies_renamed;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| movie_id     | int          | NO   | PRI | NULL    |       |
| movie_name   | varchar(100) | NO   | PRI | NULL    |       |
| movie_type   | varchar(50)  | YES  |     | NULL    |       |
| movie_rating | int          | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> ALTER TABLE movies_renamed
    -> ADD COLUMN movie_description VARCHAR(255) AFTER movie_name;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc movies_renamed;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| movie_id          | int          | NO   | PRI | NULL    |       |
| movie_name        | varchar(100) | NO   | PRI | NULL    |       |
| movie_description | varchar(255) | YES  |     | NULL    |       |
| movie_type        | varchar(50)  | YES  |     | NULL    |       |
| movie_rating      | int          | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE movies_renamed
    ->
    -> ;
Query OK, 0 rows affected (0.01 sec)

mysql> alter table movies_renamed add column column_id int first;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc movies_renamed;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| column_id         | int          | YES  |     | NULL    |       |
| movie_id          | int          | NO   | PRI | NULL    |       |
| movie_name        | varchar(100) | NO   | PRI | NULL    |       |
| movie_description | varchar(255) | YES  |     | NULL    |       |
| movie_type        | varchar(50)  | YES  |     | NULL    |       |
| movie_rating      | int          | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> CREATE TABLE company (
    ->     company_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     trade VARCHAR(255) NOT NULL,
    ->     number_of_employees INT NOT NULL DEFAULT 0
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> desc company;
+---------------------+--------------+------+-----+---------+----------------+
| Field               | Type         | Null | Key | Default | Extra          |
+---------------------+--------------+------+-----+---------+----------------+
| company_id          | int          | NO   | PRI | NULL    | auto_increment |
| trade               | varchar(255) | NO   |     | NULL    |                |
| number_of_employees | int          | NO   |     | 0       |                |
+---------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE job_offer (
    ->     offer_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     offer_title VARCHAR(255) DEFAULT '',
    ->     offer_min_salary DECIMAL(10, 2) NOT NULL DEFAULT 5000,
    ->     offer_max_salary DECIMAL(10, 2),
    ->     company_id INT,
    ->     FOREIGN KEY (company_id) REFERENCES company(company_id)
    -> );
Query OK, 0 rows affected (0.15 sec)

mysql> desc job_offer;
+------------------+---------------+------+-----+---------+----------------+
| Field            | Type          | Null | Key | Default | Extra          |
+------------------+---------------+------+-----+---------+----------------+
| offer_id         | int           | NO   | PRI | NULL    | auto_increment |
| offer_title      | varchar(255)  | YES  |     |         |                |
| offer_min_salary | decimal(10,2) | NO   |     | 5000.00 |                |
| offer_max_salary | decimal(10,2) | YES  |     | NULL    |                |
| company_id       | int           | YES  | MUL | NULL    |                |
+------------------+---------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> alter table movies_renamed  drop primary key;
Query OK, 0 rows affected (0.19 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc movies_renamed;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| column_id         | int          | YES  |     | NULL    |       |
| movie_id          | int          | NO   |     | NULL    |       |
| movie_name        | varchar(100) | NO   |     | NULL    |       |
| movie_description | varchar(255) | YES  |     | NULL    |       |
| movie_type        | varchar(50)  | YES  |     | NULL    |       |
| movie_rating      | int          | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> alter table movies_renamed add primary key(movie_id);
Query OK, 0 rows affected (0.16 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc movies_renamed;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| column_id         | int          | YES  |     | NULL    |       |
| movie_id          | int          | NO   | PRI | NULL    |       |
| movie_name        | varchar(100) | NO   |     | NULL    |       |
| movie_description | varchar(255) | YES  |     | NULL    |       |
| movie_type        | varchar(50)  | YES  |     | NULL    |       |
| movie_rating      | int          | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)


mysql> show tables;
+----------------+
| Tables_in_cdb  |
+----------------+
| company        |
| job_offer      |
| movies_renamed |
+----------------+
3 rows in set (0.00 sec)


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
