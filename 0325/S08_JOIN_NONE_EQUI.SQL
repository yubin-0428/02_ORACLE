--예 1) Custormer 테이블과 gift 테이블을 Join하여 고객별로 마일리지 포인트를 조회한 후 해당 마일리지 점수로                                                      
--받을 수 있는 상품을 조회하여 고객의 이름과 받을 수 있는 상품 명을 아래와 같이 출력하세요.                                                      


--ORACLE Join

col gust_name for a25
col point for a13
col gift_name for a25
--SELECT t1.gname as gust_name,
--       TO_CHAR(t1.point,'999,999,999') as point,
--       t2.gname as gift_name
--FROM customer t1,gift t2
--WHERE t1.point BETWEEN t2.g_start AND t2.g_end
--;

--ANSI Join
SELECT t1.gname as gust_name,
       TO_CHAR(t1.point,'999,999,999') as point,
       t2.gname as gift_name
FROM customer t1 JOIN gift t2
ON t1.point BETWEEN t2.g_start AND t2.g_end
;