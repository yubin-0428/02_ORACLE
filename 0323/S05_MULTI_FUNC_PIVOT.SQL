SELECT * FROM (SELECT year,month FROM tb_pivot)
PIVOT( MAX(month) FOR month IN ( 1  AS M01
                                ,2  AS M02
                                ,3  AS M03
                                ,4  AS M04
                                ,5  AS M05
                                ,6  AS M06
                                ,7  AS M07
                                ,8  AS M08
                                ,9  AS M09
                                ,10 AS M10
                                ,11 AS M11
                                ,12 AS M12
                               )
)
;
YEAR     M01 M02 M03 M04 M05 M06 M07 M08 M09 M10 M11 M12
-------- --- --- --- --- --- --- --- --- --- --- --- ---
2022       1   2   3   4   5   6   7   8   9  10  11  12