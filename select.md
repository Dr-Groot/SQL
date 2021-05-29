[< BACK](README.md)
# SELECT STATEMENT

The SELECT statement is used to select data from a database.
Result-set is the result table where returned data is stored from SELECT.
<br />

## SELECT SYNTAX
```SQL
SELECT column1, column2, ...
FROM table_name;
```
Above query will provide data from column1, column2, ...
<br />
All filed will be selected by using :
```sql
SELECT * FROM table_name;
```

## EXAMPLE
Suppose there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns 

<br />

If we have to select CustomerName and Issue from CustomerComplaint, then we will go with:
```sql
SELECT CustomerName, Issue FROM CustomerComplaint;
```
<br />

If we have to Select All the columns of CustomerComplaint table, then:
```sql
SELECT * FROM CustomerComplaint;
```

[< BACK](README.md)
