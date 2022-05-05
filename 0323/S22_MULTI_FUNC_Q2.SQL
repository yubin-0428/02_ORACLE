SELECT job,
       COUNT(*)
FROM emp
GROUP BY job
HAVING COUNT(*) >=3
;