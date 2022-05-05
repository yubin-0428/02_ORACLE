
SELECT EXIST_COMM,COUNT(*)
FROM (
    SELECT CASE WHEN comm IS NOT NULL THEN 'O'
                ELSE 'X'
           END AS EXIST_COMM
    FROM emp
)
GROUP BY EXIST_COMM
;

EX   COUNT(*)
-- ----------
O           4
X          10