
SELECT name,
       grade,
       weight
FROM student
WHERE weight <ALL (SELECT weight
                   FROM student
                   WHERE grade = 2)
;

NAME                      GRADE WEIGHT
-------------------- ---------- ------
Billy Crystal                 3     48
Danny Devito                  1     48
Nicholas Cage                 3     42