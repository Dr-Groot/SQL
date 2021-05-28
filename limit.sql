/* THE SQL SELECT TOP CLAUSE */
/* The SELECT TOP clause is used to specify the number of records to return. */

/* IMPORTANT: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause 
to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM. */ 

/* SQL SERVER / MS ACCESS SYNTAX: */
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;


/* MySQL SYNTAX: */
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number; 


/* ORACLE 12 SYNTAX: */
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;

/* ------------EXAMPLE-------------*/
/* There is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns */

/* SQL TOP, LIMIT, and FETCH FIRST example: */
/* SQL statement selects the first three records from the "CustomerComplaint" table */

/* For SQL Server/ MS Access */
SELECT TOP 3 * FROM CustomerComplaint;

/* For MySql */
SELECT * FROM CustomerComplaint
LIMIT 3;

/* For Oracle */
SELECT * FROM CustomerComplaint
FETCH FIRST 3 ROWS ONLY;

/* ------------EXAMPLE USING WHERE CLAUSE-------------*/
/* There is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns */

/* SQL statement selects the first three records from the "CustomerComplaint" table, where the country is "Germany" */

/* For SQL Server / MS Access */
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';

/* For MySql */
SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

/* For Oracle */
SELECT * FROM Customers
WHERE Country='Germany'
FETCH FIRST 3 ROWS ONLY;
