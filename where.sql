/* For filtering record we use Where Clause, extracting information that fulfill a specified condition. */

/* WHERE SYNTAX */
SELECT column1, column2, ...
FROM table_name
WHERE condition;

/* WHERE is used with SELECT, UPDATE, DELETE, etc. */

/* ------------EXAMPLE-------------*/
/* If there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country columns which are having data */

/* If we want to select all customers from India */
SELECT * FROM Customers
WHERE Country='India';

/* If we want to select customer which is having customerID 12 */
SELECT * FROM Customers
WHERE CustomerID=12;
