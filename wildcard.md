[< BACK](README.md)

# WILDCARDS

A wildcard character is used to substitute one or more characters in a string.

> Wildcard characters are used with **LIKE**. [Click Here](like.md) for more info on LIKE.

## WILDCARD CHARACTERS IN MS ACCESS

| SYMBOL  | DESCRIPTION                                         | EXAMPLE                                                        |
| ------- | --------------------------------------------------  | -------------------------------------------------------------- |
| *	      | Represents zero or more characters	                | bl* finds bl, black, blue, and blob                            |
| ?	      | Represents a single character	                      | h?t finds hot, hat, and hit                                    |
| []	    | Represents any single character within the brackets	| h[oa]t finds hot and hat, but not hit                          |
| !	      | Represents any character not in the brackets	      | h[!oa]t finds hit, but not hot and hat                         |   
| -	      | Represents a range of characters	                  | c[a-b]t finds cat and cbt                                      | 
| #       |	Represents any single numeric character	            | 2#5 finds 205, 215, 225, 235, 245, 255, 265, 275, 285, and 295 |

## WILDCARD CHARACTERS IN SQL SERVER

| SYMBOL  | DESCRIPTION                                         | EXAMPLE                                                        |
| ------- | --------------------------------------------------  | -------------------------------------------------------------- |
| %     	| Represents zero or more characters	                | bl% finds bl, black, blue, and blob                            |
| _	      | Represents a single character	                      | h_t finds hot, hat, and hit                                    |
| []	    | Represents any single character within the brackets	| h[oa]t finds hot and hat, but not hit                          |
| ^	      | Represents any character not in the brackets	      | h[^oa]t finds hit, but not hot and hat                         |
| -	      | Represents a range of characters	                  | c[a-b]t finds cat and cbt                                      |

<br />

EXAMPLES WITH **LIKE** opearor:

| Like Operator    | Description                                                                  | 
| ---------------- | ---------------------------------------------------------------------------- | 
| LIKE 'a%'        | Finds any values that start with "a"                                         | 
| LIKE '%a'        | Finds any values that end with "a"                                           |
| LIKE '%or%'      | Finds any values that have "or" in any position                              |
| LIKE '_r%'       | Finds any values that have "r" in the second position                        |  
| LIKE 'a_%'       | Finds any values that start with "a" and are at least 2 characters in length |
| LIKE 'a__%'      | Finds any values that start with "a" and are at least 3 characters in length |
| LIKE 'a%o'       | Finds any values that start with "a" and ends with "o"                       |

<br />

[< BACK](README.md)
