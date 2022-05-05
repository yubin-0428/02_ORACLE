col trigger_name  for a20
col trigger_type  for a20
col triggering_event for a20
col table_name    for a20
col status        for a20
SELECT trigger_name,
       trigger_type,
       triggering_event,
       table_name,
       status
FROM user_triggers
;

TRIGGER_NAME         TRIGGER_TYPE         TRIGGERING_EVENT     TABLE_NAME           STATUS
-------------------- -------------------- -------------------- -------------------- --------------------
TRG_EMP_LOG          AFTER EACH ROW       INSERT OR UPDATE OR  EMP_TRG              ENABLED
                                          DELETE

TRG_EMP_NODM_WEEKEND BEFORE STATEMENT     INSERT OR UPDATE OR  EMP_TRG              ENABLED
                                          DELETE