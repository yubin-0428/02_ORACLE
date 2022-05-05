--날짜은 ''으로 감싸서 조회
SELECT ename,
       hiredate
FROM emp
WHERE hiredate = '80/12/17'
;
ENAME                HIREDATE
-------------------- --------
SMITH                80/12/17