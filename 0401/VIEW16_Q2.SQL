
SELECT b.dname,
       a.max_height,
       a.max_weight
FROM (
    SELECT t1.deptno1,
           MAX(t1.height) AS max_height,
           MAX(t1.weight) AS max_weight
    FROM student t1
    GROUP BY deptno1
)a JOIN department b
ON a.deptno1 = b.deptno
;


DNAME                               MAX_HEIGHT MAX_WEIGHT
----------------------------------- ---------- ----------
Computer Engineering                       182         72
Multimedia Engineering                     179         81
Software Engineering                       168         52
Electronic Engineering                     177         83
Mechanical Engineering                     182         70
Library and Information science            184         62

6 행이 선택되었습니다.