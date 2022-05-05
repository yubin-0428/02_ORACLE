--컬럼이름 변경
--LOCATION2 -> LOC로 변경

ALTER TABLE dept6 
RENAME COLUMN location2 TO loc;

테이블이 변경되었습니다.


SELECT * FROM dept6;

DCODE        DNAME                        LOCATIONS            LOC
------------ ---------------------------- -------------------- --------------------
1000         Management Support Team                           SEOUL
1001         Financial Management Team                         SEOUL
1002         General affairs                                   SEOUL