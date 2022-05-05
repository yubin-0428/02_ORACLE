--SELECT CONCAT(empno,ename),
--       CONCAT(empno,CONCAT(':',ename)) AS CON
--FROM emp
--WHERE ename = 'SCOTT'
--;
--
--CONCAT(EMPNO,ENAME)  CON
---------------------------------
--7788SCOTT            7788:SCOTT

SELECT empno||ename      AS empno_name,
       empno||':'||ename AS con
FROM emp
WHERE ename = 'SCOTT'
;