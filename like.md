[< BACK]

# LIKE OPERATOR
To Search for a specified pattern in a column we use LIKE operator in a WHERE clause.

There are basically 2 wildcards used in conjunction to the LIKE operator:
+ The percent sign (%) represents zero, one, or multiple characters
+ The underscore sign (_) represents one, single character

> IMPORTANT: We use an asterisk (*) instead of the percent sign (%), and a question mark (?) instead of the underscore (_) in **MS ACCESS**.

## SYNTAX

```sql
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
```

> You can also combine any number of conditions using **AND** or **OR operators**.



## EXAMPLE
Suppose there is a Table name as "HrEmployee" having Age, Attrition, BusinessTravel, DailyRate, Department,
DistanceFromHome, Education, EducationField columns, EmployeeNumber, etc as Columns.
