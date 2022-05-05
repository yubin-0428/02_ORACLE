SELECT deptno,
       name,
	   DECODE(deptno,101,'Computer Engineering','ETC') AS DNAME
FROM professor
;

    DEPTNO NAME               DNAME                  
---------- ------------------ -----------------------
       101 Audie Murphy       Computer Engineering
       101 Angela Bassett     Computer Engineering
       101 Jessica Lange      Computer Engineering
       102 Winona Ryder       ETC
       102 Michelle Pfeiffer  ETC
       102 Whoopi Goldberg    ETC
       103 Emma Thompson      ETC
       103 Julia Roberts      ETC
       103 Sharon Stone       ETC
       201 Meryl Streep       ETC
       201 Susan Sarandon     ETC
       202 Nicole Kidman      ETC
       202 Holly Hunter       ETC
       203 Meg Ryan           ETC
       301 Andie Macdowell    ETC
       301 Jodie Foster       ETC

16 행이 선택되었습니다.