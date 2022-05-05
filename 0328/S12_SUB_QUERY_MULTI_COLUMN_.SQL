--Student 테이블을 조회하여 각 학년별로 최대 몸무게를 가진 학생들의 학년과 
--이름과 몸무게를 출력하세요.
SELECT grade,
       name,
       weight
FROM student
WHERE (grade,weight) IN (SELECT grade,
                                MAX(weight)
                         FROM student
                         GROUP BY grade)
ORDER BY  grade                        
;

     GRADE NAME                 WEIGHT
---------- -------------------- ------
         1 Charlie Sheen            81
         2 Wesley Snipes            82
         3 Bill Murray              58
         4 Demi Moore               83