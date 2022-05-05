COL SUN FOR A4
COL MON FOR A4
COL TUE FOR A4
COL WED FOR A4
COL THU FOR A4
COL FRI FOR A4
COL SAT FOR A4
SELECT MAX(DECODE(day,'SUN',dayno)) AS  SUN,
       MAX(DECODE(day,'MON',dayno)) AS  MON,
       MAX(DECODE(day,'TUE',dayno)) AS  TUE,
       MAX(DECODE(day,'WED',dayno)) AS  WED,
       MAX(DECODE(day,'THU',dayno)) AS  THU,
       MAX(DECODE(day,'FRI',dayno)) AS  FRI,   
       MAX(DECODE(day,'SAT',dayno)) AS  SAT       
FROM cal
GROUP BY weekno
ORDER BY weekno
;