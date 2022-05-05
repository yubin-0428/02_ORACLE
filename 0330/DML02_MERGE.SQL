--charge_01 데이터 입력
INSERT INTO charge_01 VALUES ('141001',1000,2,1000 );
INSERT INTO charge_01 VALUES ('141001',1001,2,1000 );
INSERT INTO charge_01 VALUES ('141001',1002,1, 500 );

SELECT * FROM charge_01;

U_DATE          CUST_NO     U_TIME     CHARGE
------------ ---------- ---------- ----------
141001             1000          2       1000
141001             1001          2       1000
141001             1002          1        500

--charge_02 데이터 입력
INSERT INTO charge_02 VALUES ('141002',1000,3,1500 );
INSERT INTO charge_02 VALUES ('141002',1001,4,2000 );
INSERT INTO charge_02 VALUES ('141002',1003,1, 500 );

SELECT * FROM charge_02;

COMMIT;