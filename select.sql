/* The SELECT statement is used to select data from a database.
result-set is the result table where returned data is stored.*/

/* SELECT SYNTAX */
SELECT column1, column2, ...
FROM table_name;

/* above query will provide data from column1, column2, ... */

/* All filed will be selected by using */
SELECT * FROM table_name;

/* ------------EXAMPLE-------------*/
/* If there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country columns which are having data */

/* If we have to select CustomerName and Issue from CustomerComplaint */
SELECT CustomerName, Issue FROM CustomerComplaint;

/* If we have to Select All the columns of CustomerComplaint table */
SELECT * FROM CustomerComplaint;
