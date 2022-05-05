--emp테이블에서 이름 첫음 두 글자를 **로 표시
SELECT ename,
       REPLACE(ename, SUBSTR(ename,1,2),'**') AS REP
FROM emp
WHERE deptno = 10
;
