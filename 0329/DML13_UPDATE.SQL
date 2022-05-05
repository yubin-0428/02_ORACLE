--SELECT dname,loc
--FROM dept
--WHERE deptno = 40;
--    DEPTNO DNAME                        LOC
------------ ---------------------------- --------------------------
--        40 OPERATIONS                   BOSTON
--
--SELECT * FROM dept_temp2
--WHERE deptno = 40;
--    DEPTNO DNAME                        LOC
------------ ---------------------------- --------------------------
--        40 DATABASE                     SEOUL

--UPDATE dept_temp2
--   SET (dname,loc) = (SELECT dname,loc
--                      FROM dept
--                      WHERE deptno = 40)
--WHERE  deptno = 40;


--SELECT * FROM dept_temp2
--WHERE deptno = 40;
--
--    DEPTNO DNAME                        LOC
------------ ---------------------------- --------------------------
--        40 OPERATIONS                   BOSTON
UPDATE dept_temp2
   SET dname = (SELECT dname
                FROM dept
                WHERE deptno = 40),
       loc   = (SELECT loc
                FROM dept
                WHERE deptno = 40)           
WHERE  deptno = 40;