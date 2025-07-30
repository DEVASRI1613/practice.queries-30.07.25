create database workkedd;
use workkedd;
create table workkeddtable(emp_id int primary key,firstname varchar(255),lastname varchar(255),salary int,joining_date date,department varchar(255));
insert into workkeddtable values(1,"Venkatesh","S",100000,"2015-08-28","BANKING");
insert into workkeddtable values(2,"Ragavi","P",75000,"2015-08-28","BUSINESS"),
(3,"Gopinath","C",50000,"2016-03-02","PHARMA"),
(4,"Dinesh","G",50000,"2016-03-02","INSURANCE"),
(5,"Saibabu","E",40000,"2017-07-08","SOFTWARE"),
(6,"Hasan","S",29000,"2017-07-08","MANUFACTURING"),
(7,"Divya","P",33000,"2017-07-08","HEALTHCARE"),
(8,"Aravindan","R",40000,"2017-07-08","HEALTHCARE"),
(9,"Sathish","MD",45000,"2016-03-02","AUTOMOBILE"),
(10,"Prasanth","PKP",34000,"2016-03-02","INSURANCE"),
(11,"Vijay","R",25684,"2016/03/02","BUSINESS"),
(12,"Sivakumar","k",54789,"2016/03/02","SOFTWARE");
-- Get all employee details from the employee table
select * from workkeddtable;
-- Get First_Name,Last_Name from employee table
select firstname, lastname from workkeddtable;
-- Get First_Name from employee table using alias name “Employee Name”
select firstname as employeesname from workkeddtable;
-- Get First_Name from employee table in upper case
select Upper(firstname) from workkeddtable;
-- Get First_Name from employee table in lower case
select lower(firstname) from workkeddtable;
-- Get unique DEPARTMENT from employee table
select distinct department from workkeddtable;
-- Select first 3 characters of FIRST_NAME from EMPLOYEE
select substring(firstname,1,3) from workkeddtable;
-- Get position of 'a' in name 'ragavi' from employee table
select position("a" in "Ragavi");
-- Get FIRST_NAME from employee table after removing white spaces from right side
select rtrim(firstname) from workkeddtable;
-- Get FIRST_NAME from employee table after removing white spaces from left side
select ltrim(firstname) from workkeddtable;
-- Get length of FIRST_NAME from employee table
select length(firstname) from workkeddtable;
-- Get First_Name from employee table after replacing 'a' with '$'
select replace(firstname,"a","$") from workkeddtable;
-- Get First_Name and Last_Name as single column from employee table separated by a '_'
select concat(firstname, "_", lastname) from workkeddtable;
-- Get FIRST_NAME ,Joining year,Joining Month and Joining Date from employee table
select firstname,year(joining_date),month(joining_date),date(joining_date) from workkeddtable;
-- Get all employee details from the employee table order by First_Name Ascending
select * from workkeddtable order by firstname asc;
-- Get all employee details from the employee table order by First_Name descending
select * from workkeddtable order by firstname desc;
-- Get all employee details from the employee table order by First_Name Ascending and Salary descending
select * from workkeddtable order by firstname asc,salary desc;
-- 18. Get employee details from employee table whose employee name is “Dinesh”
select * from workkeddtable where firstname = "Dinesh";
-- 19. Get employee details from employee table whose employee name are “Dinesh” and “Roy”
select * from workkeddtable where firstname ="Dinesh" or firstname="Roy";
-- 20. Get employee details from employee table whose employee name are not “Dinesh” and “Roy”
select * from workkeddtable where not firstname = "Dinesh" and not firstname ="Roy";
-- Get all the details of the employee whose salary is greater than 60000.
select * from workkeddtable where salary > 60000;
-- Get all the details of the employee whose salary is between 50000 to 70000
select * from workkeddtable where salary>50000 and salary<70000;
-- Get first name and last name as single column separated by space of the employee whose salary is less than 50000
select concat(firstname," ",lastname) from workkeddtable where salary < 50000;
-- Get first name and salary, arrange it by salary in ascending order.
select firstname,salary from workkeddtable order by salary;
-- Get all the details of the employee whose salary is between 50000 to 70000 and arrange them by their first name as ascending order.
select * from workkeddtable where salary >=50000 and salary <=70000 order by firstname;
