SELECT empno,
       ename,
	   comm,
	   NVL2(comm,'0','x') AS "NVL2",
	   NVL2(comm,sal*12+comm,sal*12) as "anual_sal"
FROM emp
;