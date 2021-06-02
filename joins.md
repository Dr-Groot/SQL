[< PREVIOUS](aliases.md) || [NEXT >](innerjoin.md)

# JOINS

The SQL Joins clause is used to combine records from two or more tables in a database. A JOIN clause is used to combine rows from two or more tables, based on values common to each.

<br />

Lets look at selection from the "Customers" Table:

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

Lets look at "Orders" Table also:

|OID  | DATE                | CUSTOMER_ID | AMOUNT |
| --- | ------------------- | ----------- | ------ |
| 102 | 2009-10-08 00:00:00 |           3 |   3000 |
| 100 | 2009-10-08 00:00:00 |           3 |   1500 |
| 101 | 2009-11-20 00:00:00 |           2 |   1560 |
| 103 | 2008-05-20 00:00:00 |           4 |   2060 |

<br />

Notice that the "Customer_ID" column in the "Orders" table refers to the "ID" in the "Customers" table. The relationship between the two tables above is the "CustomerID" column. Now, let us join these two tables in our SELECT statement:

```sql 
SELECT ID, NAME, AGE, AMOUNT
FROM Customers, Orders
WHERE  Customers.ID = Orders.Customer_ID;
```

<br />

This will produce:

| ID | NAME     | AGE | AMOUNT |
| -- | -------- | --- | ------ |
|  3 | kaushik  |  23 |   3000 |
|  3 | kaushik  |  23 |   1500 |
|  2 | Khilan   |  25 |   1560 |
|  4 | Chaitali |  25 |   2060 |

> You can be more specific by using SELECT Customers.ID, Customers.NAME, Customers.AGE, Orders.AMOUNT and it will yield same result. 

