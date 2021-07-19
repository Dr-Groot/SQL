[< PREVIOUS](cartesianjoin.md) || [NEXT >](groupby.md)

# UNION Operator

The UNION operator is used to combine the result-set of two or more SELECT statements.

+ Every SELECT statement within UNION must have the same number of columns
+ The columns must also have similar data types
+ The columns in every SELECT statement must also be in the same order

</br>

## UNION SYNTAX

```sql
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;
```

## UNION ALL SYNTAX

The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:

``sql
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;

## EXAMPLE

Consider "Customers" table as table1:

| ID | NAME      | AGE | ADDRESS        | POSTAL CODE |
| -- | --------- | --- | -------------- | ----------- |
|  1 | Maria     |  32 | Obere str127   |  2000.00 |
|  2 | Ana       |  25 | Avda De La     |  1500.00 |
|  3 | Antonio   |  23 | Mataderos 2312 |  2000.00 |
|  4 | Thomas    |  25 | Mumbai    |  6500.00 |
|  5 | Christina |  27 | Bhopal    |  8500.00 |
|  6 | Hanna     |  22 | MP        |  4500.00 |
|  7 | Martin    |  24 | Indore    | 10000.00 |
|  8 | Laurance  |  22 | 
|  9 | Elizabeth |  33 |
| 10 | Victoria  |  30 |

| 1  | Alfreds Futterkiste	      | Maria Anders	Obere Str. 57	Berlin	12209	Germany
| 2	 | Ana Trujillo Emparedados   | y helados	Ana Trujillo	Avda. de la Constitución 2222	México D.F.	05021	Mexico
| 3	 | Antonio Moreno Taquería	  | Antonio Moreno	Mataderos 2312	México D.F.	05023	Mexico
| 4	 | Around the Horn	          |Thomas Hardy	120 Hanover Sq.	London	WA1 1DP	UK
| 5	 | Berglunds snabbköp         |	Christina Berglund	Berguvsvägen 8	Luleå	S-958 22	Sweden
| 6	 | Blauer See Delikatessen    |	Hanna Moos	Forsterstr. 57	Mannheim	68306	Germany
| 7	 | Blondel père et fils       |	Frédérique Citeaux	24, place Kléber	Strasbourg	67000	France
| 8	 | Bólido Comidas preparadas  |	Martín Sommer	C/ Araquil, 67	Madrid	28023	Spain
| 9	 | Bon app'                   |	Laurence Lebihans	12, rue des Bouchers	Marseille	13008	France
| 10 | Bottom-Dollar Marketse	    | Elizabeth Lincoln	23 Tsawassen Blvd.	Tsawassen	T2F 8M4	Canada
| 11 | B's Beverages	            | Victoria Ashworth	Fauntleroy Circus	London	EC2 5NT	UK
| 12 | Cactus Comidas para llevar |	Patricio Simpson	Cerrito 333	Buenos Aires	1010	Argentina
| 13 | Centro comercial Moctezuma |	Francisco Chang	Sierras de Granada 9993	México D.F.	05022	Mexico
| 14 |Chop-suey Chinese           |	Yang Wang	Hauptstr. 29	Bern	3012	Switzerland
| 15 |Comércio Mineiro	          | Pedro Afonso	Av. dos Lusíadas, 23	São Paulo	05432-043	Brazil
