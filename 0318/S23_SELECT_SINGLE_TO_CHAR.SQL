--TO_CHAR(날짜데이터, '출력되길 원하는 문자형태')
--
--년도  YYYY 연도 4자리
--     RRRR 2000년 이후 Y2K 버그로 인해 등장한 날짜 표기법 연도 4자리 표기법
--
--월    MM   월 숫자 2자리
--     MON   유닉스용 오라클에서 월
--
--일    DD일을 숫자 2자리
--     DAY요일에 해당하는 명칭 표기
--
--시간   HH24하루를 24시간으로 표기
--     HH하루를 12시간으로 표기
--MI   분
--SS   초
--대소문자 구분은 없음!

SELECT SYSDATE,
       TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') AS TO_CHAR_FORMAT,
	   TO_CHAR(SYSDATE,'MONTH') AS "MONTH",
	   TO_CHAR(SYSDATE,'DDD') AS "DDD"
FROM dual
;
SYSDATE             TO_CHAR_FORMAT                         MONTH            DDD
------------------- -------------------------------------- ---------------- ------
2022-03-18:15:29:59 2022-03-18 15:29:59                    3월              077





