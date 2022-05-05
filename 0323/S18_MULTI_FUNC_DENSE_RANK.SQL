SELECT empno,
       ename,
       sal,
       RANK() OVER(order by sal desc)       AS "RANK_DESC",
       DENSE_RANK() OVER(order by sal desc) AS "DENSE_RANK"
FROM emp
;