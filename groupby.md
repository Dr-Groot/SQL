[< PREVIOUS](union.md) || [NEXT>](having.md)

# GROUP BY

The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

<br />

## SYNTAX

```sql
SELECT column_name(s)
FROM tablename
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
```

<br />

## EXAMPLE

Suppose a table **Customers** having CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country as columns.

+ SQL statement lists the number of customers in each country:

```sqlP
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;
```

+ SQL statement lists the number of customers in each country, sorted high to low:

```sql
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;
```

<br />

## EXAMPLE OF GROUP BY USING JOINS

Suppose a table **Orders** having CustomerId, OrderID, EmployeeID, OrderDate, ShipperID as Columns. And a **Shippers** table having ShipperID and ShipperName.

SQL statement lists the number of orders sent by each shipper:

```sql
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;
```

<br />

[HOME](README.md)

[< PREVIOUS](union.md) || [NEXT >](having.md)

