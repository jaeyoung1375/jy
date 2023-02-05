package com.jy.model;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class PageHandlerTest {

	@Test
	public void test() {
		PageHandler ph = new PageHandler(255, 22);
		ph.print();
		System.out.println("ph : "+ph);
		assertTrue(ph.getBeginPage() == 21);
		assertTrue(ph.getEndPage() == 26);
	}
}
