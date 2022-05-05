COL SUN FOR A4
COL MON FOR A4
COL TUE FOR A4
COL WED FOR A4
COL THU FOR A4
COL FRI FOR A4
COL SAT FOR A4
SELECT DECODE(day,'SUN',dayno) AS  SUN,
       DECODE(day,'MON',dayno) AS  MON,
       DECODE(day,'TUE',dayno) AS  TUE,
       DECODE(day,'WED',dayno) AS  WED,
       DECODE(day,'THU',dayno) AS  THU,
       DECODE(day,'FRI',dayno) AS  FRI,   
       DECODE(day,'SAT',dayno) AS  SAT       
FROM cal
;
SUN  MON  TUE  WED  THU  FRI  SAT
---- ---- ---- ---- ---- ---- ----
1
     2
          3
               4
                    5
                         6
                              7
8
     9
          10
               11
                    12
                         13
                              14
15
     16
          17
               18
                    19
                         20
                              21
22
     23
          24
               25
                    26
                         27
                              28
29
     30
          31

31 행이 선택되었습니다.
--SELECT t1.weekno,
--       t1.day,
--       t1.dayno
--FROM cal t1
--;
--WE DAY        DAYN
---- ---------- ----
--1  SUN        1
--1  MON        2
--1  TUE        3
--1  WED        4
--1  THU        5
--1  FRI        6
--1  SAT        7
--2  SUN        8
--2  MON        9
--2  TUE        10
--2  WED        11
--2  THU        12
--2  FRI        13
--2  SAT        14
--3  SUN        15
--3  MON        16
--3  TUE        17
--3  WED        18
--3  THU        19
--3  FRI        20
--3  SAT        21
--4  SUN        22
--4  MON        23
--4  TUE        24
--4  WED        25
--4  THU        26
--4  FRI        27
--4  SAT        28
--5  SUN        29
--5  MON        30
--5  TUE        31