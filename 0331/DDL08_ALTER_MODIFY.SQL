--컬럼의 사이즈 변경
--desc dept7;
--  이름         널?      유형
-- ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
-- DCODE              VARCHAR2(6)
-- DNAME     NOT NULL VARCHAR2(30)
-- LOCATIONS          VARCHAR2(10)
-- LOC                VARCHAR2(10)
-- 
--  LOC  VARCHAR2(10) -> VARCHAR2(20)

ALTER TABLE dept7
MODIFY (loc VARCHAR2(20));

테이블이 변경되었습니다.

 이름             널?      유형                
 ---------------- -------- ----------------
 DCODE                     VARCHAR2(6)
 DNAME            NOT NULL VARCHAR2(30)
 LOCATIONS                 VARCHAR2(10)
 LOC                       VARCHAR2(20)