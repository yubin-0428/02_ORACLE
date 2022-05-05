--테이블에서 가상 컬럼 내역을 조회
col column_name for a20
col data_type for a10

SELECT column_name,
       data_type,
       data_default
FROM user_tab_columns
WHERE table_name ='VT1'
ORDER BY column_id;

COLUMN_NAME          DATA_TYPE  DATA_DEFAULT  
-------------------- ---------- --------------
COL1                 NUMBER
COL2                 NUMBER
COL3                 NUMBER     "COL1"+"COL2"
