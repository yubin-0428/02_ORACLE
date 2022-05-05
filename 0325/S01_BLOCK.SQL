col segment_name for a20
col file_id      for 9999
col block_id     for 9999
SELECT segment_name,
       file_id,
       block_id
FROM dba_extents
WHERE owner = 'SCOTT'
AND segment_name like 'EMP%';