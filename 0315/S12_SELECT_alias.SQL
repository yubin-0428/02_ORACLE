--컬럼 별칭
SELECT empno "employee number",
       ename AS "Employee Name",
	   sal employee_pay
FROM emp
;

--alias 컬럼에 대한 별칭
-- 1. empno "employee number"    -> employee number
-- 2. ename AS "Employee Name"   -> Employee Name
-- 3. sal employee_pay           -> EMPLOYEE_PAY 

--employee number Employee Name        EMPLOYEE_PAY
----------------- -------------------- ------------
--           7369 SMITH                         800
--           7499 ALLEN                        1600
--           7521 WARD                         1250
--           7566 JONES                        2975
--           7654 MARTIN                       1250
--           7698 BLAKE                        2850
--           7782 CLARK                        2450
--           7788 SCOTT                        3000
--           7839 KING                         5000
--           7844 TURNER                       1500
--           7876 ADAMS                        1100
--           7900 JAMES                         950
--           7902 FORD                         3000
--           7934 MILLER                       1300
--
--14 행이 선택되었습니다.