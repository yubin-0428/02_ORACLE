--유형 4 예제 : professor 테이블에서 교수의 이름과 부서번호를 출력하고 101 번 부서 중에서 이름이 "Audie Murphy"                                                                                                               
--교수에게 "BEST!" 라고 출력하고 101번 부서 중에서 이름이 "Audie Murphy" 교수가 아닌 나머지에는 NULL 값을 출력하세요.                                                                                                               
--만약 101 번 외 다른 학과에 "Audie Murphy" 교수가 있어도 "BEST!" 가 출력되면 안됩니다.                                                                                                             

--if(deptno == 101){
--  if( name == 'Audie Murphy'){
--    'BEST!'
--  }else{
--     null
--  }   
--}


SELECT deptno,
       name,
       DECODE(deptno,101,DECODE(name,'Audie Murphy','BEST!',NULL)) "NESTED_DECODE"
FROM professor
;
    DEPTNO NAME                NESTED_DEC
---------- ------------------- ----------
       101 Audie Murphy        BEST!
       101 Angela Bassett
       101 Jessica Lange
       102 Winona Ryder
       102 Michelle Pfeiffer
       102 Whoopi Goldberg
       103 Emma Thompson
       103 Julia Roberts
       103 Sharon Stone
       201 Meryl Streep
       201 Susan Sarandon
       202 Nicole Kidman
       202 Holly Hunter
       203 Meg Ryan
       301 Andie Macdowell
       301 Jodie Foster

16 행이 선택되었습니다.