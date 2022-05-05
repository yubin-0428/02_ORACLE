--TRIM([삭제옵션][삭제할 문자 선택] FROM [원본 문자열 데이터 필수]);
--LEADING: 왼쪽 문자 삭제
--TRAILING: 오른쪽 문자 삭제
--BOTH


SELECT '[' || TRIM('_ _Oracle_ _') ||']'                   AS TRIM,
       '[' || TRIM(LEADING  '_' FROM '_ _Oracle_ _') ||']' AS LEADING,
       '[' || TRIM(TRAILING '_' FROM '_ _Oracle_ _') ||']' AS TRAILING,
       '[' || TRIM(BOTH     '_' FROM '_ _Oracle_ _') ||']' AS BOTH       
FROM dual
;

TRIM             LEADING        TRAILING       BOTH        
---------------- -------------- -------------- -------------
[_ _Oracle_ _]   [ _Oracle_ _]  [_ _Oracle_ ]  [ _Oracle_ ]
