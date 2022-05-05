SELECT ename,
       LENGTH(ename) ename_len
FROM emp
WHERE LENGTH(ename) >= 5
;
