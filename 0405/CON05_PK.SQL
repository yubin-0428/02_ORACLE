CREATE TABLE table_pk3(														
  login_id VARCHAR2(20) ,														
  login_pwd VARCHAR2(20) CONSTRAINT  table_pk3_loginpwd_nn  NOT NULL,														
  tel  VARCHAR2(20),	
  CONSTRAINT tablepk3_loginid_pk PRIMARY KEY(login_id)
);														
