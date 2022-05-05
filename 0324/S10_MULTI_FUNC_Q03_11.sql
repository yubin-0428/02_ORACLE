--11) loan 테이블을 사용하여 1000번 지점의 대출 내역을 출력하되 대출일자, 대출종목코드, 대출건수,                                           
--대출총액, 누적대출금액을 아래와 같이 출력하세요.                                            

SELECT l_date  AS "대출일자",
       l_code  AS "대출종목코드",
       l_qty   AS "대출건수",
       l_total AS "대출총액",
       SUM(l_total) OVER(ORDER BY l_date) "누적대출금액"
FROM loan
WHERE l_store = 1000
;