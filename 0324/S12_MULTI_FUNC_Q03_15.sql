COL "RATIO_%" FOR 999.99
SELECT deptno as num,
       name,
       pay,
       SUM(pay) OVER(PARTITION BY deptno  ) AS total_pay,
       ROUND(RATIO_TO_REPORT(pay) OVER(PARTITION BY deptno)*100,2) AS "RATIO_%"
FROM professor
ORDER BY num, name                                                                                                           					
;

--SELECT문 수행 순서
5  SELECT
1  FROM
2  WHERE
3  GROUP BY
4  HAVING
6  ORDER BY

