[< PREVIOUS](in.md) || [NEXT>](aliases.md)

# BETWEEN OPERATOR

The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

> The BETWEEN operator is inclusive: begin and end values are included. 

## SYNTAX 

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

## EXAMPLE

Suppose there is a Table name as "HrEmployee" having Age, Attrition, BusinessTravel, DailyRate, Department, DistanceFromHome,
Education, EducationField columns, EmployeeNumber, etc as Columns.

<br />

+ SQL statement selects all dailyrates with a rates between 100 and 500:
```sql
SELECT * FROM HrEmployee
WHERE DailyRate BETWEEN 100 AND 500;
```

<br />

+ SQL statement selects all dailyrates with a rates out of between 100 and 500:
```sql
SELECT * FROM HrEmployee
WHERE DailyRate NOT BETWEEN 100 AND 500;
```

<br />

+ SQL statement selects all dailyrates with a rates between 100 and 500 but not including those having EducationField as Medical.
```sql
SELECT * FROM HrEmployee
WHERE DailyRates BETWEEN 100 AND 500
AND EducationField NOT IN ("Medical");
```

<br />

> We can also add text value in range of Between, ex: str1 BETWEEN str2.

<br />

> We can add date also in range, ex: BETWEEN '1996-07-01' AND '1996-07-31'.

<br />

[< PREVIOUS](in.md) || [NEXT>](aliases.md)

[HOME](README.md)
