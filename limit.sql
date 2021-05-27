/* THE SQL SELECT TOP CLAUSE */
/* The SELECT TOP clause is used to specify the number of records to return. */

/* IMPORTANT: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause 
to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM. */ 

/* SQL SERVER / MS ACCESS SYNTAX: */
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;


/* MySQL SYNTAX: */
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number; 


/* ORACLE 12 SYNTAX: */
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;


