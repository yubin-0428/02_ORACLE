INSERT INTO dept_trg (
    deptno,
    dname,
    loc
) VALUES (
    99,
    'test_dname',
    'seoul'
);

--commit;
--
SELECT * FROM DEPT_TRG;
SELECT * FROM DEPT_TRG_LOG;

UPDATE DEPT_TRG
   SET LOC = 'TEST_LOC'
WHERE  DEPTNO = 99;  
--
--commit;

DELETE FROM  DEPT_TRG WHERE  DEPTNO = 99; 

commit;