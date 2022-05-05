SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION func_date_kor(
   in_kor_date IN DATE
)
return VARCHAR2
IS
  v_kor_date VARCHAR2(30);
BEGIN
     SELECT TO_CHAR(in_kor_date,'YYYY"��" MM"��" DD"��"') INTO v_kor_date
     FROM dual;

    RETURN v_kor_date;
END;
/