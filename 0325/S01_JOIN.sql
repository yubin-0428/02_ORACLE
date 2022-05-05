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

--1. 정상적인 조인
--col cat_a.name for a7
--col cat_b.name for a7
--SELECT cat_a.name, 
--       cat_b.name,
--       no
--FROM cat_a, cat_b
--WHERE cat_a.no = cat_b.no
--;
--3행에 오류:
--ORA-00918: 열의 정의가 애매합니다

--2. 2개의 테이블로 카티션 곱 생성
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


--3. 3개 테이블 정상 조인
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

--4.3테이블 카티션 곱

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

--sql 개발 tool은 페이지 되어 있음!
--select *
--from student t1, professor t2
--;

