SELECT job,
       LENGTH(job),
       --SUBSTR(job,-LENGTH(job)),
       --SUBSTR(job,-LENGTH(job),2)   
	   SUBSTR(job,-3)
FROM emp
;