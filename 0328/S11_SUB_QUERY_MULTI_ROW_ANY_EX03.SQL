SELECT t2.dname,
       t1.name,
       TO_CHAR(t1.pay,'$999,999,999') SALARY
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
AND t1.pay <ALL (SELECT AVG(NVL(pay,0))
                 FROM emp2
                 GROUP BY deptno)
;