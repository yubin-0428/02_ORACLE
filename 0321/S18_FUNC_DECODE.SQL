col name for a20
col tel for a13
col instr for 9
col "area" for a5

SELECT name,
       tel,
       INSTR(tel,')') as instr,
       SUBSTR(tel,1,INSTR(tel,')')-1) as "area",
       DECODE(SUBSTR(tel,1,INSTR(tel,')')-1) ,'02' ,'SEOUL'
                                             ,'031','GYEONGGI'
                                             ,'051','BUSAN'
                                             ,'052','ULSAN'
                                             ,'055','GYEONGNAM'
       ) AS LOC
FROM student
WHERE deptno1 = 101
;