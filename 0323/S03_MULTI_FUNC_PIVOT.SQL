--SELECT *
--FROM tb_pivot
--;
--YEAR	M1	M2	M3	M4	M5	M6	M7	M8	M9	M10	M11	M12
--2022	1	2	3	4	5	6	7	8	9	10	11	12
COL M01 FOR 99
COL M02 FOR 99
COL M03 FOR 99
COL M04 FOR 99
COL M05 FOR 99
COL M06 FOR 99
COL M07 FOR 99
COL M08 FOR 99
COL M09 FOR 99
COL M10 FOR 99
COL M11 FOR 99
COL M12 FOR 99
SELECT year,
       DECODE(month,1,month)  M01,
       DECODE(month,2,month)  M02,
       DECODE(month,3,month)  M03,
       DECODE(month,4,month)  M04,
       DECODE(month,5,month)  M05,
       DECODE(month,6,month)  M06,
       DECODE(month,7,month)  M07,
       DECODE(month,8,month)  M08,
       DECODE(month,9,month)  M09,
       DECODE(month,10,month) M10,
       DECODE(month,11,month) M11,
       DECODE(month,12,month) M12        
FROM tb_pivot
;

YEAR     M01 M02 M03 M04 M05 M06 M07 M08 M09 M10 M11 M12
-------- --- --- --- --- --- --- --- --- --- --- --- ---
2022       1
2022           2
2022               3
2022                   4
2022                       5
2022                           6
2022                               7
2022                                   8
2022                                       9
2022                                          10
2022                                              11
2022                                                  12
