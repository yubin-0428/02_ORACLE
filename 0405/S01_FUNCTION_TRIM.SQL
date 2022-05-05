SELECT '[' || TRIM(' __ORACLE__ ') ||']'               AS TRIM,
       '[' || TRIM(LEADING FROM ' __ORACLE__ ') ||']'  AS LEADING_TRIM,
	   '[' || TRIM(TRAILING FROM ' __ORACLE__ ') ||']' AS TRAILING_TRIM,
	   '[' || TRIM(BOTH FROM ' __ORACLE__ ') ||']'     AS BOTH_TRIM
FROM dual
;

--            왼족에서 제거        오른쪽에서 제거            양쪽
TRIM          LEADING_TRIM    TRAILING_TRIM  BOTH_TRIM    
------------- --------------- -------------- -------------
[__ORACLE__]  [__ORACLE__ ]   [ __ORACLE__]  [__ORACLE__]

- TRIM( [제거할 문자] FROM 문자열 ) 함수는 특정한 문자를 제거한다, 제거할 문자를 입력하지 않으면 공백이 제거된다.
- TRIM은 char 을 작성하기 앞서 설정을 해줄수가 있다
- 설정 종류는 LEADING(왼족에서 제거) , TRAILING(오른쪽에서 제거) , BOTH(양쪽에서제거) 
- 설정을 특별히 해주지 않는다면 BOTH로 자동 설정된다.
- TRIM은 char 부분에 오직 한개만을 작성할수 있습니다.
