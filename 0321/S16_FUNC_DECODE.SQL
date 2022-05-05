--유형 6 예제:                                                                                                        
--professor 테이블에서 교수의 이름과 부서번호를 출력하고 101 번 부서 중에서 이름이 "Audie Murphy" 교수에게 비고란에                                                                                                        
--BEST! 이라고 출력하고 101번 학과의 "Audie Murphy" 교수 외에는 비고란에 "GOOD!"을 출력하고                                                                                                        
--101번 교수가 아닐 경우는 비고란에 "N/A" 을 출력하세요.                                                                                                       

SELECT deptno,
       name,
       DECODE(deptno,101,DECODE(name,'Audie Murphy','BEST!','GOOD!'),'N/A') "NESTED_DECODE"
FROM professor
;
    DEPTNO NAME                                     NESTED_DEC
---------- ---------------------------------------- ----------
       101 Audie Murphy                             BEST!
       101 Angela Bassett                           GOOD!
       101 Jessica Lange                            GOOD!
       102 Winona Ryder                             N/A
       102 Michelle Pfeiffer                        N/A
       102 Whoopi Goldberg                          N/A
       103 Emma Thompson                            N/A
       103 Julia Roberts                            N/A
       103 Sharon Stone                             N/A
       201 Meryl Streep                             N/A
       201 Susan Sarandon                           N/A
       202 Nicole Kidman                            N/A
       202 Holly Hunter                             N/A
       203 Meg Ryan                                 N/A
       301 Andie Macdowell                          N/A
       301 Jodie Foster                             N/A

16 행이 선택되었습니다.