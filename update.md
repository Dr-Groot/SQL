[< BACK](README.md)

# UPDATE STATEMENT

The UPDATE statement is used to modify the existing records in a table.

## UPDATE SYNTAX
```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

> While using UPDATE be carefull as it can update all the record in the table so we use WHERE Clause.

# EXAMPLE

Suppose there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns.

<br />

SQL statement updates the first customer (CustomerID = 1) with a new contact person and a new city.
```sql
UPDATE CustomerComplaint
SET CustomerName = 'CHANGE1, City= ‘CHANGE2'
WHERE CustomerID = 1;
```

<br />

UPDATING MULTIPLE RECORD: update the CustomerName to "JAMES" for all records where country is "India":
```sql
UPDATE CustomerComplaint
SET ContactName='JAMES'
WHERE Country=‘India;
```

<br />

UPDATING WITHOUT WHERE will omit all the record to be changed as hello in CustomerName Column.

```sql
UPDATE CustomerComplaint
SET CustomerName=‘hello';
```

[< BACK](README.md)
