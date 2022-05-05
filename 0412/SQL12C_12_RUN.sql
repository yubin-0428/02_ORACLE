SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN 1..10 LOOP
        
        INSERT INTO T_SEQ_TEST(name)
        VALUES (DBMS_RANDOM.STRING('A',10));
    END LOOP;
    
    COMMIT;
END;
/

SELECT * FROM T_SEQ_TEST;

        NO NAME
---------- --------------------
         1 XpdBfUbGve
         2 WpacfUEZVj
         3 cHsSwhejPq
         4 lLMOZUrDBx
         5 JHgbkUbFrr
         6 TidfzTXHkv
         7 KMSHsvJSfg
         8 ROhBKNcUXn
         9 ZxRtVkfjVJ
        10 QCQTECDqtQ

10 행이 선택되었습니다.