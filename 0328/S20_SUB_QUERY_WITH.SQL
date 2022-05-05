--SCOTT계정으로 with_test1 테이블 생성후 데이터 500만건 입력
--CREATE TABLE with_test1(
-- no NUMBER,
-- name VARCHAR2(10),
-- pay NUMBER(6)
--)
--TABLESPACE USERS;


--DESC with_test1;
-- 이름     널?      유형              
-- -------- -------- --------------
-- NO                NUMBER
-- NAME              VARCHAR2(10)
-- PAY

--500만건 입력
--BEGIN
--    FOR i IN 1..5000000 LOOP
--        INSERT INTO with_test1 VALUES (i,
--                                       DBMS_RANDOM.STRING('A',5),    --대소문자 구분 없이 5자리 문자
--                                       DBMS_RANDOM.VALUE(6,999999) );--숫자 6자리 문자
--    
--    END LOOP;
--    COMMIT;
--
--END;
--/   --anonymous 프로시저 실행

--500만건 입력 건수 확인
--SELECT COUNT(*)
--FROM with_test1;

--  COUNT(*)
------------
--   5000000



--STEP 2. MAX,MIN 함수를 사용하여 최대값, 최소값의 차이를 구하고 소요시간 측정.
--SELECT MAX(pay)-MIN(pay) 
--FROM with_test1;
--
--MAX(PAY)-MIN(PAY)
-------------------
--           999993
--
--경   과: 00:00:00.13

--STEP 3. PAY  INDEX 생성
--CREATE INDEX idx_with_pay ON with_test1(pay);

--SELECT MAX(pay)-MIN(pay) 
--FROM with_test1
--WHERE pay > 0;

--MAX(PAY)-MIN(PAY)
-------------------
--           999993
--
--경   과: 00:00:00.24

--WITH절을 사용하여 동일한 작업 수행

  
WITH a AS (
  /*최대값 */
  --ORACLE HINT
  SELECT /*+ INDEX_DESC (w idx_with_pay) */ pay
  FROM with_test1 w
  WHERE pay > 0 
  AND ROWNUM = 1
),b AS (  
  /*최소값 */
  SELECT /*+ INDEX_ASC (w idx_with_pay) */ pay
  FROM with_test1 w
  WHERE pay > 0 
  AND ROWNUM = 1)
  SELECT a.pay - b.pay
  FROM a,b;
  