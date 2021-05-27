/* AND, OR and NOT are used with cobination of WHERE Clause */

/* The AND operator displays a record if all the conditions separated by AND are TRUE. */ 
/* The OR operator displays a record if any of the conditions separated by OR is TRUE. */
/* The NOT operator displays a record if the condition(s) is NOT TRUE. */

/* AND SYNTAX */
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

/* OR SYNTAX */
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

/* NOT SYNTAX */
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;


/* ------------EXAMPLE-------------
If there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country columns */

/* AND EXAMPLE 
Selects all fields from "CustomerComplaint" where country is "Germany" AND city is “Berlin”:*/
SELECT * FROM CustomerComplaint
WHERE Country='Germany' AND City=‘Berlin’;

/* OR EXAMPLE
Selects all fields from "CustomerComplaint" where city is “Delhi" OR “Lucknow": */
SELECT * FROM CustomerComplaint
WHERE City='Delhi' OR City='Lucknow';

/* NOT EXAMPLE 
Selects all fields from "CustomerComplaint" where country is NOT “India": */
SELECT * FROM CustomerComplaint
WHERE NOT Country=‘India';

/* AND, OR and NOT TOGETHER 
Selects all fields from “CustomerComplaint" where country is "India" AND city must be "Lucknow" OR "Delhi" */
SELECT * FROM CustomerComplaint 
WHERE Country='India' AND (City='Lucknow' OR City=‘Delhi');

/*  Selects all fields from "Customers" where country is NOT "Germany" and NOT “USA": */
SELECT * FROM CustomerComplaint
WHERE NOT Country=‘India’ AND NOT Country='Mexico';
