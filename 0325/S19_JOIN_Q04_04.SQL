
col cust_name for a30
col point     for 99999999
col gift_name for a30
SELECT t1.gname as cust_name,
       t1.point,
       t2.gname as gift_name
FROM customer t1, gift t2
WHERE t1.point >= t2.g_start
AND t2.gname = 'Notebook'
;

CUST_NAME                          POINT GIFT_NAME
------------------------------ --------- ------------------------------
James Seo                         980000 Notebook
Winona Ryder                      625000 Notebook
Michelle Pfeiffer                 670000 Notebook

