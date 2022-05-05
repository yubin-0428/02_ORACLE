--DESC emp2;
--                                   ³Î?      À¯Çü
-- ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
-- empno                             NOT NULL NUMBER
-- name                              NOT NULL VARCHAR2(30)
-- birthday                                   DATE
-- deptno                            NOT NULL VARCHAR2(6)
-- emp_type                                   VARCHAR2(30)
-- tel                                        VARCHAR2(15)
-- hobby                                      VARCHAR2(30)
-- pay                                        NUMBER
-- position                                   VARCHAR2(30)
-- pempno                                     NUMBER
col name for a20
col position for a25
col SALARY for a20
SELECT name,
       position,
       TO_CHAR(pay,'$999,999,999') SALARY
FROM emp2
WHERE pay > (SELECT MIN(pay)
             FROM emp2
             WHERE position = 'Section head')
ORDER BY 1 DESC               
;