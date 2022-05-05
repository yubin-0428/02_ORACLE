ol name for a25
col weight for 999

SELECT t1.name,
       t1.weight
FROM student t1
WHERE t1.weight>(SELECT AVG( NVL(weight,0)) 
                 FROM student
                 WHERE deptno1 = 201);
                 
NAME               WEIGHT
------------------ ------
James Seo              72
Demi Moore             83
Danny Glover           70
Richard Dreyfus        72
Tim Robbins            70
Wesley Snipes          82
Christian Slater       69
Charlie Sheen          81

8 행이 선택되었습니다.                 