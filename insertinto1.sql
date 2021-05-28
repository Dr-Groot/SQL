/* To insert new record we use INSERT INTO Statement */

/* INSERT INTO SYNTAX 
FIRST WAY by specifying column names and values:-  */
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

/* SECOND WAY by giving table name and values */
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

/* ------------EXAMPLE-------------*/
/* There is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns */

/* Insert a new record in the "CustomerComplaint" table: */
INSERT INTO CustomerComplaint(customerid, customername, productname, issue, address, city, postalcode, country) 
VALUES (“6","Ujjwal","R","Writing","Indra Nagar", "Lucknow", 226010", "India")
/* The CustomerID column is an auto-increment field and will be generated automatically when a new record is 
inserted into the table */

/* By specifying columns */
INSERT INTO CustomerComplaint VALUES ("A1", "A2", "A3","A4", "A5", "A6", "A7", "A8")
/* If any values gets missing it will throw an error */

/* Inserting into Specified Columns */
INSERT INTO CustomerComplaint (CustomerName, City, Country)
VALUES ('alpha', 'beta', ‘gama);
/* Unspecified columns will result in the form of NULL */
