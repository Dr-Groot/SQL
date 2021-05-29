[< BACK](README.md)
# MIN AND MAX

+ The MIN() function returns the smallest value of the selected column.
+ The MAX() function returns the largest value of the selected column. 
  
## MIN() AND MIN() SYNTAX */
```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```

<br />

```sql
SELECT MAX(column_name)
FROM table_name
WHERE condition;
```

# EXAMPLE
Suppose there is a Table name as "HrEmployee" having Age, Attrition, BusinessTravel, DailyRate, Department, DistanceFromHome,
Education, EducationField columns, EmployeeNumber, etc as Columns.

<br />

+ SQL statement finds the price of the cheapest Daily Rate:
```sql
SELECT MIN(DailyRate) AS SmallestPrice
FROM HrEmployee;
```

<br />

+ SQL statement finds the price of the cheapest Daily Rate:
```sql
SELECT MAX(DailyRate) AS LargestPrice
FROM HrEmployee;
```

<br />

+ SQl statement finds the full detail of person having highest daily rate:
```sql
SELECT dailyrate AS Highest 
FROM HrEmployee 
ORDER by dailyrate DESC LIMIT 1
```

[< BACK](README.md)
