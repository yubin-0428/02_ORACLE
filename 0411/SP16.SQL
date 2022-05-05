CREATE OR REPLACE PROCEDURE pro_inout(
  inout_no IN OUT NUMBER
)
IS
   

BEGIN
     inout_no := inout_no * 2;

END;
/