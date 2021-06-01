[< PREVIOUS](select.md) || [NEXT >](where.md)
# SELECT DISTINCT
The SELECT DISTINCT statement is used to return only distinct (different) values. 
To elimnate duplicate element while selecting any column. 
> Distinct means Different. 

## SELECT DISCTINCT SYNTAX 
```sql
SELECT DISTINCT column1, column2, ...
FROM table_name;
```
Above statement will give differenet values of Column1, Column2 and so on.

## EXAMPLE
Suppose there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns.

<br />

If we have to select different values of City from CustomerComplaint.
```sql
SELECT DISTINCT City FROM CustomerComplaint;
```
<br />

If we have to count the different City from CustomerComplaint
```sql
SELECT COUNT(DISTINCT City) FROM CustomerComplaint;
```
<br />

> The example above will not work in Firefox Because COUNT(DISTINCT column_name) is not supported in Microsoft Access databases. Firefox is using Microsoft Access in our examples.

For MS Access: 
```sql
SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);
```

[< PREVIOUS](select.md) || [NEXT >](where.md)

[HOME](README.md)
