[< PREVIOUS](fulljoin.md) || [NEXT >](cartesianjoin.md)

# SELF JOIN

The SQL SELF JOIN is used to join a table to itself as if the table were two tables; temporarily renaming at least one table in the SQL statement.

A self join is a regular join, but the table is joined with itself.

## SYNTAX

```sql
SELECT column_name(s)
FROM table T1, table T2
WHERE condition;
```

Here T1 and T2 are the different table aliases for the same table.

![image](https://user-images.githubusercontent.com/63160825/126169455-9e45e3b2-ad00-4c0c-80e4-bb49b223ca7d.png)


## EXAMPLE

<br />

Consider the following Customers table.

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

Lets apply **SELF JOIN** as:

```sql
SELECT a.id, b.NAME, a.SALARY
FROM CUSTOMERS a, CUSTOMERS b
WHERE a.SALARY < b.SALARY
```

<br />

**RESULT:**

| ID | NAME     | SALARY  |
| -- | -------- | ------- |
|  2 | Ramesh   | 1500.00 |
|  2 | kaushik  | 1500.00 |
|  1 | Chaitali | 2000.00 |
|  2 | Chaitali | 1500.00 |
|  3 | Chaitali | 2000.00 |
|  6 | Chaitali | 4500.00 |
|  1 | Hardik   | 2000.00 |
|  2 | Hardik   | 1500.00 |
|  3 | Hardik   | 2000.00 |
|  4 | Hardik   | 6500.00 |
|  6 | Hardik   | 4500.00 |
|  1 | Komal    | 2000.00 |
|  2 | Komal    | 1500.00 |
|  3 | Komal    | 2000.00 |
|  1 | Muffy    | 2000.00 |
|  2 | Muffy    | 1500.00 |
|  3 | Muffy    | 2000.00 |
|  4 | Muffy    | 6500.00 |
|  5 | Muffy    | 8500.00 |
|  6 | Muffy    | 4500.00 |

<br />

## WHY SELF JOIN ?

A self join allows you to join a table to itself. It is useful for querying hierarchical data or comparing rows within the same table.

<br />

[HOME](README.md)

[< PREVIOUS](fulljoin.md) || [NEXT >](cartesianjoin.md)
