--emp 테이블을 조회하여 empno , ename , sal , LEVEL(급여등급)을 아래와 같이 출력하세요.                                                                                   
--단 급여등급은 sal 을 기준으로 1 - 1000 이면 Level 1                                                                                   
--, 1001 - 2000 이면 Level 2                                                                                     
--, 2001 - 3000 이면 Level 3                                                                                     
--, 3001 - 4000 이면 Level 4                                                                                     
--, 4001 보다 많으면 Level 5 로 출력하세요.                                                                                 

SELECT empno , 
       ename , 
       sal,
       CASE WHEN sal BETWEEN 1    AND 1000 THEN 'Level 1'
            WHEN sal BETWEEN 1001 AND 2000 THEN 'Level 2' 
            WHEN sal BETWEEN 2001 AND 3000 THEN 'Level 3' 
            WHEN sal BETWEEN 3001 AND 4000 THEN 'Level 4'
            WHEN sal >= 4001               THEN 'Level 5'             
       END AS "LEVEL"     
FROM emp
--4 출력컬럼 순서
ORDER BY 4 DESC
;       

     EMPNO ENAME                   SAL LEVEL
---------- -------------------- ------ --------------
      7839 KING                   5000 Level 5
      7782 CLARK                  2450 Level 3
      7902 FORD                   3000 Level 3
      7788 SCOTT                  3000 Level 3
      7698 BLAKE                  2850 Level 3
      7566 JONES                  2975 Level 3
      7934 MILLER                 1300 Level 2
      7876 ADAMS                  1100 Level 2
      7654 MARTIN                 1250 Level 2
      7844 TURNER                 1500 Level 2
      7521 WARD                   1250 Level 2
      7499 ALLEN                  1600 Level 2
      7900 JAMES                   950 Level 1
      7369 SMITH                   800 Level 1

14 행이 선택되었습니다.