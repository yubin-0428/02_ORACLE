--student���̺��� tel�÷��� ����Ͽ� 1����(deptno1)�� 201���� �л��� �̸��� ������ȣ
--�� ����ϼ���.
col name for a18
col tel for a18
col area_code for a18
SELECT name,
       tel,
       INSTR(tel,')'),
       SUBSTR(tel,1,INSTR(tel,')')-1) AS area_code
FROM student
WHERE deptno1 = 201
;