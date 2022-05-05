--insert(1111,'È«±æµ¿',10)
INSERT INTO sawon (
    empno,
    ename,
    hiredate,
    deptno
) VALUES (
    :v0,
    :v1,
    sysdate,
    :v3
);
commit;

--delete
DELETE FROM sawon
WHERE   empno = :v0;


--update(,'È«u',20)
UPDATE sawon
   SET ename = :v1,
       hiredate = SYSDATE,
       deptno = :v3
WHERE empno = :v0;

--selectOne
SELECT empno,
       ename,
       TO_CHAR(hiredate,'YYYY/MM/DD HH24:MI:SS') hiredate,
       deptno
FROM sawon
WHERE empno = :V0
;


MERGE INTO sawon ta
USING ( SELECT &empno  AS empno,
               &ename  AS ename,
               SYSDATE AS hiredate,
               &deptno AS deptno
        FROM dual
)tb  
ON ( ta.empno = tb.empno)
WHEN MATCHED THEN
   UPDATE SET ta.ename    = tb.ename,
              ta.hiredate = tb.hiredate,
              ta.deptno   = tb.deptno
WHEN NOT MATCHED THEN
   INSERT (ta.empno,ta.ename,ta.hiredate,ta.deptno) VALUES (tb.empno,tb.ename,tb.hiredate,tb.deptno);
   
--TOP-N
SELECT tt1.rnum as num		
       tt1.empno,		
       tt1.ename,		
           TO_CHAR(tt1.hiredate,'YYYY/MM/DD') AS hiredate,		
           tt1.deptno		
FROM (		
        SELECT ROWNUM AS rnum,t1.*		
        FROM (		
                SELECT *		
                FROM sawon		
                --Á¶°Ç		
                ORDER BY hiredate DESC		
        )t1		
        WHERE ROWNUM <=(&PAGE_SIZE*(&PAGE_NUM-1)+&PAGE_SIZE)		
)tt1		
WHERE rnum >=(&PAGE_SIZE*(&PAGE_NUM-1)+1)		
;		

ÃÑ±Û¼ö 		
SELECT COUNT(*)		
FROM sawon		
--Á¶°Ç		

