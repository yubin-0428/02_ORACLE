STEP 1 부서 번호가 10번인 사원들의 정보 조회

STEP 2 임의의 3건을 추출

STEP 3 카티션 곱으로 부서 번호가 10번 집합 3세트를 만든다.


STEP 1
SELECT empno,
       ename,
       job,
       sal
FROM emp
WHERE deptno = 10
;

     EMPNO ENAME                JOB                       SAL
---------- -------------------- ------------------ ----------
      7782 CLARK                MANAGER                  2450
      7839 KING                 PRESIDENT                5000
      7934 MILLER               CLERK                    1300

STEP 2
SELECT LEVEL c1 
FROM dual
CONNECT BY LEVEL < =3
;

        C1
----------
         1
         2
         3

SELECT *
FROM (SELECT empno,
             ename,
             job,
             sal
      FROM emp
      WHERE deptno = 10),
     (SELECT LEVEL c1 
      FROM dual
      CONNECT BY LEVEL < =10000000);