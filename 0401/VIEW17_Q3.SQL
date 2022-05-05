
SELECT A.dname,A.max_height,B.name,b.height
FROM (
    SELECT t2.deptno,t2.dname, MAX(t1.height) max_height
    FROM student t1 INNER JOIN department t2
    ON t1.deptno1 = t2.deptno
    GROUP BY t2.deptno,t2.dname
)A JOIN student B
ON  a.deptno = b.deptno1
AND a.max_height = b.height
;


DNAME                               MAX_HEIGHT NAME                   HEIGHT
----------------------------------- ---------- ------------------ ----------
Software Engineering                       168 Sandra Bullock            168
Electronic Engineering                     177 Demi Moore                177
Mechanical Engineering                     182 Danny Glover              182
Computer Engineering                       182 Richard Dreyfus           182
Library and Information science            184 Daniel Day-Lewis          184
Multimedia Engineering                     179 Charlie Sheen             179

6 행이 선택되었습니다.