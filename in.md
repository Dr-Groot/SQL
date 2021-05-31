[< BACK](README.md)

# IN OPERATOR

The IN operator allows you to specify multiple values in a WHERE clause.

> It is a shorthand for multiple **OR conditions**.

## SYNTAX

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
```

**OR:**

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);
```

## EXAMPLE

Suppose there is a Table name as "HrEmployee" having Age, Attrition, BusinessTravel, DailyRate, Department, DistanceFromHome,
Education, EducationField columns, EmployeeNumber, etc as Columns.

+ SQL statement selects all employees that have Job Role as "Manager", "Sales Executive" or "Research Scientist":
```sql
SELECT * FROM HrEmployee
WHERE JobRole IN ('Manager', 'Sales Executive', 'Research Scientist');
```

<br />

+ SQL statement selects all employees that don't have Job Role as "Manager", "Sales Executive" or "Research Scientist":
```sql
SELECT * FROM HrEmployee
WHERE JobRole NOT IN ('Manager', 'Sales Executive', 'Research Scientist');
```

<br />

+ SQL statement selects all customers that are from the same countries as the suppliers:
```sql
SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);
```

[< BACK](README.md)

