TRUNCATE TABLE sawon;

INSERT INTO sawon
SELECT LPAD(rownum,4,0) as empno,
       'pcwk'|| LPAD(rownum,4,0) as ename,
	   sysdate - rownum as hiredate,
	   DECODE( MOD(ROWNUM,2),0,10,20) as deptno
FROM dual
CONNECT BY LEVEL <= 9000
;

commit;

SELECT COUNT(*) FROM sawon;

  COUNT(*)
----------
      9000

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
		--조건
		ORDER BY hiredate DESC
	)t1
	WHERE ROWNUM <=(&PAGE_SIZE*(&PAGE_NUM-1)+&PAGE_SIZE)
)tt1
WHERE rnum >=(&PAGE_SIZE*(&PAGE_NUM-1)+1)
;
PAGE_SIZE,PAGE_NUM
시작번호,1,11,21,31,..
&PAGE_SIZE*(&PAGE_NUM-1)+1

끝번호 ,10,20,30,40..
&PAGE_SIZE*(&PAGE_NUM-1)+&PAGE_SIZE


총글수 
SELECT COUNT(*)
FROM sawon
--조건
ORDER BY hiredate DESC;

SELECT A.*,B.*
FROM (
	SELECT tt1.rnum as num,
		   tt1.empno,
		   tt1.ename,
		   TO_CHAR(tt1.hiredate,'YYYY/MM/DD') AS hiredate,
		   tt1.deptno
	FROM (
		SELECT ROWNUM AS rnum,t1.*
		FROM (
			SELECT *
			FROM sawon
			--조건
			ORDER BY hiredate DESC
		)t1
		WHERE ROWNUM <=10
	)tt1
	WHERE rnum >=1
)A
CROSS JOIN
(
SELECT COUNT(*) AS total_cnt
FROM sawon
--조건)B
;

       NUM      EMPNO ENAME                HIREDATE                 DEPTNO  TOTAL_CNT
---------- ---------- -------------------- -------------------- ---------- ----------
         1          1 pcwk0001             2022/04/05                   20       9000
         2          2 pcwk0002             2022/04/04                   10       9000
         3          3 pcwk0003             2022/04/03                   20       9000
         4          4 pcwk0004             2022/04/02                   10       9000
         5          5 pcwk0005             2022/04/01                   20       9000
         6          6 pcwk0006             2022/03/31                   10       9000
         7          7 pcwk0007             2022/03/30                   20       9000
         8          8 pcwk0008             2022/03/29                   10       9000
         9          9 pcwk0009             2022/03/28                   20       9000
        10         10 pcwk0010             2022/03/27                   10       9000

10 행이 선택되었습니다.






