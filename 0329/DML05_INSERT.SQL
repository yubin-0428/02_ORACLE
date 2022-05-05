부서번호:70            
부서명: 'WEB'         
지역:NULL           
NULL로 명기하는 것이 명확함!
INSERT INTO dept_temp VALUES (70,'WEB',NULL); 

SELECT * FROM dept_temp;

부서번호:80            
부서명: 'MOBILE'         
지역:''   --문자열 날짜에 NULL입력   

INSERT INTO dept_temp (deptno,loc,dname) VALUES (80,'','MOBILE' );


SELECT * FROM dept_temp;

부서번호:90            
부서명: NULL      
지역:'INCHEON'

INSERT INTO dept_temp (deptno,loc) VALUES (90,'INCHEON');
SELECT * FROM dept_temp;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON
        50 DATABASE                     SEOUL
        60 NEWWORK                      BUSAN
        70 WEB
        80 MOBILE
        90                              INCHEON