CTAS
CREATE TABLE dept6
AS
SELECT dcode, dname
FROM dept2
WHERE dcode IN (1000,1001,1002)
;

SELECT * FROM dept6;

DCODE        DNAME
------------ ------------------------------------------------------------
1000         Management Support Team
1001         Financial Management Team
1002         General affairs

컬럼 추가
ALTER TABLE dept6
ADD (locations VARCHAR2(10));

SELECT * FROM dept6;

DCODE        DNAME                       LOCATIONS
------------ --------------------------- --------------------
1000         Management Support Team
1001         Financial Management Team
1002         General affairs


--DEFAULT 속성으로 컬럼 추가
ALTER TABLE dept6
ADD (location2 VARCHAR2(10) DEFAULT 'SEOUL');


SELECT * FROM dept6;

DCODE        DNAME                        LOCATIONS            LOCATION2
------------ ---------------------------- -------------------- --------------------
1000         Management Support Team                           SEOUL
1001         Financial Management Team                         SEOUL
1002         General affairs                                   SEOUL