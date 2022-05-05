col "Name and Sal" for a37
SELECT ename||q'[ 's sal is $]' ||sal "Name and Sal"
FROM emp
;
/*
Name and Sal
-------------------------------------
SMITH 's sal is $800
ALLEN 's sal is $1600
WARD 's sal is $1250
JONES 's sal is $2975
MARTIN 's sal is $1250
BLAKE 's sal is $2850
CLARK 's sal is $2450
SCOTT 's sal is $3000
KING 's sal is $5000
TURNER 's sal is $1500
ADAMS 's sal is $1100
JAMES 's sal is $950
FORD 's sal is $3000
MILLER 's sal is $1300
*/