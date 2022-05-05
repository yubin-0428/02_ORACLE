--DESC dual;
-- 이름       널?      유형         
-- ------------------- -------- 
-- DUMMY             VARCHAR2(1)
--SELECT dummy
--FROM dual
--;
--DU
----
--X
SELECT LENGTH('한글'),
       LENGTHB('한글')
FROM dual
;
--한글 한 글자가 3BYTE
--LENGTH('한글') LENGTHB('한글')
---------------- ---------------
--             2               6