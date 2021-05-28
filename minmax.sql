/* The MIN() function returns the smallest value of the selected column.
  The MAX() function returns the largest value of the selected column. */
  
/* MIN() SYNTAX */
SELECT MIN(column_name)
FROM table_name
WHERE condition;

/* MAX() SYNTAX */
SELECT MAX(column_name)
FROM table_name
WHERE condition;

/* ------------EXAMPLE-------------*/
/* There is a Table name as "HrEmployee" having Age, Attrition, BusinessTravel, DailyRate, Department, DistanceFromHome,
Education, EducationField columns, EmployeeNumber, etc as Columns */

/* SQL statement finds the price of the cheapest Daily Rate: */
SELECT MIN(DailyRate) AS SmallestPrice
FROM HrEmployee;

/* SQL statement finds the price of the cheapest Daily Rate: */
SELECT MAX(DailyRate) AS LargestPrice
FROM HrEmployee;

/* SQl statement finds the full detail of person having highest daily rate */
SELECT dailyrate AS Highest 
FROM HrEmployee 
ORDER by dailyrate DESC LIMIT 1
