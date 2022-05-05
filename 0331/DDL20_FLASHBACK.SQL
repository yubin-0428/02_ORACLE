삭제 테이블 쓰레기 통에서 복구                              
        1. flashback확인                     
                                
        2. 복원                        


1
    COL object_name FOR A45
    COL original_name FOR A35
    COL createtime FOR A20
    
    SELECT object_name,
           original_name,
           createtime
    FROM recyclebin;
    
    
OBJECT_NAME                                   ORIGINAL_NAME                       CREATETIME
--------------------------------------------- ----------------------------------- --------------------
BIN$euAjVyXJQIqt+PUOZmYyAA==$0                DEPT_TEMP                           2022-03-29:09:18:58
BIN$u3zTpK4SSeeNZKuXa7WE+w==$0                PK_BOARD                            2022-03-30:15:38:28
BIN$0Pr13RMaRRiCalpSAQwdtA==$0                BONUS                               2022-03-14:14:16:39
SYS_IL0000074341C00003$$                      SYS_IL0000074341C00003$$            2022-03-30:15:38:28
SYS_LOB0000074341C00003$$                     SYS_LOB0000074341C00003$$           2022-03-30:15:38:28
BIN$2sVeEgYsTP6HzIQRFBCCtQ==$0                BOARD                               2022-03-30:15:38:28
BIN$vInefr/NTf6OU7xXz9xsRA==$0                EMP_HW                              2022-03-31:11:05:59

7 행이 선택되었습니다.    

2.
  FLASHBACK TABLE "BIN$vInefr/NTf6OU7xXz9xsRA==$0" TO BEFORE DROP;
  
  플래시백이 완료되었습니다.

SELECT * FROM emp_hw;