package com.nmcnpm.hashing.impl;

import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class IHashingImplTest {

	IHashingImpl i=new IHashingImpl();
	@BeforeEach
	void setUp() throws Exception {
		System.out.println("setting up");
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testEncodeSHA256() {
		assertEquals("8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414", i.encodeSHA256("1234567"));
		assertEquals("9e27aac8b80d189db7e834a33f2130b57961d5e7b3e57fda64f89d4c9fbb4efa", i.encodeSHA256("Trần Văn Điệp"));
	}

	@Test
	void testCompareSHA256() {
		assertEquals(false, i.compareSHA256("12345678", "8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414"));
		assertEquals(true,i.compareSHA256("abcdef","bef57ec7f53a6d40beb640a780a639c83bc29ac8a9816f1fc6c5c6dcd93c4721"));
	}

//	@Test
//	void testEncodeMD5() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	void testCompareMD5() {
//		fail("Not yet implemented");
//	}
//	@Test
//	public void test() {
//		
//	}
}
