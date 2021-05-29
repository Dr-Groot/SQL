[< BACK](README.md)

# ORDER BY

The ORDER BY keyword is used to sort the **Result-Set** in ascending or descending order.
+ For Ascending Order we use ASC keyword and which is by default.
+ For Descending Order we use DESC keyword.

## ORDER BY SYNTAX
```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
```
Will sort the column1, column2, ... in Ascending or Descending Order according to the statement given.


## EXAMPLE

Suppose there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns.

<br />

Selects all customers from the "CustomerComplaint" table, sorted by the "Country" column: 
```sql
SELECT * FROM CustomerComplaint
ORDER BY Country;
```

> Default value is ASC in ORDER BY.

<br />

And same task for getting in **Descending Order**
```sql
SELECT * FROM CustomerComplaint
ORDER BY Country DESC
```
[< BACK](README.md)
