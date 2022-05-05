--emp_fk

--dept_fk 데이터가 없음!
INSERT INTO emp_fk (								
    empno,								
    ename,								
    job,								
    mgr,								
    hiredate,								
    sal,								
    comm,								
    deptno								
) VALUES (								
    9999,								
    'hong',								
    'CLERK',								
    '7788',								
    TO_DATE('2017/04/03','YYYY/MM/DD'),								
    1200,								
    NULL,								
    10								
);								

--1행에 오류:
--ORA-02291: 무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다

INSERT INTO dept_fk (
    deptno,
    dname,
    loc
) VALUES (
    10,
    'test_dname',
    'test_log'
);

--dept_fk 데이터가 10!
INSERT INTO emp_fk (								
    empno,								
    ename,								
    job,								
    mgr,								
    hiredate,								
    sal,								
    comm,								
    deptno								
) VALUES (								
    9999,								
    'hong',								
    'CLERK',								
    '7788',								
    TO_DATE('2017/04/03','YYYY/MM/DD'),								
    1200,								
    NULL,								
    10								
);	