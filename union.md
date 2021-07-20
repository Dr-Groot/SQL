[< PREVIOUS](cartesianjoin.md) || [NEXT >](groupby.md)

# UNION Operator

The UNION operator is used to combine the result-set of two or more SELECT statements.

+ Every SELECT statement within UNION must have the same number of columns
+ The columns must also have similar data types
+ The columns in every SELECT statement must also be in the same order

</br>

## UNION SYNTAX

```sql
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;
```

<br/>

## UNION ALL SYNTAX

The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:

```sql
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;
```

</br>

## EXAMPLE

Consider Table 1 as **Customers** having columns CustomerID, CustomerName, Address, City, PostalCode, Country.

And Consider Table 2 as **Suppliers**  having columns SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country.

Now applying:

+ **Applying UNION**

SQL statement returns the cities (only distinct values) from both the "Customers" and the "Suppliers" table:

```sql
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;
```

+ **Applying UNION ALL**

SQL statement returns the cities (duplicate values also) from both the "Customers" and the "Suppliers" table:

```sql
SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;
```

+ **Applying with WHERE**

SQL statement returns the German cities (only distinct values) from both the "Customers" and the "Suppliers" table:

```sql
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;
```

</br>

[HOME](README.md)

[< PREVIOUS](selfjoin.md) || [NEXT>](groupby.md)
