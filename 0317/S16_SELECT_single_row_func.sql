--DESC dual;
-- �̸�       ��?      ����         
-- ------------------- -------- 
-- DUMMY             VARCHAR2(1)
--SELECT dummy
--FROM dual
--;
--DU
----
--X
SELECT LENGTH('�ѱ�'),
       LENGTHB('�ѱ�')
FROM dual
;
--�ѱ� �� ���ڰ� 3BYTE
--LENGTH('�ѱ�') LENGTHB('�ѱ�')
---------------- ---------------
--             2               6