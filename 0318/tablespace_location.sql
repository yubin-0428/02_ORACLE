COL tablespace_name FOR A10
COL file_name FOR A52
SELECT tablespace_name,
       file_name
FROM dba_data_files;  