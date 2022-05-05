SELECT '[' || TRIM(' _ORACLE_ ')  ||']' AS TRIM,
       '[' || LTRIM(' _ORACLE_ ') ||']' AS LTRIM01,
	   '[' || LTRIM('<_ORACLE_>','<_') ||']' AS LTRIM02,
       '[' || RTRIM(' _ORACLE_ ') ||']' AS RTRIM01,
	   '[' || RTRIM('<_ORACLE_>','_>') ||']' AS RTRIM02	   
FROM dual
;
TRIM        LTRIM01      LTRIM02      RTRIM01      RTRIM02   
----------- ------------ ------------ ------------ ----------
[_ORACLE_]  [_ORACLE_ ]  [ORACLE_>]   [ _ORACLE_]  [<_ORACLE]