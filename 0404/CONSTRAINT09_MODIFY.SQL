--이미 생성한 테이블에 제약 조건 지정                                                 
--                                                    
--        TABLE_NOTNULL, 전화번호( TEL)에 NOT NULL추가                                           
--                                                    
--        ALTER TABLE 테이블 이름                                            
--        MODIFY( 컬럼 제약조건)                                            
ALTER TABLE TABLE_NOTNULL
MODIFY( TEL NOT NULL);

ALTER TABLE TABLE_NOTNULL
*
1행에 오류:
ORA-02296: (SCOTT.) 사용으로 설정 불가 - 널 값이 발견되었습니다.

SELECT *
FROM TABLE_NOTNULL;

LOGIN_ID    LOGIN_PWD    TEL  
----------- ------------ -----
TEST_01     1234

UPDATE TABLE_NOTNULL
   SET TEL = '010-1234-5678'
WHERE  LOGIN_ID = 'TEST_01';  
   
COMMIT;
   
SELECT *
FROM TABLE_NOTNULL;   

ALTER TABLE TABLE_NOTNULL
MODIFY( TEL NOT NULL);

COL  owner FOR A10
COL  constraint_name FOR A25
COL  constraint_type FOR A10
COL  table_name FOR A19
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL'
;