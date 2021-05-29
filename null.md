[< BACK](README.md)

# NULL VALUES

A field with a NULL value is a field with no value. If a field in a table is optional, it is possible to insert a 
new record or update a record without adding a value to this field. Then, the field will be saved with a NULL values.

> A NULL value is different from a zero value or a field that contains spaces. A field with a NULL value 
is one that has been left blank during record creation.

<br />

**We cant compare null values with comparisions operator, so we use IS NULL and IS NOT NULL.**

## IS NULL and IS NOT NULL SYNTAX

+ FOR IS NULL:
```sql
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
``` 

<br />

+ FOR IS NOT NULL
```sql
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
```

## EXAMPLE

Suppose there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns.

+ List all customers with a NULL value in the "Address" field: 
```sql
SELECT CustomerId, CustomerName, Address
FROM CustomerComplaint
WHERE Address IS NULL;
```

<br />

+ Lists all customers with a value in the "Address" field:
```sql
SELECT CustomerID, CustomerName, Address
FROM CustomerComplaint
WHERE Address IS NOT NULL;
```

[< BACK](README.md)
