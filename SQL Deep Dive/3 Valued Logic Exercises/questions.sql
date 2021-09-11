
/*
* DB: Store
* Table: customers
* Question: adjust the following query to display the null values as "No Address"
*/
select coalesce(address2, 'no address available') as "address2" from customers;

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

SELECT *
FROM customers
WHERE address2 IS NOT null;

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

SELECT coalesce(lastName, 'Empty')  from customers
where (age is null);
