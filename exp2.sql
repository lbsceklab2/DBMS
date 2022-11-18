-----------------------Day 2-----------------------------------
CREATE TABLE students_mark(
    Student_no int(10),
    Student_name char(20),
    Max_mathematics int(10),
    Max_physics int(10),
    Max_chemistry int(10),
    Max_cprogramming int(10),
    Department char(20),
    Addrress char(20),
    PRIMARY KEY(Student_no)
    );


INSERT INTO students_mark(Student_no,Student_name,Max_mathematics,Max_physics,Max_chemistry,Max_cprogramming,Department,Addrress)
VALUES
(100,"Hari",50,60,45,75,"CSE","Kasaragod"),
(101,"Devi",60,55,78,40,"CSE","Kasaragod"),
(102,"Sam",45,77,88,45,"IT","Kannur"),
(103,"Sreehari",90,75,77,60,"IT","Calicut"),
(104,"Rani",91,98,89,52,"ECE","Kannur"),
(105,"Raj",88,77,67,48,"CSE","Palakad");


---Q1---
select  Student_no,Student_name from students_mark where Max_cprogramming<50 order by Max_cprogramming;

---Q2---
select  Student_no,Student_name,Department from students_mark order by Department desc, Student_name;

---Q3---
select Student_name from students_mark where Student_name like "s%";

---Q4---
select Student_name from students_mark where Max_cprogramming=(select max(Max_cprogramming) from students_mark where Max_cprogramming!=(select max(Max_cprogramming) from students_mark));

---Q5---
select Department,count(*),avg(Max_mathematics) from students_mark group by Department;

---q6---
select count(Max_physics) from students_mark where max_physics>70 and max_physics<80;

----------------------------------------------------------------------------------------------------------------






