package com.nmcnpm.hashing;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PasswordHashingTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}
	PasswordHashing ph=new PasswordHashing(new MD5());

	@Test
	void testEncrypt() {
		assertEquals("fcea920f7412b5da7be0cf42b8c93759", ph.getMethod().encrypt("1234567"));
	}

}
