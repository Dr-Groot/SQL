[< PREVIOUS](selfjoin.md) || [NEXT>](union.md)

# CARTESIAN JOIN (OR CROSS JOIN)

The CARTESIAN JOIN or CROSS JOIN returns the Cartesian product of the sets of records from two or more joined tables.
Thus, it equates to an inner join where the join-condition always evaluates to either True or where the join-condition is absent from the statement.

## SYNTAX

```sql
SELECT table1.column1 , table1.column2, table2.column1...
FROM table1
CROSS JOIN table2;
```

![image](https://user-images.githubusercontent.com/63160825/126171053-26c7cae5-9b2e-43ce-9ae0-6d1815145bfd.png)

> Cartesian Join is also known as Cross Join.

## EXAMPLE 

Consider the following table Customers as Table 1:

| ID | NAME     | AGE | ADDRESS   | SALARY   |
| -- | -------- | --- | --------- | -------- |
|  1 | Ramesh   |  32 | Ahmedabad |  2000.00 |
|  2 | Khilan   |  25 | Delhi     |  1500.00 |
|  3 | kaushik  |  23 | Kota      |  2000.00 |
|  4 | Chaitali |  25 | Mumbai    |  6500.00 |
|  5 | Hardik   |  27 | Bhopal    |  8500.00 |
|  6 | Komal    |  22 | MP        |  4500.00 |
|  7 | Muffy    |  24 | Indore    | 10000.00 |


Considerthe Orders as Table 2:

|OID  | DATE                | CUSTOMER_ID | AMOUNT |
| --- | ------------------- | ----------- | ------ |
| 102 | 2009-10-08 00:00:00 |           3 |   3000 |
| 100 | 2009-10-08 00:00:00 |           3 |   1500 |
| 101 | 2009-11-20 00:00:00 |           2 |   1560 |
| 103 | 2008-05-20 00:00:00 |           4 |   2060 |

Applying **Cartesian Join** on following tables:

```sql




[HOME](README.md)

[< PREVIOUS](selfjoin.md) || [NEXT >](union.md)