--emp ����鿡 �̸�, ����, ����,����
--���� : ���� * 12 + ����
SELECT ename,sal*12+comm,sal,comm
FROM emp
;

--"SAL*12+COMM" �����Ͱ� ���� ������ comm NULL�������� 
--NULL : ���� �˼� ����
ENAME                SAL*12+COMM        SAL       COMM
-------------------- ----------- ---------- ----------
SMITH                                   800
ALLEN                      19500       1600        300
WARD                       15500       1250        500
JONES                                  2975
MARTIN                     16400       1250       1400
BLAKE                                  2850
CLARK                                  2450
SCOTT                                  3000
KING                                   5000
TURNER                     18000       1500          0
ADAMS                                  1100
JAMES                                   950
FORD                                   3000
MILLER                                 1300

14 ���� ���õǾ����ϴ�.
