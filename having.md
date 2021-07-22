[< PREVIOUS](groupby.md) || [NEXT >](exists.md)

# HAVING CLAUSE

The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

**IMPORTANT:** Aggregate function is a function where the values of multiple rows are grouped together as input on certain criteria to form a single value of more significant meaning. Example: AVG, COUNT, MIN, MAX, etc.

<br />

## SYNTAX

```sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
```

<br />

## EXAMPLE

Consider Table **Customers** having CustomerID, CustomerName, Address, City, PostalCode, Country as Columns.

+ SQL statement lists the number of customers in each country. Only include countries with more than 5 customers:

```sql
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;
```

+ SQL statement lists the number of customers in each country, sorted high to low (Only include countries with more than 5 customers):

```sql
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;
```

<br />

**MORE EXAMPLES**

Consider table **Orders** having OrderID, CustomerId, EmployeeID, OrderDate, ShipperID as Columns and table **Employees** having EmployeeID, LastName, FirstName, BirthDate, Photo, Notes as a Columns.

+  SQL statement lists the employees that have registered more than 10 orders:

```sql
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;
```

+ SQL statement lists if the employees "Abhishek" or "Bipin" have registered more than 25 orders:

```sql
SELECT Employees.FirsttName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE FirstName = 'Abhishek' OR FirstName = 'Bipin'
GROUP BY FirstName
HAVING COUNT(Orders.OrderID) > 25;
```

[HOME](README.md)

[< PREVIOUS](groupby.md) || [NEXT>](exists.md)




