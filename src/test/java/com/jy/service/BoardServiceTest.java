package com.jy.service;

import java.util.List;

import org.junit.Test;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jy.model.BoardVO;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTest {
	
	@Autowired
	private BoardService boardService;
	
//	@Test
//	public void testEnroll() {
//		
//		BoardVO vo = new BoardVO();
//		vo.setTitle("service test");
//		vo.setContent("service test");
//		vo.setWriter("service test");
//		
//		boardService.enroll(vo);
//	}
	
	@Test
	public void testboardList() {
		
		List list = boardService.boardList();
		
		for(Object o : list) {
			log.info(o+" ");
		}
	}
	

}
