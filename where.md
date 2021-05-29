[< BACK](README.md)
# WHERE CLAUSE
For filtering record we use Where Clause, extracting information that fulfill a specified condition.

## WHERE SYNTAX

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
WHERE is used with SELECT, UPDATE, DELETE, etc.

## EXAMPLE
Suppose there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns.

<br />

If we want to select all customers from India.
```sql
SELECT * FROM Customers
WHERE Country='India';
```

<br />

If we want to select customer which is having customerID is 12 
```sql
SELECT * FROM Customers
WHERE CustomerID=12;
```

## Operations in SQL using WHERE Clause
+ EQUAL =
```sql
SELECT * FROM CustomerComplaint 
WHERE PostalCode = 226001;
```
Above statement will return all records having postal code as 2206001

<br />
+ For Greater than > || Less than < || Greater than or equal >= || Less than Less than or equal <= || Not equal <>
```sql
SELECT * FROM CustomerComplaint
WHERE  CustomerId > 3;
```
It will return all record having Customer ID greater than 3

<br />
+ BETWEEN	  
```sql
SELECT * FROM CustomerComplaint
WHERE CustomerID BETWEEN 2 AND 5;
```
It will return all record having Customer ID between 2 to 5

<br />
+ LIKE	    
```sql
SELECT * FROM CustomerComplaint 
WHERE ProductName LIKE ‘%P’;
```
It will return all the record ending with letter P


IN	      
/*To specify multiple possible values for a column Example */
SELECT * FROM CustomerComplaint
WHERE City IN (“Lucknow”, “Berlin”);
/* Arguement value of IN are Case Sensitive */

[< BACK](README.md)
