--UNION	: 두 집합의 결과를 합쳐서 출력, 중복 값을 제거하고 정렬
-- col studno  for 9999 -> 숫자 4자리
-- col name    for a15  -> 아스키 15자리
col studno  for 9999
col name    for a17
col deptno1 for 9999 
--SELECT studno, name, deptno1
--FROM student
--WHERE deptno1 = 101
--;

--desc professor;
--SELECT profno,name,deptno
--FROM professor
--WHERE deptno = 101
--;

SELECT studno, name, deptno1,1
FROM student
WHERE deptno1 = 101
UNION
SELECT profno,name,deptno, 2
FROM professor
WHERE deptno = 101
;
STUDNO NAME              DEPTNO1          1
------ ----------------- ------- ----------
  1001 Audie Murphy          101          2
  1002 Angela Bassett        101          2
  1003 Jessica Lange         101          2
  9411 James Seo             101          1
  9511 Billy Crystal         101          1
  9611 Richard Dreyfus       101          1
  9711 Danny Devito          101          1