create database student
use student

create table student_chart (student_id int, Name varchar(max), Surname varchar (max), Birthdate date, Gender varchar(max),
Class varchar(max), Point int)
 drop table student_chart

 --example 1 ---
 insert into student_chart values (101, 'Sushmita', 'Patel', '2000/12/01', 'F','10 math', 60) ,
 (102, 'Pooja', 'Shah', '1999/10/28', 'F','9 sci', 80), (103, 'Srajan', 'Sahu', '2000/2/16', 'M','10 math', 55),
 (104, 'Mayank', 'Jain', '1999/10/06', 'M','10 his', 59), (105, 'Joy', 'Goel', '1999/09/17', 'M','10 sci', 90),
 (106, 'Ronny', 'Paul', '2000/07/21', 'M','9 bio', 66), (107, 'Ishika', 'Borle', '1980/12/10', 'F','9 math', 80),
 (108, 'Omi', 'Ingole', '1991/09/02', 'F','11 his', 85), (109, 'Jay', 'Singh', '1980/08/11', 'M','11 bio', 95), 
 (110, 'Shivi', 'Patel', '1995/06/04', 'F','10 sci', 88), (111, 'Aashu', 'Pawar', '1996/12/08', 'M','10 bio', 77),
 (112, 'Dhruv', 'Dubey', '1996/09/08', 'M','10 his', 82), (113, 'Praneet', 'Aldak', '1997/09/06', 'M','10 math', 60),
 (114, 'Nayan', 'Moon', '2000/09/09', 'M','9 bio', 77), (115, 'Rita', 'Rai', '1998/11/16', 'F','10 his', 45),
 (116, 'Raj', 'Soni', '1999/06/06', 'M','11 bio', 40), (117, 'Aman', 'Jain', '2000/07/09', 'M','11 math', 51),
 (118, 'Aanshi', 'Gupta', '1999/07/11', 'F','10 math', 98), (119, 'Abhay', 'Gupta', '1998/10/09', 'M','10 bio', 70),
 (120, 'Rituja', 'Gurve', '1997/09/16', 'F','9 his', 59)

 --example 2--
 select name, surname, class from student_chart

 ---example 3--
 select *  from student_chart where gender= 'F'

 ---example 5 ---
 select * from student_chart where gender='F' and class= '10 math'

 --example 6--
 select name, surname, class from student_chart where class = '10 math' or class= '10 sci'

 ---example 8---
 SELECT CONCAT(NAME ,' ', SURNAME) AS FULL_NAME  FROM student_chart

 --EXAMPLE 9--
 SELECT * FROM student_chart WHERE NAME LIKE 'A%'

 --EXAMPLE 11--
 INSERT INTO STUDENT_CHART VALUES (121, 'EMMA', 'MCOWEN', '2000/12/16', 'F','9 math', 70) , 
 (122, 'SOPHIA', 'ROSS', '1999/03/12', 'F','9 HIS', 60), (123, 'ROBERT', 'GROSS', '1996/09/22', 'M','9 BIO', 90)

 SELECT * FROM STUDENT_CHART WHERE NAME IN('EMMA', 'SOPHIA','ROBERT')

 ---EXAMPLE 12--
  SELECT * FROM student_chart WHERE NAME LIKE '[ADK]%'

---EXAMPLE 13--
 select name , surname, class ,gender from student_chart 
 where gender ='M' and class ='10 math'
 select name , surname, class ,gender from student_chart 
where gender ='F' and class= '9 his'

--EXAMPLE 14--
SELECT * FROM STUDENT_CHART WHERE GENDER= 'M' AND CLASS= '10 MATH' OR CLASS= '10 BIO'

---EXAMPLE 15--
SELECT * FROM STUDENT_CHART
WHERE  YEAR(BIRTHDATE)  = 1999

