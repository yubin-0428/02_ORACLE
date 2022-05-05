--SCORE
--    STUDNO      TOTAL
------------ ----------
--      9411         97
--      9412         78
--      9413         83
--      9414         62
--      9415         88
--      9511         92
--      9512         87
--      9513         81
--      9514         79
--      9515         95
--      9611         89
--      9612         77
--      9613         86
--      9614         82
--      9615         87
--      9711         91
--      9712         88
--      9713         82
--      9714         83
--      9715         84
      
--11:37:13 SCOTT>SELECT * FROM hakjum;
--
--GRADE   MIN_POINT  MAX_POINT
-------- ---------- ----------
--A+             96        100
--A0             90         95
--B+             86         89
--B0             80         85
--C+             76         79
--C0             70         75
--D               0         69      

--ORACLE JOIN

--SELECT t1.name   as stud_name,
--       t2.total  as score,
--       t3.grade  as credit  
--FROM student t1,score t2, hakjum t3
--WHERE t1.studno = t2.studno
--AND t2.total >= min_point 
--AND t2.total <= max_point
--;


--ansi join
SELECT t1.name   as stud_name,
       t2.total  as score,
       t3.grade  as credit  
FROM student t1 JOIN score t2   
ON t1.studno = t2.studno
JOIN hakjum t3
ON t2.total >= min_point 
AND t2.total <= max_point
;



STUD_NAME                             SCORE CREDIT
-------------------------------- ---------- ------
James Seo                                97 A+
Macaulay Culkin                          95 A0
Billy Crystal                            92 A0
Danny Devito                             91 A0
Richard Dreyfus                          89 B+
Sean Connery                             88 B+
Danny Glover                             88 B+
Nicholas Cage                            87 B+
Daniel Day-Lewis                         87 B+
Wesley Snipes                            86 B+
Anthony Hopkins                          84 B0
Sandra Bullock                           83 B0
Charlie Sheen                            83 B0
Steve Martin                             82 B0
Christian Slater                         82 B0
Micheal Keaton                           81 B0
Bill Murray                              79 C+
Rene Russo                               78 C+
Tim Robbins                              77 C+
Demi Moore                               62 D

20 행이 선택되었습니다.