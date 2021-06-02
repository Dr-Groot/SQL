[< PREVIOUS](between.md) || [NEXT >](joins.md)

# ALIASES

For giving temporary name to table, columns in a table we use SQL Aliases. Makes columns name more readable and only exists for the duration of that query.

> We use **AS** Keyword to create Aliases.

## SYNTAX

+ For Column:
```sql
SELECT column_name AS alias_name
FROM table_name;
```

<br />

+ For Table:
```sql
SELECT column_name(s)
FROM table_name AS alias_name;
```

## EXAMPLE

Suppose there is a Table name as "HrEmployee" having Age, Attrition, BusinessTravel, DailyRate, Department, DistanceFromHome,
Education, EducationField columns, EmployeeNumber, etc as Columns.

<br />

+ SQL statement to create aliases for the DistanceFromHome:
```sql
SELECT DistanceFromHome AS Distance(KM)
FROM HrEmployee.
```

<br />

+ SQL statement to create two aliases one for age and dailyrate
```sql
SELECT age AS Employee_Age, DailyRate as Rates
FROM HrEmployee.
```

## USE OF ALIASES

+ There are more than one table involved in a query.
+ Functions are used in the query.
+ Column names are big or not very readable.
+ Two or more columns are combined together.

<br />

[< PREVIOUS](between.md) || [NEXT >](joins.md)

[HOME](README.md)
