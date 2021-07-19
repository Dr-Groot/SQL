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
