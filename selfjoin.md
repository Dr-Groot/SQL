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

[HOME](README.md)

[< PREVIOUS](fulljoin.md) || [NEXT >](cartesianjoin.md)
