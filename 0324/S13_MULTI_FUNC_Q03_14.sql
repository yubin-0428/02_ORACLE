COL "RATIO_%" FOR 999.99
SELECT deptno as num,
       name,
       pay,
       SUM(pay) OVER(  ) AS total_pay,
       ROUND(RATIO_TO_REPORT(pay) OVER()*100,2) AS "RATIO_%"
FROM professor
ORDER BY "RATIO_%" DESC                                                                                                      					
;