--유형 3 예제: Professor 테이블에서 교수의 이름과 학과 명을 출력하되 학과 번호가 101 번 이면 ‘Computer Engineering’                                                                                                      
--, 102 번이면 ‘Multimedia Engineering'                                                                                                        
--, 103 번이면 ‘Software Engineering ‘ 나머지는 ‘ETC’ 로 출력하세요.                                                                                                       

SELECT deptno,
       name,
       DECODE(deptno,101,'Computer Engineering'
                    ,102,'Multimedia Engineering'
                    ,103,'Software Engineering'                 
                        ,'ETC') AS DNAME
FROM professor
;

--    DEPTNO NAME                                     DNAME
------------ ---------------------------------------- --------------------------------------------
--       101 Audie Murphy                             Computer Engineering
--       101 Angela Bassett                           Computer Engineering
--       101 Jessica Lange                            Computer Engineering
--       102 Winona Ryder                             Multimedia Engineering
--       102 Michelle Pfeiffer                        Multimedia Engineering
--       102 Whoopi Goldberg                          Multimedia Engineering
--       103 Emma Thompson                            Software Engineering
--       103 Julia Roberts                            Software Engineering
--       103 Sharon Stone                             Software Engineering
--       201 Meryl Streep                             ETC
--       201 Susan Sarandon                           ETC
--       202 Nicole Kidman                            ETC
--       202 Holly Hunter                             ETC
--       203 Meg Ryan                                 ETC
--       301 Andie Macdowell                          ETC
--       301 Jodie Foster                             ETC