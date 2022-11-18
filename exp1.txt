172.30.1.10
3128
koxiha7330@invodua.com
lbslab2
Opengithub.com1
  CREATE TABLE students(
  Rollno int PRIMARY KEY,
  Name char,
  PRIMARY KEY (Rollno)
  
  
  
  INSERT INTO students(Rollno, Name)
  VALUES(1,"HUBAIB"),(2,"JISHNU")
  
  
  ALTER TABLE students
  MODIFY COLUMN Name char(10);
  
  
  CREATE TABLE company(
  Employee_no int,
  Employee_name char(50),
  Employee_address char(100),
  Salary int(10),
  Department char(30),
  PRIMARY KEY(Employee_no)
  );
  
  
  INSERT INTO company(Employee_no,Employee_name,Employee_address,Salary,Department)
  VALUES
  (2001,"Hari","Pallakad",30000,"Research"),
  (2002,"Devi","Kasaragod",40000,"Network"),
  (2003,"Gupta","Kannur",50000,"Sysadmin"),
  (2004,"Ravi","Calicut",60000,"HR"),
  (2005,"Rani","Calicut",70000,"HR");
  
  --Q1
  SELECT SUM(Salary) FROM company;
  
  --Q2
SELECT COUNT(Salary) FROM company WHERE Salary<50000;



  --Q3
  SELECT * FROM company WHERE Salary=(SELECT max(Salary) FROM company);
   
   
   --Q4
   ALTER TABLE company
   ADD Title char(100) DEFAULT "Junior Software Engineer";

   --Q5
   UPDATE company
   SET Title="Senior SOftWare Engineer"
   WHERE Employee_no=2004;
   
   --Q6
   DELETE FROM company WHERE Employee_no=2005;
   
   --Q7 Print record of odd employee no
   SELECT * FROM company WHERE Employee_no%2=1;
   
   --Q8  Using build in function add data and time on insert statement 
   ALTER TABLE company
   ADD Modified_DATE&TIME DATETIME ON UPDATE CURRENT_TIMESTAMP;
   
   
   INSERT INTO company(Employee_no,Employee_name,Employee_address,Salary,Department)
  VALUES
  (2006,"Sinan","Pallakad",90000,"Research");
  
  
UPDATE company
SET  = 'Alfred Schmidt', City = 'Frankfurt'





-----------------------Day 2-----------------------------------
CREATE TABLE students_mark(
    Stuents_no int PRIMARY KEY,
    Student_name char,
    Max_mathematics int,
    Max_physics int,
    Max_chemistry int,
    Max_cprogramming int,
    Department char,
    Addrress char);



