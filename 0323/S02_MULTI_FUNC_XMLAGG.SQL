--XMLELEMENT :
--<NAME >,SCOTT</NAME>

--XMLAGG
--10 <NAME>,CLARK</NAME><NAME>,KING</NAME><NAME>,MILLER</NAME>

--.EXTRACT('//text()').getStringVal()
--    10 ,CLARK,KING,MILLER

--EXTRACT('//text()'): 문자로 추출
-- getStringVal() : VARCHAR2
-- getClobVal() : clob
col "xml_ename" for a70
SELECT deptno,
       SUBSTR(XMLAGG( XMLELEMENT(name,',',ename) ORDER BY hiredate) 
        .EXTRACT('//text()').getStringVal(),2) as "xml_ename"
FROM emp
GROUP BY deptno
;

DEPTNO xml_ename
------ ----------------------------------------------------------------------
    10 CLARK,KING,MILLER
    20 SMITH,JONES,FORD,SCOTT,ADAMS
    30 ALLEN,WARD,BLAKE,TURNER,MARTIN,JAMES