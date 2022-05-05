SELECT t1.name,
       (SELECT dname
        FROM dept2 t2
        WHERE t1.deptno = t2.dcode) "DNAME"
FROM emp2 t1
;


--SELECT t1.name,
--       T2.dname "DNAME"
--FROM emp2 t1,dept2 t2
--WHERE t1.deptno = t2.dcode
--;
NAME                             DNAME
-------------------------------- --------------------------------
Kurt Russell                     President
AL Pacino                        Management Support Team
Woody Harrelson                  Management Support Team
Tommy Lee Jones                  Financial Management Team
Gene Hackman                     General affairs
Kevin Bacon                      Engineering division
Hugh Grant                       H/W Support Team
Harrison Ford                    H/W Support Team
Clint Eastwood                   S/W Support Team
Keanu Reeves                     S/W Support Team
Val Kilmer                       Business Department
Chris O'Donnell                  Business Planning Team
Jack Nicholson                   Sales1 Team
JohnTravolta                     Sales1 Team
Denzel Washington                Sales2 Team
Robert De Niro                   Sales2 Team
Sly Stallone                     Sales3 Team
Richard Gere                     Sales3 Team
Tom Cruise                       Sales4 Team
Kevin Costner                    Sales4 Team

20 행이 선택되었습니다.