1) 2건 이상의 데이터 반환을 요청하는 경우 - 에러                                      
SELECT t3.no,
       t3.name,
       (SELECT dname FROM t4 WHERE t3.deptno = t4.deptno) AS dname
FROM t3
;
3행에 오류:
ORA-01427: 단일 행 하위 질의에 2개 이상의 행이 리턴되었습니다.
    DEPTNO DNAME
---------- --------------------------------
       100 DDD      --> 400 DDD
       200 FFF
       300 GGG
       100 EEE

UPDATE t4
SET deptno = 400
WHERE dname = 'DDD'
;
COMMIT;

SELECT t3.no,
       t3.name,
       (SELECT dname FROM t4 WHERE t3.deptno = t4.deptno) as dname
FROM t3
;

        NO NAME                             DNAME
---------- -------------------------------- --------------------------------
         1 AAA                              EEE
         2 BBB                              FFF
         3 CCC