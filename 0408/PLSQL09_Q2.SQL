SET SERVEROUTPUT ON;
DECLARE
	 --연관배열 정의
	 TYPE ITAB_EMP IS TABLE OF EMP%ROWTYPE
	 INDEX BY PLS_INTEGER;
	 
	 --연관배열 선언
	 emp_arr ITAB_EMP;
	 idx PLS_INTEGER := 0;
BEGIN
	FOR i IN (SELECT * FROM emp) LOOP
		idx := idx + 1;
	    emp_arr(idx).empno      := i.empno       ;
        emp_arr(idx).ename	    := i.ename	     ;		
        emp_arr(idx).job		:= i.job		 ;		
        emp_arr(idx).mgr		:= i.mgr		 ;		
        emp_arr(idx).hiredate	:= i.hiredate	 ;	
        emp_arr(idx).sal		:= i.sal		 ;		
        emp_arr(idx).comm		:= i.comm		 ;	
        emp_arr(idx).deptno	    := i.deptno	     ;		
		
		DBMS_OUTPUT.PUT_LINE( emp_arr(idx).empno    ||' : '||
		                      emp_arr(idx).ename	||' : '||
		                      emp_arr(idx).job		||' : '||
		                      emp_arr(idx).mgr		||' : '||
		                      emp_arr(idx).hiredate	||' : '||
		                      emp_arr(idx).sal		||' : '||
		                      emp_arr(idx).comm		||' : '||
		                      emp_arr(idx).deptno	);
    END LOOP;

END;
/

7369 : SMITH : CLERK : 7902 : 80/12/17 : 800 :  : 20
7499 : ALLEN : SALESMAN : 7698 : 81/02/20 : 1600 : 300 : 30
7521 : WARD : SALESMAN : 7698 : 81/02/22 : 1250 : 500 : 30
7566 : JONES : MANAGER : 7839 : 81/04/02 : 2975 :  : 20
7654 : MARTIN : SALESMAN : 7698 : 81/09/28 : 1250 : 1400 : 30
7698 : BLAKE : MANAGER : 7839 : 81/05/01 : 2850 :  : 30
7782 : CLARK : MANAGER : 7839 : 81/06/09 : 2450 :  : 10
7788 : SCOTT : ANALYST : 7566 : 87/01/18 : 3000 :  : 20
7839 : KING : PRESIDENT :  : 81/11/17 : 5000 :  : 10
7844 : TURNER : SALESMAN : 7698 : 81/09/08 : 1500 : 0 : 30
7876 : ADAMS : CLERK : 7788 : 87/02/21 : 1100 :  : 20
7900 : JAMES : CLERK : 7698 : 81/12/03 : 950 :  : 30
7902 : FORD : ANALYST : 7566 : 81/12/03 : 3000 :  : 20
7934 : MILLER : CLERK : 7782 : 82/01/23 : 1300 :  : 10