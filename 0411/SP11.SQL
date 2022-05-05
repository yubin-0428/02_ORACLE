
col name for a20
col type for a20
col text for a50

SELECT name,
       type,
       text
FROM user_source
WHERE name = 'PRO_NOPARAM'
;

NAME                 TYPE                 TEXT
-------------------- -------------------- --------------------------------------------------
PRO_NOPARAM          PROCEDURE            PROCEDURE PRO_NOPARAM
PRO_NOPARAM          PROCEDURE            IS
PRO_NOPARAM          PROCEDURE                  V_EMPNO NUMBER(4) := 7788;
PRO_NOPARAM          PROCEDURE                  V_ENAME VARCHAR2(10);
PRO_NOPARAM          PROCEDURE
PRO_NOPARAM          PROCEDURE            BEGIN
PRO_NOPARAM          PROCEDURE                  V_ENAME :='SCOTT';
PRO_NOPARAM          PROCEDURE                  DBMS_OUTPUT.PUT_LINE('V_EMPNO : '|| V_EMPNO);
PRO_NOPARAM          PROCEDURE                  DBMS_OUTPUT.PUT_LINE('V_ENAME : '|| V_ENAME);
PRO_NOPARAM          PROCEDURE            END;

10 행이 선택되었습니다.