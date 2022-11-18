    Create view for following.
	1) View (student_info) for student table(exp no:2) containing studentNo, studentName, department, address
	
	2)View (student_mark) for student table(exp no:2) containing studentNo, studentName, maths, physics, chemistry, cProgramming.
	
	3)Display the studentNo, studentName, totalMarks, address from student_info view and student_mark view without referring student table.
	
	4)Create a view (emp_dept) for exp no:3 containing employee name and department name. (NULL values are expected in the department name field for the employees having invalid departmentnumbers).
	
	5)Find the name of employees having invalid department numbers by referring the emp_dept view.

------Answers-----

create view student_info as
select std_no,std_name,dept,address from student;

create view student_mark as
select std_no,std_name,maths,phy,che,cp from student;

select std_no,std_name,maths+phy+che+cp as total_mark,address from student_info natural join student_mark;

create view emp_dept as select emp_name,dept_name from emp left join dept on emp.dept_no=dept.dept_no;

select emp_name from emp_dept where dept_name is null;

