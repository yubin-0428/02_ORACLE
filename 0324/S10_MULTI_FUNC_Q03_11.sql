--11) loan ���̺��� ����Ͽ� 1000�� ������ ���� ������ ����ϵ� ��������, ���������ڵ�, ����Ǽ�,                                           
--�����Ѿ�, ��������ݾ��� �Ʒ��� ���� ����ϼ���.                                            

SELECT l_date  AS "��������",
       l_code  AS "���������ڵ�",
       l_qty   AS "����Ǽ�",
       l_total AS "�����Ѿ�",
       SUM(l_total) OVER(ORDER BY l_date) "��������ݾ�"
FROM loan
WHERE l_store = 1000
;