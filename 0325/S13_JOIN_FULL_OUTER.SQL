--ORACLE JOIN : UNION

--지도교수가 할당 않되 학생 포함해서 출력
SELECT t1.name as stud_name,
       t2.name as prof_name 
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
UNION
SELECT t1.name as stud_name,
       t2.name as prof_name 
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
;

--ANSI FULL OUT JOIN
SELECT t1.name as stud_name,
       t2.name as prof_name 
FROM student t1 FULL OUTER JOIN professor t2
ON t1.profno = t2.profno
;

STUD_NAME                        PROF_NAME
-------------------------------- --------------------------------
James Seo                        Audie Murphy
Rene Russo                       Winona Ryder
Sandra Bullock                   Julia Roberts
Demi Moore                       Meryl Streep
Danny Glover                     Nicole Kidman
Billy Crystal                    Angela Bassett
Nicholas Cage                    Michelle Pfeiffer
Micheal Keaton                   Nicole Kidman
Bill Murray                      Jodie Foster
Macaulay Culkin                  Meryl Streep
Richard Dreyfus                  Angela Bassett
Tim Robbins                      Winona Ryder
Wesley Snipes                    Susan Sarandon
Steve Martin                     Nicole Kidman
Daniel Day-Lewis                 Jodie Foster
Danny Devito
Sean Connery
Christian Slater
Charlie Sheen
Anthony Hopkins
                                 Holly Hunter
                                 Andie Macdowell
                                 Sharon Stone
                                 Whoopi Goldberg
                                 Meg Ryan
                                 Emma Thompson
                                 Jessica Lange

27 행이 선택되었습니다.