--c_test1 ctest1_deptno_fk drop

--ALTER TABLE c_test1
--DROP CONSTRAINT ctest1_deptno_fk;


--ALTER TABLE c_test1
--ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
--REFERENCES c_test2(no)
--ON DELETE SET NULL;


--SELECT * FROM c_test1;
--SELECT * FROM c_test2;

--        NO NAME                     DEPTNO
------------ -------------------- ----------
--         2 banana                       20
--         3 cherry                       30
--
--경   과: 00:00:00.00
--
--        NO NAME
------------ --------------------
--        20 BBB
--        30 CCC

DELETE FROM c_test2 WHERE  NO = 20;
SELECT * FROM c_test1;


        NO NAME                     DEPTNO
---------- -------------------- ----------
         2 banana                       NULL
         3 cherry                       30