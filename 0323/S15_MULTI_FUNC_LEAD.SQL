SELECT ename,
       hiredate,
       sal,
       LEAD(sal,1,0) OVER( ORDER BY hiredate) AS "LEAD"
FROM emp
;