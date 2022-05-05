SELECT '[' || TRIM('_' FROM          '_ _ORACLE_ _') ||']' AS TRIM,
       '[' || TRIM(LEADING  '_' FROM '_ _ORACLE_ _') ||']' AS LEADING_TRIM,
	   '[' || TRIM(TRAILING '_' FROM '_ _ORACLE_ _') ||']' AS TRAILING_TRIM,
	   '[' || TRIM(BOTH '_'     FROM '_ _ORACLE_ _') ||']' AS BOTH_TRIM
FROM dual
;