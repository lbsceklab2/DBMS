5. The schema of book store database is as follows

customer (cust_id, cust_name, cust_phone)

book (book_id, title, auth_name, unit_price, pub_name, pub_year)

sale (sale_id, cust_id, book_id, order_date, quantity)

author(auth_name,	country)

publisher(pub_name, pub_addr)


first attribute in each table is the primary key, foreign keys have same name as primary key.

i. Calculate the sales for a financial year 2021-22? 

ii. Display publisher wise total price of books published, except for a particular publisher PHI

iii. Write the SQL Query to Find the publisher wise total price of books published

iv. Write the SQL Query to display the name of the customer and title of the books purchased by them.

v.Find the title of books with author name and country published in year 2021;

vi. Get the titles and author name of all books written by authors not living in india.

vii.Write the SQL Query to display the cusomer ids and the total quantity of books purchased by them in the decreasing order of total quantity purcased.

-----------------------------------------------Answers----------------------------------

CREATE TABLE customer{
	cust_id int PRIMARY KEY,
	cust_nameshare
