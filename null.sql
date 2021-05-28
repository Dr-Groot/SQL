/* A field with a NULL value is a field with no value. If a field in a table is optional, it is possible to insert a 
new record or update a record without adding a value to this field. Then, the field will be saved with a NULL values.*/

/* IMPORTANT: A NULL value is different from a zero value or a field that contains spaces. A field with a NULL value 
is one that has been left blank during record creation! */

/* We cant compare null values with comparisions operator, so we use IS NULL and IS NOT NULL */ 

/* IS NULL and IS NOT NULL SYNTAX */
 
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;


/* ------------EXAMPLE-------------*/
/* There is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns */

/* List all customers with a NULL value in the "Address" field: */
SELECT CustomerId, CustomerName, Address
FROM CustomerComplaint
WHERE Address IS NULL;

/* Lists all customers with a value in the "Address" field: */
SELECT CustomerID, CustomerName, Address
FROM CustomerComplaint
WHERE Address IS NOT NULL;
