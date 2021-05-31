[< BACK](README.md)

# SUM, AVG and COUNT FUNTIONS

+ The SUM() function returns the total sum of a numeric column. 
+ The AVG() function returns the average value of a numeric column.
+ The COUNT() function returns the number of rows that matches a specified criterion.

## SUM(), AVG() and COUNT() SYNTAX
```sql
SELECT SUM(column_name)
FROM table_name
WHERE condition;
```

<br />

```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;
```

<br />

```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

## EXAMPLES

Suppose there is a Table name as "HrEmployee" having Age, Attrition, BusinessTravel, DailyRate, Department, DistanceFromHome,
Education, EducationField columns, EmployeeNumber, etc as Columns.

<br />

+ SQL statement finds the sum of the "DailyRate" fields in the "HrEmployee" table:
```sql
SELECT SUM(DailyRate)
FROM HrEmployee;
```

> During the sum, Null values are ignored

<br />

+ SQL statement finds the average of the "DailyRate" fields in the "HrEmployee" table:
```sql
SELECT AVG(DailyRate)
FROM HrEmployee;
```

<br />

+ SQL statement finds the number of Female worker from "HrEmployee":
```sql
SELECT COUNT(GENDER)
FROM HrEmployee
Where GENDER = "FEMALE"
```

[< BACK](README.md)
