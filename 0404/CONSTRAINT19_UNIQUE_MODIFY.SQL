--
--LOGIN_ID                                 LOGIN_PWD                                TEL
------------------------------------------ ---------------------------------------- ----------------------------------------
--TEST_ID_01                               PWD01                                    010-1234-5678
--TEST_ID_02                               PWD02                                    010-1234-5678
--                                         PWD02                                    010-1234-5678
--UPDATE  TABLE_UNIQUE
--   SET  TEL = '010-1235-5678'                        
--WHERE   LOGIN_ID = 'TEST_ID_01'; 
--   
--UPDATE  TABLE_UNIQUE
--   SET  TEL = '010-1236-5678'                        
--WHERE   LOGIN_ID = 'TEST_ID_02'; 
--
--   
--ALTER TABLE TABLE_UNIQUE
--MODIFY (tel UNIQUE);
--
--
--SELECT * FROM TABLE_UNIQUE;

--UNIQUE 컬럼에 NULL로 UPDATE

UPDATE  TABLE_UNIQUE
   SET  TEL = NULL;
   
SELECT * FROM TABLE_UNIQUE;   
   
--UNIQUE해도 NULL은 다건 입력가능   
LOGIN_ID                                 LOGIN_PWD                                TEL
---------------------------------------- ---------------------------------------- ----------------------------------------
TEST_ID_01                               PWD01
TEST_ID_02                               PWD02
                                         PWD02   