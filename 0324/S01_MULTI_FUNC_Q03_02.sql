COL JAN FOR A4
COL FEB FOR A4
COL MAR FOR A4
COL APR FOR A4
COL MAY FOR A4
COL JUN FOR A4
COL JUL FOR A4
COL AUG FOR A4
COL SEP FOR A4
COL OCT FOR A4
COL NOV FOR A4
COL DEC FOR A4
COL TOTAL FOR A4
SELECT COUNT(*)||'EA' TOTAL,
       COUNT(DECODE(t1.mm,'01',0))||'EA' AS JAN,
       COUNT(DECODE(t1.mm,'02',0))||'EA' AS FEB,
       COUNT(DECODE(t1.mm,'03',0))||'EA' AS MAR,
       COUNT(DECODE(t1.mm,'04',0))||'EA' AS APR,
       COUNT(DECODE(t1.mm,'05',0))||'EA' AS MAY,
       COUNT(DECODE(t1.mm,'06',0))||'EA' AS JUN,
       COUNT(DECODE(t1.mm,'07',0))||'EA' AS JUL,       
       COUNT(DECODE(t1.mm,'08',0))||'EA' AS AUG,       
       COUNT(DECODE(t1.mm,'09',0))||'EA' AS SEP,       
       COUNT(DECODE(t1.mm,'10',0))||'EA' AS OCT,       
       COUNT(DECODE(t1.mm,'11',0))||'EA' AS NOV,       
       COUNT(DECODE(t1.mm,'12',0))||'EA' AS DEC       
FROM (
    SELECT TO_CHAR(birthday,'MM') AS MM
    FROM student
)t1
;

TOTA JAN  FEB  MAR  APR  MAY  JUN  JUL      AUG  SEP  OCT  NOV  DEC
---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
20EA 3EA  3EA  2EA  2EA  0EA  1EA  0EA      2EA  2EA  2EA  1EA  2EA