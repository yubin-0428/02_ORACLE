SELECT l_date  AS "��������",
       l_code  AS "���������ڵ�",
       l_qty   AS "����Ǽ�",
       l_total AS "�����Ѿ�",
       SUM(l_total) OVER(PARTITION BY l_code ORDER BY l_total) "��������ݾ�"
FROM loan
WHERE l_store = 1000
;