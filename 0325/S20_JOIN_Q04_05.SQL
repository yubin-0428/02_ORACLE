
SELECT t1.profno ,
       t1.name,
       TO_CHAR(t1.hiredate,'YYYY/MM/DD') AS hiredate,
       COUNT(t2.hiredate) AS "COUNT"
FROM professor t1,professor t2
WHERE t1.hiredate > t2.hiredate(+)
GROUP BY t1.profno,t1.name,t1.hiredate
ORDER BY t1.hiredate
;

    PROFNO NAME                                     HIREDATE                  COUNT
---------- ---------------------------------------- -------------------- ----------
      1001 Audie Murphy                             1980/06/23                    0
      3001 Emma Thompson                            1981/10/23                    1
      4001 Meryl Streep                             1981/10/23                    1
      2003 Whoopi Goldberg                          1982/04/29                    3
      4005 Meg Ryan                                 1985/09/18                    4
      2002 Michelle Pfeiffer                        1985/11/30                    5
      1002 Angela Bassett                           1987/01/30                    6
      3002 Julia Roberts                            1997/07/01                    7
      1003 Jessica Lange                            1998/03/22                    8
      4003 Nicole Kidman                            1999/12/01                    9
      4007 Jodie Foster                             2001/05/23                   10
      2001 Winona Ryder                             2001/09/01                   11
      3003 Sharon Stone                             2002/02/24                   12
      4004 Holly Hunter                             2009/01/28                   13
      4002 Susan Sarandon                           2009/08/30                   14
      4006 Andie Macdowell                          2010/06/28                   15

16 행이 선택되었습니다.