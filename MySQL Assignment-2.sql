MYSQL ASSIGNMENT 2

+-------------+-------------+-------------+----------+--------------+------------+------------+--------+----------------+------------+---------------+
| employee_id | first_name  | last_name   | email    | phone_number | hire_date  | job_id     | salary | commission_pct | manager_id | department_id |
+-------------+-------------+-------------+----------+--------------+------------+------------+--------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES    |  24000 |           NULL |       NULL |            20 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568 | 1989-11-21 | AD_VP      |  17000 |           NULL |        100 |            20 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569 | 1993-09-12 | AD_VP      |  17000 |           NULL |        100 |            30 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567 | 1990-09-30 | IT_PROG    |   9000 |           NULL |        102 |            60 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568 | 1991-05-21 | IT_PROG    |   6000 |           NULL |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569 | 1997-06-25 | IT_PROG    |   4800 |           NULL |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560 | 1998-02-05 | IT_PROG    |   4800 |           NULL |        103 |            40 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567 | 1999-02-09 | IT_PROG    |   4200 |           NULL |        103 |            40 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569 | 1994-08-17 | FI_MGR     |  12000 |           NULL |        101 |           100 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169 | 1994-08-12 | FI_ACCOUNT |   9000 |           NULL |        108 |           170 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269 | 1997-04-09 | FI_ACCOUNT |   8200 |           NULL |        108 |           170 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369 | 1997-02-01 | FI_ACCOUNT |   7700 |           NULL |        108 |           160 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469 | 1998-06-03 | FI_ACCOUNT |   7800 |           NULL |        108 |           150 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567 | 1999-12-07 | FI_ACCOUNT |   6900 |           NULL |        108 |           140 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561 | 1994-11-08 | PU_MAN     |  11000 |           NULL |        100 |            30 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562 | 1995-05-12 | PU_CLERK   |   3100 |           NULL |        114 |            80 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563 | 1997-12-13 | PU_CLERK   |   2900 |           NULL |        114 |            70 |
|         117 | Sigal       | Tobias      | STOBIas  | 515.127.4564 | 1997-09-10 | PU_CLERK   |   2800 |           NULL |        114 |            30 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565 | 1998-01-02 | PU_CLERK   |   2600 |           NULL |        114 |            60 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566 | 1999-04-08 | PU_CLERK   |   2500 |           NULL |        114 |           130 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234 | 1996-07-18 | ST_MAN     |   8000 |           NULL |        100 |            50 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234 | 1997-08-09 | ST_MAN     |   8200 |           NULL |        100 |            50 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234 | 1995-05-01 | ST_MAN     |   7900 |           NULL |        100 |            40 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234 | 1997-10-12 | ST_MAN     |   6500 |           NULL |        100 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234 | 1999-11-12 | ST_MAN     |   5800 |           NULL |        100 |            80 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214 | 1997-07-02 | ST_CLERK   |   3200 |           NULL |        120 |            50 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224 | 1998-11-12 | ST_CLERK   |   2700 |           NULL |        120 |            50 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334 | 1999-01-02 | ST_CLERK   |   2400 |           NULL |        120 |            90 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434 | 2000-03-04 | ST_CLERK   |   2200 |           NULL |        120 |            50 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234 | 1997-09-10 | ST_CLERK   |   3300 |           NULL |        121 |            50 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234 | 1997-10-12 | ST_CLERK   |   2800 |           NULL |        121 |           110 |
+-------------+-------------+-------------+----------+--------------+------------+------------+--------+----------------+------------+---------------+


1. Get department,total salary with respect to a department from employee table.
select department_id,sum(salary) from employee group by department_id;
+---------------+-------------+
| department_id | sum(salary) |
+---------------+-------------+
|            20 |       41000 |
|            30 |       30800 |
|            40 |       16900 |
|            50 |       34100 |
|            60 |       22400 |
|            70 |        2900 |
|            80 |        8900 |
|            90 |        2400 |
|           100 |       12000 |
|           110 |        2800 |
|           130 |        2500 |
|           140 |        6900 |
|           150 |        7800 |
|           160 |        7700 |
|           170 |       17200 |
+---------------+-------------+


2. Get department,total salary with respect to a department from employee table order by total salary descending
select department_id,sum(salary) from employee group by department_id order by sum(salary) desc;
+---------------+-------------+
| department_id | sum(salary) |
+---------------+-------------+
|            20 |       41000 |
|            50 |       34100 |
|            30 |       30800 |
|            60 |       22400 |
|           170 |       17200 |
|            40 |       16900 |
|           100 |       12000 |
|            80 |        8900 |
|           150 |        7800 |
|           160 |        7700 |
|           140 |        6900 |
|            70 |        2900 |
|           110 |        2800 |
|           130 |        2500 |
|            90 |        2400 |
+---------------+-------------+


3. Get department wise maximum salary from employee table order by salary ascending
select department_id,max(salary) from employee group by department_id order by max(salary);
+---------------+-------------+
| department_id | max(salary) |
+---------------+-------------+
|            90 |        2400 |
|           130 |        2500 |
|           110 |        2800 |
|            70 |        2900 |
|            80 |        5800 |
|           140 |        6900 |
|           160 |        7700 |
|           150 |        7800 |
|            40 |        7900 |
|            50 |        8200 |
|            60 |        9000 |
|           170 |        9000 |
|           100 |       12000 |
|            30 |       17000 |
|            20 |       24000 |
+---------------+-------------+


4. Get department wise minimum salary from employee table order by salary ascending
select department_id,min(salary) from employee group by department_id order by min(salary);
+---------------+-------------+
| department_id | min(salary) |
+---------------+-------------+
|            50 |        2200 |
|            90 |        2400 |
|           130 |        2500 |
|            60 |        2600 |
|            30 |        2800 |
|           110 |        2800 |
|            70 |        2900 |
|            80 |        3100 |
|            40 |        4200 |
|           140 |        6900 |
|           160 |        7700 |
|           150 |        7800 |
|           170 |        8200 |
|           100 |       12000 |
|            20 |       17000 |
+---------------+-------------+


5. select department,total salary with respect to a department from employee table where total salary greater
-- than 800000 order by Total_Salary descending
select department_id,sum(salary) from employee group by department_id having sum(salary) > 800000 order by sum(salary) desc;
Empty set (0.00 sec)


6. select employees first name, last name, job_id and salary whose first name starts with alphabet S
select first_name,last_name,job_id,salary from employee where first_name like 's%';
+------------+-----------+----------+--------+
| first_name | last_name | job_id   | salary |
+------------+-----------+----------+--------+
| Steven     | King      | AD_PRES  |  24000 |
| Shelli     | Baida     | PU_CLERK |   2900 |
| Sigal      | Tobias    | PU_CLERK |   2800 |
| Shanta     | Vollman   | ST_MAN   |   6500 |
| Steven     | Markle    | ST_CLERK |   2200 |
+------------+-----------+----------+--------+


7. Write a query to select employee with the highest salary
select * from employee order by salary desc limit 1;
 +-------------+------------+-----------+-------+--------------+------------+---------+--------+----------------+------------+---------------+
| employee_id | first_name | last_name | email | phone_number | hire_date  | job_id  | salary | commission_pct | manager_id | department_id |
+-------------+------------+-----------+-------+--------------+------------+---------+--------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING | 515.123.4567 | 1987-06-17 | AD_PRES |  24000 |           NULL |       NULL |            20 |
+-------------+------------+-----------+-------+--------------+------------+---------+--------+----------------+------------+---------------+


8. select employee with the second highest salary
select * from employee order by salary desc limit 1,1;
+-------------+------------+-----------+----------+--------------+------------+--------+--------+----------------+------------+---------------+
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id | salary | commission_pct | manager_id | department_id |
+-------------+------------+-----------+----------+--------------+------------+--------+--------+----------------+------------+---------------+
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1989-11-21 | AD_VP  |  17000 |           NULL |        100 |            20 |
+-------------+------------+-----------+----------+--------------+------------+--------+--------+----------------+------------+---------------+


9. Get the count of employees hired year wise
select count(*),year(hire_date) from employee group by year(hire_date);
+----------+-----------------+
| count(*) | year(hire_date) |
+----------+-----------------+
|        1 |            1987 |
|        1 |            1989 |
|        1 |            1993 |
|        1 |            1990 |
|        1 |            1991 |
|       10 |            1997 |
|        4 |            1998 |
|        5 |            1999 |
|        3 |            1994 |
|        2 |            1995 |
|        1 |            1996 |
|        1 |            2000 |
+----------+-----------------+


10. select the employees whose first_name contains “an”
select first_name from employee where first_name like '%an%';
+-------------+
| first_name  |
+-------------+
| Alexander   |
| Diana       |
| Nancy       |
| Daniel      |
| Jose Manuel |
| Alexander   |
| Shanta      |
+-------------+


11. Find the employees who fromed in August, 1994.
select * from employee where month(hire_date) = 8 and year(hire_date) = 1994;
+-------------+------------+-----------+----------+--------------+------------+------------+--------+----------------+------------+---------------+
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id     | salary | commission_pct | manager_id | department_id |
+-------------+------------+-----------+----------+--------------+------------+------------+--------+----------------+------------+---------------+
|         108 | Nancy      | Greenberg | NGREENBE | 515.124.4569 | 1994-08-17 | FI_MGR     |  12000 |           NULL |        101 |           100 |
|         109 | Daniel     | Faviet    | DFAVIET  | 515.124.4169 | 1994-08-12 | FI_ACCOUNT |   9000 |           NULL |        108 |           170 |
+-------------+------------+-----------+----------+--------------+------------+------------+--------+----------------+------------+---------------+


12. Write a SQL query to display the 5 least earning employees
select * from employee order by salary limit 5;
+-------------+------------+-------------+----------+--------------+------------+----------+--------+----------------+------------+---------------+
| employee_id | first_name | last_name   | email    | phone_number | hire_date  | job_id   | salary | commission_pct | manager_id | department_id |
+-------------+------------+-------------+----------+--------------+------------+----------+--------+----------------+------------+---------------+
|         128 | Steven     | Markle      | SMARKLE  | 650.124.1434 | 2000-03-04 | ST_CLERK |   2200 |           NULL |        120 |            50 |
|         127 | James      | Landry      | JLANDRY  | 650.124.1334 | 1999-01-02 | ST_CLERK |   2400 |           NULL |        120 |            90 |
|         119 | Karen      | Colmenares  | KCOLMENA | 515.127.4566 | 1999-04-08 | PU_CLERK |   2500 |           NULL |        114 |           130 |
|         118 | Guy        | Himuro      | GHIMURO  | 515.127.4565 | 1998-01-02 | PU_CLERK |   2600 |           NULL |        114 |            60 |
|         126 | Irene      | Mikkilineni | IMIKKILI | 650.124.1224 | 1998-11-12 | ST_CLERK |   2700 |           NULL |        120 |            50 |
+-------------+------------+-------------+----------+--------------+------------+----------+--------+----------------+------------+---------------+


13. Find the employees hired in the 80s
select * from employee where year(hire_date) between 1980 and 1989 ;
+-------------+------------+-----------+----------+--------------+------------+---------+--------+----------------+------------+---------------+
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id  | salary | commission_pct | manager_id | department_id |
+-------------+------------+-----------+----------+--------------+------------+---------+--------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES |  24000 |           NULL |       NULL |            20 |
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1989-11-21 | AD_VP   |  17000 |           NULL |        100 |            20 |
+-------------+------------+-----------+----------+--------------+------------+---------+--------+----------------+------------+---------------+


14. Find the employees who fromed the company after 15th of the month
select * from employee where day(hire_date) > 15;
+-------------+------------+-----------+----------+--------------+------------+---------+--------+----------------+------------+---------------+
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id  | salary | commission_pct | manager_id | department_id |
+-------------+------------+-----------+----------+--------------+------------+---------+--------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES |  24000 |           NULL |       NULL |            20 |
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1989-11-21 | AD_VP   |  17000 |           NULL |        100 |            20 |
|         103 | Alexander  | Hunold    | AHUNOLD  | 590.423.4567 | 1990-09-30 | IT_PROG |   9000 |           NULL |        102 |            60 |
|         104 | Bruce      | Ernst     | BERNST   | 590.423.4568 | 1991-05-21 | IT_PROG |   6000 |           NULL |        103 |            60 |
|         105 | David      | Austin    | DAUSTIN  | 590.423.4569 | 1997-06-25 | IT_PROG |   4800 |           NULL |        103 |            60 |
|         108 | Nancy      | Greenberg | NGREENBE | 515.124.4569 | 1994-08-17 | FI_MGR  |  12000 |           NULL |        101 |           100 |
|         120 | Matthew    | Weiss     | MWEISS   | 650.123.1234 | 1996-07-18 | ST_MAN  |   8000 |           NULL |        100 |            50 |
+-------------+------------+-----------+----------+--------------+------------+---------+--------+----------------+------------+---------------+


15. find the count of employees who not received the commission
select count(*) from employee where commission_pct = null;
+----------+
| count(*) |
+----------+
|        0 |
+----------+
1 row in set (0.11 sec)


16. Calculate the total salary inclusive of commission for all the employees
select sum(salary+ifnull(commission_pct, 0)) from employee;
+---------------------------------------+
| sum(salary+ifnull(commission_pct, 0)) |
+---------------------------------------+
|                                216300 |
+---------------------------------------+


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









