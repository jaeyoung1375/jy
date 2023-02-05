package com.jy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.mapper.BoardMapper;
import com.jy.model.BoardVO;

import lombok.extern.log4j.Log4j;
@Service
@Log4j
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper boardMapper;

	// 게시판 등록
	public void enroll(BoardVO board) {
		
		log.info("게시판 등록 진입 ");
		boardMapper.enroll(board);
	}

}
