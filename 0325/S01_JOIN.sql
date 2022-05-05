--SELECT NO, NAME FROM cat_a
--UNION ALL
--SELECT * FROM cat_b
--UNION ALL
--SELECT * FROM cat_c;

--  NO NA
------ --
--   1 A
--   2 B
--   1 C
--   2 D
--   1 E
--   2 F

--1. �������� ����
--col cat_a.name for a7
--col cat_b.name for a7
--SELECT cat_a.name, 
--       cat_b.name,
--       no
--FROM cat_a, cat_b
--WHERE cat_a.no = cat_b.no
--;
--3�࿡ ����:
--ORA-00918: ���� ���ǰ� �ָ��մϴ�

--2. 2���� ���̺�� īƼ�� �� ����
--SELECT a.name, 
--       b.name,
--       a.no
--FROM cat_a a, cat_b b
----WHERE a.no = b.no
--;
--NA NA         NO
---- -- ----------
--A  C           1
--A  D           1
--B  C           2
--B  D           2


--3. 3�� ���̺� ���� ����
--SELECT a.name,
--       b.name,
--       c.name,
--       b.no
--FROM cat_a a, cat_b b, cat_c c
--WHERE a.no = b.no
--AND   a.no = c.no
--;
--NA NA NA         NO
---- -- -- ----------
--A  C  E           1
--B  D  F           2

--4.3���̺� īƼ�� ��

--SELECT a.name,
--       b.name,
--       c.name,
--       b.no
--FROM cat_a a, cat_b b, cat_c c
--WHERE a.no = b.no
----AND   a.no = c.no
--;
--NA NA NA         NO
---- -- -- ----------
--A  C  E           1
--A  C  F           1
--B  D  E           2
--B  D  F           2

--sql ���� tool�� ������ �Ǿ� ����!
--select *
--from student t1, professor t2
--;

