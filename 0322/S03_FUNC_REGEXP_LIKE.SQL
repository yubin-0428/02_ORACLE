--DESC t_reg;
--SELECT text
--FROM t_reg
--;
--
--TEXT      
------------
--ABC123
--ABC 123
--ABC  123
--abc 123
--abc  123
--a1b2c3
--aabbcc123
--?/!@#$*&
--\~*().,
--123123
--123abc
--abc
--

--REGEXP_LIKE(text,REGEXP)

--소문자가 들어 있는 행을 모두 출력
--a-z : 소문자
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-z]')
--;
--TEXT
----------------------
--abc 123
--abc  123
--a1b2c3
--aabbcc123
--123abc
--abc

--6 행이 선택되었습니다.


--소문자, 대문자가 들어 있는 행을 모두 출력
--a-z : 소문자
--A-Z : 대문자
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-zA-Z]')
;

--TEXT
----------------------
--ABC123
--ABC 123
--ABC  123
--abc 123
--abc  123
--a1b2c3
--aabbcc123
--123abc
--abc
--
--9 행이 선택되었습니다.

--소문자로 시작하고 공백을 포함하는 경우 찾기
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-z] ')
--;
--TEXT
----------------------
--abc 123
--abc  123

--연속적인 글자수 지정하기
--[A-Z]{2} : 대문자가 연속적으로 2글자 이상 오는 경우
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[A-Z]{2}')
--;

--TEXT
----------------------
--ABC123
--ABC 123
--ABC  123

--숫자가 연속적으로 3개
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[0-9]{3}')
--;
--TEXT
----------------------
--ABC123
--ABC 123
--ABC  123
--abc 123
--abc  123
--aabbcc123
--123123
--123abc

--8 행이 선택되었습니다.

--특정 위치를 지정하여 출력하기

--영문자로 시작하는 
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'^[a-zA-Z]')
--;
--TEXT
----------------------
--ABC123
--ABC 123
--ABC  123
--abc 123
--abc  123
--a1b2c3
--aabbcc123
--abc
--
--8 행이 선택되었습니다.

--영문자로 끝나는
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-zA-Z]$')
--;
--
--TEXT
----------------------
--123abc
--abc

--student테이블에서 이름 Ma|Mo 시작하는
col id for  a10
SELECT id
FROM student
WHERE REGEXP_LIKE(id,'^M(a|o)')
;

ID
----------
Martin
Moore









