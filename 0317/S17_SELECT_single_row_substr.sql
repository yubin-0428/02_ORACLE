SELECT job,
       SUBSTR(job,1,2),
       SUBSTR(job,3,2),
       SUBSTR(job,5)
FROM emp
;