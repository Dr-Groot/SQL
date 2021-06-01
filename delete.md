[< PREVIOUS](update.md) || [NEXT >](limit.md)

# DELETE

The DELETE statement is used to delete existing records in a table.

## DELETE SYNTAX
```sql
DELETE FROM table_name
WHERE condition;
```

> Be careful when deleting records in a table. Notice the WHERE clause in the DELETE statement. The WHERE clause 
specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted.

## EXAMPLE

Suppose there is a Table name as "CustomerComplaint" having CustomerID, CustomerName, ProductName
Issue, City, PostalCode and Country as columns.

<br />

+ SQL statement deletes the customer "Philip" from the “CustomerComplaint" table:
```sql
DELETE FROM CustomerComplaint
WHERE CustomerName=‘Philip;
```

<br />

+ DELETE all Record from CustomerComplaint Table:
```sql
DELETE FROM CustomerComplaint;
```
> While running this query it will only delete all the records, not the table.

[< PREVIOUS](update.md) || [NEXT >](limit.md)

[HOME](README.md)
