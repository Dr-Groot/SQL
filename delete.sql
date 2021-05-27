/* The DELETE statement is used to delete existing records in a table. */

/* DELETE SYNTAX */
DELETE FROM table_name
WHERE condition;

/* Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. The WHERE clause 
specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!*/


/* ------------EXAMPLE-------------*/
/* If there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country columns which are having data */

/* SQL statement deletes the customer "Philip" from the “CustomerComplaint" table: */
DELETE FROM CustomerComplaint 
WHERE CustomerName=‘Philip;

/* DELETE all Record from CustomerComplaint Table*/
DELETE FROM CustomerComplaint;
/* While running this query it will only delete records not the table */
