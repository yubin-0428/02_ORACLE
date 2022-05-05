--������ ������ �⺻ ����: ENAME�� JONES�� ����� ���� ���� ������ ���� �ʰڴ�.

col empno for  9999
col ename for  a20
col job for  a20
col mgr for  9999
col level for  9
col depth_ename for  a40
col ename_list for  a40
SELECT empno, 
       ename,
       job,
       mgr,
       level,
       LPAD(' ', (LEVEL-1)*2,' ')||ename  as  depth_ename,
       SYS_CONNECT_BY_PATH(ename,'-') AS ename_list
FROM emp 
--WHERE ENAME <> 'JONES'
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr           
           AND ENAME <> 'JONES'     
ORDER SIBLINGS BY ename     -- ���� level ����� ���� �÷� ����
;

