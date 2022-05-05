--ALTER SEQUENCE 시퀀스 이름                                                                                               
--[INCREMENT BY  n] --시퀀스 번호의 증가 값으로 기본은 1                                                                                             
--[START WITH n] --시퀀시 시작번호 기본값은 1                                                                                                
--[MAXVALUE n|NOMAXVALUE]  --생성 가능한 시퀀스 최대값(nomaxvalue 1027                                                                                                
--[MINVALUE n|NOMINVALUE] --시퀀스에서 생성할 번호의 최소값. nominvalue 오름차순이면 1, 내림차순이면 10-26                                                                                              
--[CYCLE|NOCYCLE] --시퀀스 번호를 순환 사용할 것인지 지정                                                                                              
--[CACHE n| NOCACHE] --시퀀스 생성 속도를 개선하기 위해 캐싱 여부 지정                                                                                               
--                                                                                                
--START WITH값은 변경할 수 없다.        
--OPTION에 사용할 수 없다.


--START WITH값은 변경할 수 없다.        
--OPTION에 사용할 수 없다.   
                                                                                   
--ALTER SEQUENCE seq_dept_sequence
--INCREMENT BY 3
--MAXVALUE 99
--MINVALUE 0
--CYCLE
--CACHE 2;
--
--SELECT *
--FROM user_sequences
--;

INSERT INTO dept_sequence VALUES (seq_dept_sequence.NEXTVAL,'DATABASE','SEOUL');
SELECT * FROM dept_sequence;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 DATABASE                     SEOUL
        20 DATABASE                     SEOUL
        30 DATABASE                     SEOUL
        40 DATABASE                     SEOUL
        50 DATABASE                     SEOUL
        60 DATABASE                     SEOUL
        70 DATABASE                     SEOUL
        80 DATABASE                     SEOUL
        90 DATABASE                     SEOUL
        93 DATABASE                     SEOUL
        96 DATABASE                     SEOUL
        99 DATABASE                     SEOUL
         0 DATABASE                     SEOUL
         3 DATABASE                     SEOUL

14 행이 선택되었습니다.