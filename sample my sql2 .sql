CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;
CREATE TABLE Worker(WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, FIRST_NAME CHAR(25), LAST_NAME CHAR(25), SALARY INT(15), JOINING_DATE DATETIME, DEPARTMENT CHAR(25));
select * from worker;
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-15 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-21 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-21 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-20 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
select * from BONUS;
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-21'),
		(002, 3000, '16-06-21'),
		(003, 4000, '16-02-21'),
		(001, 4500, '16-02-21'),
		(002, 3500, '16-06-21');
        Select FIRST_NAME AS WORKER_NAME from Worker;
        Select upper(FIRST_NAME) from Worker;
        Select distinct DEPARTMENT from Worker;
        Select substring(FIRST_NAME,1,3) from Worker;
        Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';
        Select RTRIM(FIRST_NAME) from Worker;
        Select LTRIM(DEPARTMENT) from Worker;
        Select distinct length(DEPARTMENT) from Worker;
        Select REPLACE(FIRST_NAME,'a','A') from Worker;
        Select CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'COMPLETE_NAME' from Worker;
        Select * from Worker where FIRST_NAME in ('Vipul','Satish');
        Select * from Worker where FIRST_NAME not in ('Vipul','Satish');
        Select * from Worker where DEPARTMENT like 'Admin%';
        Select * from Worker where FIRST_NAME like '%a%';
        Select * from Worker where FIRST_NAME like '%a';
        Select * from Worker where FIRST_NAME like '_____h';
        Select * from Worker where SALARY between 100000 and 500000;
        SELECT COUNT(*) FROM worker WHERE DEPARTMENT = 'Admin';
        SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, Salary FROM worker WHERE WORKER_ID IN (SELECT WORKER_ID FROM worker WHERE Salary BETWEEN 50000 AND 100000);
         SELECT DEPARTMENT, sum(Salary) from worker group by DEPARTMENT;