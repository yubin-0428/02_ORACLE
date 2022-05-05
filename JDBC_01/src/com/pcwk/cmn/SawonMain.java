package com.pcwk.cmn;

import java.util.List;

import org.apache.log4j.Logger;

public class SawonMain {
    final Logger LOG = Logger.getLogger(getClass());
	private SawonDao dao;
	private SawonVO  sawon01;
	private SearchVO search01;
	
	public SawonMain() {
		dao = new SawonDao();
		//public SawonVO(int empno, String ename, String hiredate, int deptno) {
		sawon01 = new SawonVO(9001,"카카오","",20);
		//public SearchVO(String searchDiv, String searchWord, int pageSize, int pageNum) {
		
		search01 =new SearchVO("","",10,1);
	}
	
	public void doSave() {
		int flag = dao.doSave(sawon01);
		if(1==flag) {
			LOG.debug("-------------------");
			LOG.debug("-등록 성공-");
			LOG.debug("-------------------");
		}else {
			LOG.debug("-------------------");
			LOG.debug("-등록 실패-");
			LOG.debug("-------------------");		
		}
	}
	
	
	public void doDelete() {
		int flag = dao.doDelete(sawon01);
		if( 1== flag) {
			LOG.debug("==================");
			LOG.debug("=삭제 성공=");
			LOG.debug("==================");
		}else {
			LOG.debug("==================");
			LOG.debug("=삭제 실패=");
			LOG.debug("==================");			
		}
	}
	
	
	public void doSelectOne() {
		SawonVO outVO = dao.doSelectOne(sawon01);
		if(null != outVO) {
			LOG.debug("-------------------");
			LOG.debug("--조회 성공-");
			LOG.debug("-------------------");
		}else {
			LOG.debug("-------------------");
			LOG.debug("--조회 실패-");
			LOG.debug("-------------------");			
		}
	}
	
	public void doRetrieve() {
		search01.setPageSize(10);
		search01.setPageNum(1);
		search01.setSearchDiv("20");
		search01.setSearchWord("a");
		List<SawonVO> list = dao.doRetrieve(search01);
		if(list.size()>0) {
			for(SawonVO vo :list) {
				LOG.debug("vo:"+vo);
			}
		}else {
			LOG.debug("-------------------");
			LOG.debug("--목록 조회 실패-");
			LOG.debug("-------------------");				
		}
	}
	
	
	public void totalCount() {
		int totalCnt = dao.totalCount(search01);
		if(totalCnt>0) {
			LOG.debug("--------------------");
			LOG.debug("-총글수(성공) :"+totalCnt);
			LOG.debug("--------------------");
		}else {
			LOG.debug("--------------------");
			LOG.debug("-총글수 :"+totalCnt);
			LOG.debug("--------------------");			
		}
	}
	
	public static void main(String[] args) {
		
		SawonMain main=new SawonMain();
		//삭제
		main.doDelete();
		
		//등록
		main.doSave();
		
		//단건 조회
		main.doSelectOne();
		
		//목록조회
		main.doRetrieve();
		main.totalCount();

	}

}












