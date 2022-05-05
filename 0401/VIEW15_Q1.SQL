
CREATE OR REPLACE VIEW v_prof_dept2
AS (
    SELECT t1.profno,
           t1.name,
           t2.dname
    FROM professor t1 JOIN department t2
    ON t1.deptno = t2.deptno
)
WITH READ ONLY 
;

COL  dname FOR a35
COL  NAME   FOR a32
COL  PROFNO FOR 9999

SELECT *
FROM v_prof_dept2;

PROFNO NAME                             DNAME
------ -------------------------------- -----------------------------------
  1001 Audie Murphy                     Computer Engineering
  1002 Angela Bassett                   Computer Engineering
  1003 Jessica Lange                    Computer Engineering
  2001 Winona Ryder                     Multimedia Engineering
  2002 Michelle Pfeiffer                Multimedia Engineering
  2003 Whoopi Goldberg                  Multimedia Engineering
  3001 Emma Thompson                    Software Engineering
  3002 Julia Roberts                    Software Engineering
  3003 Sharon Stone                     Software Engineering
  4001 Meryl Streep                     Electronic Engineering
  4002 Susan Sarandon                   Electronic Engineering
  4003 Nicole Kidman                    Mechanical Engineering
  4004 Holly Hunter                     Mechanical Engineering
  4005 Meg Ryan                         Chemical Engineering
  4006 Andie Macdowell                  Library and Information science
  4007 Jodie Foster                     Library and Information science

16 행이 선택되었습니다.