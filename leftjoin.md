[< PREVIOUS](innerjoin.md) || [NEXT >](rightjoin.md)

# LEFT JOIN

SQL LEFT JOIN returns all rows from the left table, even if there are no matches in the right table. This means that if the ON clause matches 0 (zero) records 
in the right table; the join will still return a row in the result, but with NULL in each column from the right table.

This means that a left join returns all the values from the left table, plus matched values from the right table or NULL in case of no matching join predicate.

## SYNTAX

```sql
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
```

![image](https://user-images.githubusercontent.com/63160825/120754375-372e1f80-c52a-11eb-9ace-f4d77acace7c.png)

> In some databases LEFT JOIN is called LEFT OUTER JOIN.

