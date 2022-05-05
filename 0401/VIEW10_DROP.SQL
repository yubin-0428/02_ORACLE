DROP VIEW view01;


COL view_name FOR A20
COL text FOR A50
COL read_only FOR A10

SELECT t1.view_name,
       t1.text,
       t1.read_only
FROM user_views t1
;

VIEW_NAME            TEXT                                               READ_ONLY
-------------------- -------------------------------------------------- ----------
VIEW2                (SELECT A,B FROM o_table)                          Y
                     WITH READ ONLY

VW_EMP20             ( SELECT empno, ename, job,deptno                  N
                          FROM emp
                          WHERE deptno =20
                     )