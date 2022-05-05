
col name for a20
col type for a15
col line for 999
col text for a50

SELECT name,
       type,
	   line,
	   text
FROM user_errors
WHERE name = 'PRO_ERR'
;

NAME      TYPE            LINE TEXT
--------- --------------- ---- --------------------------------------------------
PRO_ERR   PROCEDURE          6 PLS-00103: 심볼 "="를 만났습니다 다음 중 하나가 기
                               대될 때:
                                  := . ( @ % ;
                               심볼이 ":= 계속하기 위해 "=" 전에 삽입되었음