/* The SELECT DISTINCT statement is used to return only distinct (different) values. */
/* To elimnate duplicate element while selecting any column. Distinct means Different. */

/* SELECT DISCTINCT SYNTAX */
SELECT DISTINCT column1, column2, ...
FROM table_name;

/* ------------EXAMPLE-------------*/
/* If there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country columns which are having data */

/* If we have to select different values of City from CustomerComplaint */
SELECT DISTINCT City FROM CustomerComplaint;

/* If we have to count the different City from CustomerComplaint */
SELECT COUNT(DISTINCT City) FROM CustomerComplaint;

/*The example above will not work in Firefox! Because COUNT(DISTINCT column_name) is 
not supported in Microsoft Access databases. Firefox is using Microsoft Access in our examples.
For MS Access: */
SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);
