--if(deptno == 101){
--  if( name == 'Audie Murphy'){
--    'BEST!'
--  }else{
--     'GOOD!'
--  }   
--}


SELECT deptno,
       name,
       DECODE(deptno,101,DECODE(name,'Audie Murphy','BEST!','GOOD!')) "NESTED_DECODE"
FROM professor
;

    DEPTNO NAME                NESTED_DEC
---------- ------------------- ----------
       101 Audie Murphy        BEST!
       101 Angela Bassett      GOOD!
       101 Jessica Lange       GOOD!
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