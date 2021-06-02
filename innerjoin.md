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

Consider Table 1 - CUSTOMERS
