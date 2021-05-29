[< BACK](README.md)

# LIMIT, TOP CLAUSE

The SELECT TOP clause and Limit is used to specify the number of records to return.

> IMPORTANT: Not all database systems support the SELECT TOP clause. **MySQL** supports the **LIMIT** clause 
to select a limited number of records, while **Oracle** uses **FETCH FIRST n ROWS ONLY and ROWNUM**. 

## SQL SERVER / MS ACCESS SYNTAX:
```sql
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;
```

## MySQL SYNTAX:
```sql
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;
```

## ORACLE 12 SYNTAX:
```sql
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;
```

## EXAMPLE
Suppose there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns.

<br />

**SQL statement selects the first three records from the "CustomerComplaint" table**

<br />

+ For SQL Server/ MS Access
```sql
SELECT TOP 3 * FROM CustomerComplaint;
```

<br />

+ For MySql
```sql
SELECT * FROM CustomerComplaint
LIMIT 3;
```

<br />

+ For Oracle
```sql
SELECT * FROM CustomerComplaint
FETCH FIRST 3 ROWS ONLY;
```

## EXAMPLE USING WHERE CLAUSE
Suppose there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns.

<br />

**SQL statement selects the first three records from the "CustomerComplaint" table, where the country is "Germany"**

<br />

+ For SQL Server / MS Access
```sql
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';
```

<br />

+ For MySql
```sql
SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;
```

<br />

+ For Oracle
```sql
SELECT * FROM Customers
WHERE Country='Germany'
FETCH FIRST 3 ROWS ONLY;
```

[< BACK](README.md)
