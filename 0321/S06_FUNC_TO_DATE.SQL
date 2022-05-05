--문자 데이터를 날짜 데이터로 변환하는 TO_DATE함수                                             
--                                                
--    형식)                                            
--        TO_DATE('문자')                                       
--        TO_DATE('문자','날짜형태')                                       
--날짜 FORMAT
--1회성
ALTER SESSION SET NLS_DATE_FORMAT ='RRRR/MM/DD';

SELECT SYSDATE,
       TO_DATE('2022/03/21'),
       TO_DATE('2022-03-21','YYYY-MM-DD') AS TO_DATE01,
       TO_DATE('20220321','YYYYMMDD')     AS TO_DATE02
FROM dual
;

SYSDATE    TO_DATE('2 TO_DATE01  TO_DATE02
---------- ---------- ---------- ----------
2022/03/21 2022/03/21 2022/03/21 2022/03/21