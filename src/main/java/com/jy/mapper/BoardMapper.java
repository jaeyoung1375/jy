package com.jy.mapper;

import java.util.List;

import com.jy.model.BoardVO;

public interface BoardMapper {
	
	// 게시판 등록
	public void enroll(BoardVO board);
	
	// 게시판 목록
	public List<BoardVO> boardList();
		
	

}
