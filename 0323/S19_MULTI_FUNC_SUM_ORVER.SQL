--P_DATE	VARCHAR2(8 BYTE)	No
--P_CODE	NUMBER	No
--P_QTY	NUMBER	Yes
--P_TOTAL	NUMBER	Yes
--P_STORE	VARCHAR2(5 BYTE)	Yes

--예 1)  panmae 테이블을 사용하여 1000 번 대리점의 판매 내역을 출력하되 판매일자, 제품코드, 판매량, 
--누적 판매금액을 아래와 같이 출력하세요.
SELECT p_date,
       p_code,
       p_qty,
       p_total,
       SUM(p_total) OVER(ORDER BY p_total) "TOTAL"
FROM panmae
WHERE P_STORE = 1000
;
--P_DATE               P_CODE      P_QTY    P_TOTAL    누계
------------------ ---------- ---------- ------------------
--20110103                100          2       1600    1600   
--20110102                102          2       2000    3600
--20110101                100          3       2400    6000
--20110102                105          2       3000    9000