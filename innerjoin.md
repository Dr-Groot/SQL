[< PREVIOUS](joins.md) || [NEXT >](leftjoin.md)

# INNER JOIN KEYWORD 

The INNER JOIN keyword selects records that have matching values in both tables.

## SYNTAX

```sql
SELECT table1.column_name(s), table2.column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```

![image](https://user-images.githubusercontent.com/63160825/120473781-041e4b80-c3c5-11eb-93da-dd65f9b1b74e.png)

## EXAMPLE

Consider Table 1 - "Customers"

| ID | NAME     | AGE | ADDRESS   | SALARY   |
| -- | -------- | --- | --------- | -------- |
|  1 | Ramesh   |  32 | Ahmedabad |  2000.00 |
|  2 | Khilan   |  25 | Delhi     |  1500.00 |
|  3 | kaushik  |  23 | Kota      |  2000.00 |
|  4 | Chaitali |  25 | Mumbai    |  6500.00 |
|  5 | Hardik   |  27 | Bhopal    |  8500.00 |
|  6 | Komal    |  22 | MP        |  4500.00 |
|  7 | Muffy    |  24 | Indore    | 10000.00 |

<br />

Consider Table 2 -  "Orders" Table also:

|OID  | DATE                | CUSTOMER_ID | AMOUNT |
| --- | ------------------- | ----------- | ------ |
| 102 | 2009-10-08 00:00:00 |           3 |   3000 |
| 100 | 2009-10-08 00:00:00 |           3 |   1500 |
| 101 | 2009-11-20 00:00:00 |           2 |   1560 |
| 103 | 2008-05-20 00:00:00 |           4 |   2060 |

<br />

Applying **Inner Join**:

```sql
SELECT  ID, NAME, AMOUNT, DATE
FROM Customers
INNER JOIN Orders
ON Customers.ID = Orders.CUSTOMER_ID;
```

<br />

**RESULT TABLE :**

| ID | NAME     | AMOUNT | DATE                |
| -- | -------- | ------ | --------------------|
|  3 | kaushik  |   3000 | 2009-10-08 00:00:00 |
|  3 | kaushik  |   1500 | 2009-10-08 00:00:00 |
|  2 | Khilan   |   1560 | 2009-11-20 00:00:00 |
|  4 | Chaitali |   2060 | 2008-05-20 00:00:00 |

<br />

**IMPORTANT:** The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns. If there are records in the "Orders" table that do not have matches in "Customers", these orders will not be shown.

<br />

WE CAN ALSO JOIN THREE TABLES: (SQL statement selects all orders with customer and shipper information) 
```SQL
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
```

<br />

[HOME](README.md)

[< PREVIOUS](joins.md) || [NEXT >](leftjoin.md)
