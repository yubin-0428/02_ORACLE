CREATE OR REPLACE PROCEDURE pro_param_out
(
  in_empno  IN emp.empno%TYPE,
  out_ename OUT emp.ename%TYPE,
  out_sal   OUT emp.sal%TYPE
)
IS

BEGIN
	SELECT ename,sal INTO out_ename,out_sal
	FROM emp
	WHERE empno = in_empno;
END pro_param_out;
/
