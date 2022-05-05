--INSTR()함수
--문자열 데이터 안에 특정 문자나 문자열이 어디에 포함되어 있는지를 알고자 할때 사용.
--INSTR('문자열' 또는 컬럼, 찾는 글자, 시작위치(기본 값은 1), 몇번째 인지(기본 값은 1));
SELECT INSTR('HELLO, ORACLE','L'),
       INSTR('HELLO, ORACLE','L',5),
	   INSTR('HELLO, ORACLE','L',2,2)
FROM dual
;

INSTR('HELLO,ORACLE','L') INSTR('HELLO,ORACLE','L',5) INSTR('HELLO,ORACLE','L',2,2)
------------------------- --------------------------- -----------------------------
                        3                          12                             4