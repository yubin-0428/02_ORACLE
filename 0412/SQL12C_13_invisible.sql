--CREATE TABLE T_MEMBER
--(
--    no NUMBER,
--    name VARCHAR2(10),
--    tel  NUMBER,
--    jumin VARCHAR2(13) invisible
--);
--
----jumin 컬럼이 보이지 않음!
--desc T_MEMBER;


--INSERT INTO T_MEMBER values (1,'BBB',1234567890,1234567);
--
--1행에 오류:
--ORA-00913: 값의 수가 너무 많습니다


--INSERT INTO T_MEMBER values (1,'BBB',1234567890);
--
--SELECT * FROM T_MEMBER;
--
--        NO NAME                        TEL
------------ -------------------- ----------
--         1 BBB                  1234567890

--속성 변경
ALTER TABLE T_MEMBER
MODIFY (jumin INVISIBLE);

SELECT * FROM T_MEMBER;

col table_name    for a15
col column_name   for a15
col hidden_column for a10
 
SELECT table_name,
       column_name,
       hidden_column
FROM user_tab_cols
WHERE table_name = 'T_MEMBER'

TABLE_NAME      COLUMN_NAME     HIDDEN_COL
--------------- --------------- ----------
T_MEMBER        NO              NO
T_MEMBER        NAME            NO
T_MEMBER        TEL             NO
T_MEMBER        JUMIN           YES