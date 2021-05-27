/* The DELETE statement is used to delete existing records in a table. */

/* DELETE SYNTAX */
DELETE FROM table_name
WHERE condition;


/* ------------EXAMPLE-------------*/
/* If there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country columns which are having data */

/* SQL statement deletes the customer "Philip" from the “CustomerComplaint" table: */
DELETE FROM CustomerComplaint 
WHERE CustomerName=‘Philip';
