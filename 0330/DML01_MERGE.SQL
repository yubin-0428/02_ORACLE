--TABLE charge_01,charge_02, ch_total
CREATE TABLE charge_01(
   u_date VARCHAR2(6),
   cust_no NUMBER,
   u_time  NUMBER,
   charge  NUMBER
);

DESC charge_01;

CREATE TABLE charge_02(
   u_date VARCHAR2(6),
   cust_no NUMBER,
   u_time  NUMBER,
   charge  NUMBER
);

CREATE TABLE ch_total(
   u_date VARCHAR2(6),
   cust_no NUMBER,
   u_time  NUMBER,
   charge  NUMBER
);