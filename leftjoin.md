[< PREVIOUS](innerjoin.md) || [NEXT >](rightjoin.md)

# LEFT JOIN

# [INCLUSIVE] LEFT JOIN

SQL INCLUSIVE LEFT JOIN returns all rows from the left table, even if there are no matches in the right table. This means that if the ON clause matches 0 (zero) records 
in the right table; the join will still return a row in the result, but with NULL in each column from the right table.

This means that a left join returns all the values from the left table, plus matched values from the right table or NULL in case of no matching join predicate.

## SYNTAX

```sql
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.id = table2.id;
```

![image](https://user-images.githubusercontent.com/63160825/120994398-107a1e00-c7a2-11eb-8e56-d8db1510c27e.png)

> In some databases **LEFT JOIN** is called **LEFT OUTER JOIN**.

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

Applying **Inclusive Left Join**:

```sql
SELECT  Customers.ID, Customers.NAME, Orders.AMOUNT, Orders.DATE
FROM CUSTOMERS
LEFT JOIN ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;
```

**RESULT TABLE**

| ID | NAME     | AMOUNT | DATE                |
| -- | -------- | ------ | ------------------- |
|  1 | Ramesh   |   NULL | NULL                |
|  2 | Khilan   |   1560 | 2009-11-20 00:00:00 |
|  3 | kaushik  |   3000 | 2009-10-08 00:00:00 |
|  3 | kaushik  |   1500 | 2009-10-08 00:00:00 |
|  4 | Chaitali |   2060 | 2008-05-20 00:00:00 |
|  5 | Hardik   |   NULL | NULL                |
|  6 | Komal    |   NULL | NULL                |
|  7 | Muffy    |   NULL | NULL                |

<br />

> **IMPORTANT:** The INCLUSIVE LEFT JOIN keyword returns all records from the left table (Customers), even if there are no matches in the right table (Orders).

<br />

# [EXCLUSIVE] LEFT JOIN

In the case of a LEFT EXCLUSIVE JOIN you are essentially trying to query out the unique values that exist in the left table. In other words, you don't want any of the right table's values, you solely want the left table's values.

## SYNTAX

```sql
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.id = table2.id;
WHERE table2.id IS NULL
```

![image](https://user-images.githubusercontent.com/63160825/120994513-2c7dbf80-c7a2-11eb-88fb-5a43b4dac84d.png)


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

Applying **Exclusive Left Join**:

```sql
SELECT  Customers.ID, Customers.NAME, Orders.AMOUNT, Orders.DATE
FROM CUSTOMERS
LEFT JOIN ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;
WHERE ORDERS.CUSTOMER_ID IS NULL
```

**RESULT TABLE**

| ID | NAME     | AMOUNT | DATE                |
| -- | -------- | ------ | ------------------- |
|  1 | Ramesh   |   NULL | NULL                |
|  5 | Hardik   |   NULL | NULL                |
|  6 | Komal    |   NULL | NULL                |
|  7 | Muffy    |   NULL | NULL                |

<br />





[HOME](README.md)

[< PREVIOUS](innerjoin.md) || [NEXT >](rightjoin.md)
