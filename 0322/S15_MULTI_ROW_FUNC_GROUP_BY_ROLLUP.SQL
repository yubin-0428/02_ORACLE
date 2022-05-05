SELECT  deptno,job,AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY ROLLUP( deptno,job )
;
--ROLLUP(순서 중요): 순서가 달라 지면 결과 값이 달라 진다.



--    DEPTNO JOB                   AVG_SAL    CNT_EMP
------------ ------------------ ---------- ----------
--        10 CLERK                    1300          1
--        10 MANAGER                  2450          1
--        10 PRESIDENT                5000          1
--        10                    2916.66667          3
--        20 CLERK                     950          2
--        20 ANALYST                  3000          2
--        20 MANAGER                  2975          1
--        20                          2175          5
--        30 CLERK                     950          1
--        30 MANAGER                  2850          1
--        30 SALESMAN                 1400          4
--        30                    1566.66667          6
--                              2073.21429         14
--
--13 행이 선택되었습니다.