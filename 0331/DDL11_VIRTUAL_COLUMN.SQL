STEP 1. 가상 컬럼을 가지는 테이블 생성                                       
STEP 2. 테이블에 데이터 입력(가상컬럼에 직접 데이터 입력 않됨!)                                        
STEP 3. 입력된 데이터 조회                                        

STEP 4. 기존값을 변경


STEP 1.
CREATE TABLE vt1(
   col1 NUMBER,
   col2 NUMBER,
   col3 NUMBER GENERATED ALWAYS AS (COL1 + COL2)
);

STEP 2.
INSERT INTO vt1 VALUES (1,2,3);
1행에 오류:
ORA-54013: INSERT 작업은 가상 열에서 허용되지 않습니다.

INSERT INTO vt1 (col1,col2) VALUES (1,2);

STEP 3.
SELECT * FROM vt1;
      COL1       COL2       COL3
---------- ---------- ----------
         1          2          3
       
STEP 4.   : COL1의 값 1에서 5로변경
UPDATE vt1
   SET col1 = 5;
   
SELECT * FROM vt1;   
      COL1       COL2       COL3
---------- ---------- ----------
         5          2          7