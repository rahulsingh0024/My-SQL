use industries;
create table Company(slno int, cmpname varchar(50), manufacturing varchar(50), location varchar(50), estyear int);
create table employee(empid int, empname varchar(50), department varchar(50));
insert into Company values(1,'vedanta group', 'steel', 'bokaro', 2009);
insert into Company values(2,'bokaro steel ltd','steel','bokaro',1972);
insert into Company values(3,'BCCL', 'coal','dhanbad', 1956);
insert into Company values(4, 'DVC','electricity', 'bokaro', 1985);
insert into Company values(5, 'tata steel ltd','steel','jamshedpur', 1929);
insert into Company values(6,'FCI', 'fertilizer','sindri', 1991);
insert into Company values(7, 'ACC', 'cement', 'sindri', 1987);
insert into Company values(8,'usha martin','steel','ranchi', 2003);
insert into Company values(9, 'CCL', 'Coal', 'bokaro', 1980);
insert into employee values(1,'ramesh', 'production');
insert into employee values(2, 'ajit', 'project');
insert into employee values(3, 'ajay', 'Quality');
insert into employee values(4, 'ayush', 'project');
insert into employee values(5,'ram','Quality');
insert into employee values(6,'mohan', 'production');
select * from employee;
alter table employee add emailid varchar(50);
select * from employee;
SELECT * FROM Company order by estyear;
SELECT * FROM Company order by manufacturing asc, location desc;
SELECT * FROM industries.Company WHERE location='bokaro';
SELECT * FROM industries.Company WHERE slno=1;
SELECT * FROM industries.employee WHERE department> 'project';
SELECT * FROM industries.Company WHERE location='dhanbad' AND estyear='1956';
use industries;
UPDATE Company SET cmpname= 'FCI', location= 'dhanbad' WHERE Slno= 6;


