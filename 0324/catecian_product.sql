DROP TABLE cat_a;                                                           
CREATE TABLE cat_a(                                                         
  no  NUMBER,                                                           
  name VARCHAR2(1)                                                          
);                                                          
                                                     
INSERT INTO cat_a VALUES (1,'A');                                                           
INSERT INTO cat_a VALUES (2,'B');                                                           
                                                            
DROP TABLE cat_b;                                                           
CREATE TABLE cat_B(                                                         
  no  NUMBER,                                                           
  name VARCHAR2(1)                                                          
);                                                          
                                                         
INSERT INTO cat_b (no,name) VALUES (1,'C');                                                         
INSERT INTO cat_b (no,name) VALUES (2,'D');   

DROP TABLE cat_c;                                                       
CREATE TABLE cat_c(                                                         
  no  NUMBER,                                                           
  name VARCHAR2(1)                                                          
);                                                          
                                                          
INSERT INTO cat_c (no,name) VALUES (1,'E');                                                         
INSERT INTO cat_c (no,name) VALUES (2,'F');                                                         
