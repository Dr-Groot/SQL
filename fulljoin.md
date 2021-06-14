[< PREVIOUS](rightjoin.md) || [NEXT >](selfjoin.md)

# FULL JOIN

# [INCLUSIVE] FULL JOIN

INCLUSIVE FULL JOIN combines the results of both left and right outer joins.

The joined table will contain all records from both the tables and fill in NULLs for missing matches on either side.


## SYNTAX

```sql
SELECT column_name(s)
FROM table1
FULL JOIN table2
ON table1.id = table2.id;
```

![image](https://user-images.githubusercontent.com/63160825/121808842-09f31700-cc78-11eb-9cc3-d4831f33a30d.png)

> In some databases **FULL JOIN** is called **FULL OUTER JOIN**.

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

Applying **Inclusive Full Join**:

```sql
SELECT  Customers.ID, Customers.NAME, Orders.AMOUNT, Orders.DATE
FROM CUSTOMERS
FULL JOIN ORDERS
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
|  3 | kaushik  |   3000 | 2009-10-08 00:00:00 |
|  3 | kaushik  |   1500 | 2009-10-08 00:00:00 |
|  2 | Khilan   |   1560 | 2009-11-20 00:00:00 |
|  4 | Chaitali |   2060 | 2008-05-20 00:00:00 |

<br />


# [EXCLUSIVE] FULL JOIN

In the case of a FULL EXCLUSIVE JOIN you are essentially trying to query out the values of Left Table and Right Table but not including the common value left and right table.

## SYNTAX

```sql
SELECT column_name(s)
FROM table1
FULL JOIN table2
ON table1.id = table2.id;
WHERE table2.id IS NULL OR table1.id IS NULL 
```

![image](https://user-images.githubusercontent.com/63160825/121809603-1036c280-cc7b-11eb-9f3a-249e5fa87df5.png)


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

Applying **Exclusive Full Join**:

```sql
SELECT  Customers.ID, Customers.NAME, Orders.AMOUNT, Orders.DATE
FROM CUSTOMERS
FULL JOIN ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;
WHERE ORDERS.CUSTOMER_ID IS NULL OR CUSTOMERS.ID IS NULL
```

**RESULT TABLE**

| ID | NAME     | AMOUNT | DATE                |
| -- | -------- | ------ | ------------------- |
|  1 | Ramesh   |   NULL | NULL                |
|  5 | Hardik   |   NULL | NULL                |
|  6 | Komal    |   NULL | NULL                |
|  7 | Muffy    |   NULL | NULL                |

<br />

**NOTE :** If your Database does not support FULL JOIN (MySQL does not support FULL JOIN), then you can use UNION ALL clause to combine these two JOINS as shown below.

```sql
   SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMERS
   LEFT JOIN ORDERS
   ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID
UNION ALL
   SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMERS
   RIGHT JOIN ORDERS
   ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID

```

<br />

[HOME](README.md)

[< PREVIOUS](rightjoin.md) || [NEXT >](selfjoin.md)
