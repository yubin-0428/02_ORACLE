--TRIM([삭제옵션][삭제할 문자 선택] FROM [원본 문자열 데이터 필수]);
--LEADING: 왼쪽 문자 삭제
--TRAILING: 오른쪽 문자 삭제
--BOTH


SELECT '[' || TRIM(' __Oracle__ ') ||']'              AS TRIM,
       '[' || TRIM(LEADING  FROM ' __Oracle__ ') ||']' AS LEADING,
       '[' || TRIM(TRAILING FROM ' __Oracle__ ') ||']' AS TRAILING,
       '[' || TRIM(BOTH FROM     ' __Oracle__ ') ||']' AS BOTH       
FROM dual
;

TRIM           LEADING         TRAILING       BOTH         
-------------- --------------- -------------- -------------
[__Oracle__]   [__Oracle__ ]   [ __Oracle__]  [__Oracle__]
