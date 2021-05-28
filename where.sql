/* For filtering record we use Where Clause, extracting information that fulfill a specified condition. */

/* WHERE SYNTAX */
SELECT column1, column2, ...
FROM table_name
WHERE condition;

/* WHERE is used with SELECT, UPDATE, DELETE, etc. */

/* ------------EXAMPLE-------------*/
/* There is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns */

/* If we want to select all customers from India */
SELECT * FROM Customers
WHERE Country='India';

/* If we want to select customer which is having customerID 12 */
SELECT * FROM Customers
WHERE CustomerID=12;


/* ----------- Operations in SQL using WHERE Clause ------------- */
        =	        
/* Equal Example */
SELECT * FROM CustomerComplaint 
WHERE PostalCode = 226001;


          >	        
/* Greater than Example */
SELECT * FROM CustomerComplaint
WHERE  CustomerId > 3;


                          <	  >=	 <=	  <>	     
/* Less than ||  Greater than or equal || Less than Less than or equal || Not equal. Note: In some versions of SQL this operator may be written as != */
SELECT * FROM CustomerComplaint
WHERE  CustomerId <= 2;


          BETWEEN	  
/* Between a certain range Example */
SELECT * FROM CustomerComplaint
WHERE CustomerID BETWEEN 2 AND 5;


              LIKE	    
/*Search for a pattern Example */
SELECT * FROM CustomerComplaint 
WHERE ProductName LIKE ‘%P’;


IN	      
/*To specify multiple possible values for a column Example */
SELECT * FROM CustomerComplaint
WHERE City IN (“Lucknow”, “Berlin”);
/* Arguement value of IN are Case Sensitive */
