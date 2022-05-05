--INSERT INTO emp_trg (
--    empno,
--    ename,
--    job,
--    mgr,
--    hiredate,
--    sal,
--    comm,
--    deptno
--) VALUES (
--    9999,
--    'TestEmp',
--    'CLERK',
--    7788,
--    TO_DATE('2022-03-01','YYYY-MM-DD'),
--    1200,
--    NULL,
--    20
--);
--
--COMMIT;

--SELECT * FROM emp_trg;

--     EMPNO ENAME                JOB                       MGR HIREDATE         SAL       COMM     DEPTNO
------------ -------------------- ------------------ ---------- -------- ---------- ---------- ----------
--      7369 SMITH                CLERK                    7902 80/12/17         800                    20
--      7499 ALLEN                SALESMAN                 7698 81/02/20        1600        300         30
--      7521 WARD                 SALESMAN                 7698 81/02/22        1250        500         30
--      7566 JONES                MANAGER                  7839 81/04/02        2975                    20
--      7654 MARTIN               SALESMAN                 7698 81/09/28        1250       1400         30
--      7698 BLAKE                MANAGER                  7839 81/05/01        2850                    30
--      7782 CLARK                MANAGER                  7839 81/06/09        2450                    10
--      7788 SCOTT                ANALYST                  7566 87/04/19        3500                    20
--      7839 KING                 PRESIDENT                     81/11/17        5000                    10
--      7844 TURNER               SALESMAN                 7698 81/09/08        1500          0         30
--      7876 ADAMS                CLERK                    7788 87/05/23        1100                    20
--      7900 JAMES                CLERK                    7698 81/12/03         950                    30
--      7902 FORD                 ANALYST                  7566 81/12/03        3000                    20
--      7934 MILLER               CLERK                    7782 82/01/23        1300                    10
--      9999 TestEmp              CLERK                    7788 22/03/01        1200                    20
--
--15 행이 선택되었습니다.
--emp_trg_log조회
COL TABLENAME FOR A20
COL DML_TYPE FOR A20
COL EMPNO FOR 9999
COL USER_NAME FOR A20
COL CHANGE_DATE FOR A10
SELECT * FROM emp_trg_log;

TABLENAME            DML_TYPE             EMPNO USER_NAME            CHANGE_DAT
-------------------- -------------------- ----- -------------------- ----------
EMP_TRG              INSERT                9999 SCOTT                22/04/12