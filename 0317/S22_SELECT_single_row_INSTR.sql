--student���̺��� tel�÷��� ����Ͽ� 1����(deptno1)�� 201���� �л��� �̸��� ��ȭ��ȣ, ')'
--�� ������ ��ġ�� ����ϼ���.

SELECT name,
       tel,
	   INSTR(tel,')')
FROM student
WHERE deptno1 = 201
;

