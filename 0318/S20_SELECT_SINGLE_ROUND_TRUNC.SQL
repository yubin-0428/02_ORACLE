--2018-07-13 23:56:28

SELECT STD_DATE,
       ROUND(STD_DATE,'CC')   AS ROUND_CC,   --연도끝 2자리 2018이면 2050아하 이므로 2001년
	   ROUND(STD_DATE,'YYYY') AS ROUND_YYYY, --2018-07-01기준으로 반올림
	   ROUND(STD_DATE,'Q')    AS ROUND_Q,    --각 분기의 2번째 달 16일기준	   
	   ROUND(STD_DATE,'DDD')  AS ROUND_DDD,  --해당일 정오(12:00)
	   ROUND(STD_DATE,'HH')   AS ROUND_HH    --시간을 기준으로 반올림
FROM(
	SELECT TO_DATE('2018-07-13 23:56:28','YYYY-MM-DD HH24:MI:SS') STD_DATE	
	FROM dual
)
;

STD_DATE            ROUND_CC            ROUND_YYYY          ROUND_Q             ROUND_DDD                   ROUND_HH
------------------- ------------------- ------------------- ------------------- ------------------- -------------------
2018-07-13:23:56:28 2001-01-01:00:00:00 2019-01-01:00:00:00 2018-07-01:00:00:00 2018-07-14:00:00:00 2018-07-14:00:00:00