[< BACK](README.md)

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

Different LIKE operators with "%" and "_" wildcards:

| Like Operator    | Description                                                                  | 
| ---------------- | :--------------------------------------------------------------------------- | 
| LIKE 'a%'        | Finds any values that start with "a"                                         | 
| LIKE '%a'        | Finds any values that end with "a"                                           |
| LIKE '%or%'      | Finds any values that have "or" in any position                              |
| LIKE '_r%'       | Finds any values that have "r" in the second position                        |  
| LIKE 'a_%'       | Finds any values that start with "a" and are at least 2 characters in length |
| LIKE 'a__%'      | Finds any values that start with "a" and are at least 3 characters in length |
| LIKE 'a%o'       | Finds any values that start with "a" and ends with "o"                       |

## EXAMPLE
Suppose there is a Table name as "HrEmployee" having Age, Attrition, BusinessTravel, DailyRate, Department,
DistanceFromHome, Education, EducationField columns, EmployeeNumber, etc as Columns.

+ SQL statement selects all employees with a EducationField starting with "a":
```sql
SELECT * FROM HrEmployee
WHERE EducaitonField LIKE 'a%';
```

<br />

+ SQL statement selects all employees with a EducationField eniding with "a":
```sql
SELECT * FROM HrEmployee
WHERE EducaitonField LIKE '%a';
```

<br />

+ SQL statement selects all employees with a EducationField that have "or" in any position:
```sql
SELECT * FROM HrEmployee
WHERE EducaitonField LIKE '%or%';
```

<br />

+ SQL statement selects all employees with a EducationField that have "o" in the second position:
```sql
SELECT * FROM HrEmployee
WHERE EducaitonField LIKE '_o%';
```

<br />

+ SQL statement selects all employees with a EducationField that start with "a" and are atleast 3 characters in length:
```sql
SELECT * FROM HrEmployee
WHERE EducaitonField LIKE 'a__%';
```

<br />

+ SQL statement selects all employees with a EducationField that start with "a" and end with "o":
```sql
SELECT * FROM HrEmployee
WHERE EducaitonField LIKE 'a%o';
```

<br />

+ SQL statement selects all employees with a EducationField that doesn't start with "b":
```sql
SELECT * FROM HrEmployee
WHERE EducaitonField NOT LIKE 'b%';
```

<br />

[< BACK](README.md)
