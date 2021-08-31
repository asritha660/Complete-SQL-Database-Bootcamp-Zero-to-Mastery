
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT c.firstname, c.lastname,c.state,o.orderid from orders as o
inner join customers as c on o.orderid=c.customerid
where c.state in('OH','NY','OR')
order by o.orderid;


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT p.prod_id,i.quan_in_stock from products as p
inner join inventory as i on i.prod_id=p.prod_id;


/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
select emp.first_name,dp.dept_name, de.dept_no from employees as  emp
inner join dept_emp as de on de.emp_no = emp.emp_no
inner join departments as dp on dp.dept_no=de.dept_no
order by de.dept_no;



