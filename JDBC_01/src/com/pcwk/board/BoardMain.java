package com.pcwk.board;

import java.util.List;

import org.apache.log4j.Logger;

import com.pcwk.cmn.SawonVO;
import com.pcwk.cmn.SearchVO;

public class BoardMain {
	final Logger LOG = Logger.getLogger(getClass());
	private BoardDao dao;
	private BoardVO  board01;
	private SearchVO search01;
	
	public BoardMain() {
		dao = new BoardDao();
		board01 = new BoardVO(900001, "제목_900001", "내용_900001", 0, "", "pcwk", "", "pcwk");
		
		search01 = new SearchVO("", "", 10, 1);
	}

	public void doSave() {
		int flag = dao.doSave(board01);
		if(1==flag) {
			LOG.debug("-------------------------");
			LOG.debug("-등록성공--");
			LOG.debug("-------------------------");
		}else {
			LOG.debug("-------------------------");
			LOG.debug("-등록실패--");
			LOG.debug("-------------------------");			
		}
	}
	
	public void doDelete() {
		int flag = dao.doDelete(board01);
		if(1 == flag) {
			LOG.debug("--------------------------");
			LOG.debug("-삭제성공--");
			LOG.debug("--------------------------");
		}else {
			LOG.debug("--------------------------");
			LOG.debug("-삭제실패--");
			LOG.debug("--------------------------");			
		}
	}
	
	public boolean isSameVO(BoardVO orgVO, BoardVO vsVO) {
		boolean isSame = false;
		if(  orgVO.getSeq() == vsVO.getSeq()
		  && orgVO.getTitle().equals(vsVO.getTitle())
		  && orgVO.getContents().equals(vsVO.getContents())
		  && orgVO.getReadCnt() == vsVO.getReadCnt()
		  && orgVO.getRegId().equals(vsVO.getRegId())
		  && orgVO.getModId().equals(vsVO.getModId())) {
			isSame = true;
		}
		
		return isSame;
	}
	
	public void doSelectOne() {
		BoardVO outVO = dao.doSelectOne(board01);
		if(null != outVO && isSameVO(board01,outVO)  ) {
			LOG.debug("-------------------");
			LOG.debug("--조회 성공-");
			LOG.debug("-------------------");
		}else {
			LOG.debug("-------------------");
			LOG.debug("--조회 실패-");
			LOG.debug("-------------------");			
		}
	}
	
	
	
	public void doUpdate() {
		BoardVO outVO = dao.doSelectOne(board01);//단건 조회
		
		//조회 데이터 수정
		outVO.setTitle(outVO.getTitle()+"_u");
		outVO.setContents(outVO.getContents()+"_u");
		outVO.setModId(outVO.getModId()+"_u");
		
		//update수행
		int flag = dao.doUpdate(outVO);
		
		//update데이터 조회
		BoardVO vsVO = dao.doSelectOne(outVO);
		
		if(1 == flag && isSameVO(outVO,vsVO)  ) {
			LOG.debug("-------------------");
			LOG.debug("--수정 성공-");
			LOG.debug("-------------------");
		}else {
			LOG.debug("-------------------");
			LOG.debug("--수정 실패-");
			LOG.debug("-------------------");
		}
	}
	
	
	public void updateReadCnt() {
		//update수행
		int flag = dao.updateReadCnt(board01);
		BoardVO vsVO = dao.doSelectOne(board01);
		if(flag == 1 && vsVO.getReadCnt() == 1) {
			LOG.debug("-------------------");
			LOG.debug("--조회 count 증가 성공-");
			LOG.debug("-------------------");			
		}else {
			LOG.debug("-------------------");
			LOG.debug("--조회 count 증가 실패-");
			LOG.debug("-------------------");				
		}
	}
	
	
	public void doRetrieve() {
		search01.setPageSize(30);
		search01.setPageNum(1);
		search01.setSearchDiv("");
		search01.setSearchWord("");
		List<BoardVO> list = dao.doRetrieve(search01);
		if(list.size()>0) {
			for(BoardVO vo :list) {
				LOG.debug("vo:"+vo);
			}
		}else {
			LOG.debug("-------------------");
			LOG.debug("--목록 조회 실패-");
			LOG.debug("-------------------");				
		}		
	}
	
	public static void main(String[] args) {
		BoardMain main=new BoardMain();
		//삭제
//		main.doDelete();
//		//등록
//		main.doSave();
//
//		//단건조회
//		main.doSelectOne();
//		
//		//수정
//		main.doUpdate();
//		
//		//조회 count증가
//		main.updateReadCnt();
		
		//목록조회
		main.doRetrieve();
	}

}
