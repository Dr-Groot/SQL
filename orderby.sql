/* The ORDER BY keyword is used to sort the result-set in ascending or descending order.
For Ascending Order we use ASC keyword and which is by default.
For Descending Order we use DESC keyword. */

/* ORDER BY SYNTAX */
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;



/* ------------EXAMPLE-------------*/
/* If there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country columns which are having data */

/* Selects all customers from the "CustomerComplaint" table, sorted by the "Country" column: */
SELECT * FROM CustomerComplaint
ORDER BY Country;

/* And same task for getting in descending order */
SELECT * FROM CustomerComplaint
ORDER BY Country DESC
