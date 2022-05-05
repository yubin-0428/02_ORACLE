SELECT VARIANCE(sal),
       STDDEV(sal),
       AVG(NVL(sal,0))
FROM emp
;

VARIANCE(SAL) STDDEV(SAL) AVG(NVL(SAL,0))
------------- ----------- ---------------
   1398313.87  1182.50322      2073.21429