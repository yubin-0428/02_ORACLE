INSERT INTO emp_temp (
    empno               
    ,ename              
    ,job                
    ,mgr                
    ,hiredate               
    ,sal                
    ,comm               
    ,deptno             
)VALUES(
    9999
    ,'ȫ�浿'
    ,'PRESIDENT'
    ,NULL
    ,'2001/01/01'
    ,5000
    ,1000
    ,10
);

SELECT *
FROM emp_temp;

INSERT INTO emp_temp (
    empno               
    ,ename              
    ,job                
    ,mgr                
    ,hiredate               
    ,sal                
    ,comm               
    ,deptno             
)VALUES(
    2111
    ,'ȫ02'
    ,'PRESIDENT'
    ,NULL
    ,'01/01/2001'
    ,5000
    ,1000
    ,10
);
15�࿡ ����:
ORA-01830: ��¥ ������ ������ ���ʿ��� �����Ͱ� ���ԵǾ� �ֽ��ϴ�

INSERT INTO emp_temp (
    empno               
    ,ename              
    ,job                
    ,mgr                
    ,hiredate               
    ,sal                
    ,comm               
    ,deptno             
)VALUES(
    1111
    ,'ȫ03'
    ,'PRESIDENT'
    ,NULL
    ,'2001-01-01'
    ,5000
    ,1000
    ,10
);

SELECT *
FROM emp_temp;

TO_DATE() �Է� ����
INSERT INTO emp_temp (
    empno               
    ,ename              
    ,job                
    ,mgr                
    ,hiredate               
    ,sal                
    ,comm               
    ,deptno             
)VALUES(
    2112
    ,'ȫ05'
    ,'PRESIDENT'
    ,NULL
    ,TO_DATE('01/01/2001','DD/MM/YYYY')
    ,5000
    ,1000
    ,10
);

SELECT *
FROM emp_temp;

SYSDATE�̿� �Է� 
INSERT INTO emp_temp (
    empno               
    ,ename              
    ,job                
    ,mgr                
    ,hiredate               
    ,sal                
    ,comm               
    ,deptno             
)VALUES(
    2113
    ,'ȫ06'
    ,'PRESIDENT'
    ,NULL
    ,SYSDATE
    ,5000
    ,1000
    ,10
);

SELECT *
FROM emp_temp;

     EMPNO ENAME                JOB                       MGR HIREDATE        SAL       COMM     DEPTNO
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------
      9999 ȫ�浿               PRESIDENT                     01/01/01       5000       1000         10
      1111 ȫ03                 PRESIDENT                     01/01/01       5000       1000         10
      2112 ȫ05                 PRESIDENT                     01/01/01       5000       1000         10
      2113 ȫ06                 PRESIDENT                     22/03/29       5000       1000         10

��   ��: 00:00:00.01