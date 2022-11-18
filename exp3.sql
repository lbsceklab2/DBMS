CREATE TABLE department(
    dpt_no int(10),
    dpt_name char(20),
    dpt_location char(20),
    PRIMARY KEY(dpt_no)
    );dp

INSERT INTO department(dpt_no,dpt_name,dpt_location) 
VALUES
(1001,"HR","Calicut"),
(1002,"Marketing","Kochi"),
(1003,"Sales","Trivandrum"),
(1004,"Testing","Bangalore"),
(1005,"Development","Bangalore");

CREATE TABLE employee(
    emp_id int(10),
    emp_name char(20),
    dpt_no char(20),
    salary int(20),
    PRIMARY KEY(emp_id)
    );
    
    
INSERT INTO employee(emp_id,emp_name,dpt_no,salary) 
VALUES
(2001,"Hari",1006,30000),
(2002,"Devi",1002,40000),
(2003,"Gupta",1003,50000),
(2004,"Ravi",1004,60000),
(2005,"Rani",1007,70000),
(2006,"John",1003,40000);


----Q1----
select emp_name,dpt_name from employee,department where employee.dpt_no=department.dpt_no;
    
---Q2---  
select emp_id, emp_name, employee.dpt_no from employee left join department on employee.dpt_no = department.dpt_no where department.dpt_no is null;

---Q3---
select dpt_no from employee union select dpt_no from department;

---Q4---
select department.dpt_no, dpt_name from department left join employee on employee.dpt_no = department.dpt_no where employee.emp_id is null;

---Q5---
select emp_id, emp_name, employee.dpt_no from employee left join department on employee.dpt_no = department.dpt_no where department.dpt_no is not null and dpt_location = 'Kochi';

---Q6---
select emp_id, emp_name, salary from employee where salary > ( select avg(salary) from employee left join department on employee.dpt_no = department.dpt_no where department.dpt_no is not null and dpt_name = 'Sales');

---Q7---
select emp_id, emp_name, salary from employee where salary > ( select max(salary) from employee left join department on employee.dpt_no = department.dpt_no where department.dpt_no is not null and department.dpt_no = 1003);
