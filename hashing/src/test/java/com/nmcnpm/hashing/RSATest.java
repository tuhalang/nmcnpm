package com.nmcnpm.hashing;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class RSATest {
	RSA rsa=RSA.getInstance();
	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testEncrpytion() {
		rsa.generateKey();
		assertEquals("RR8WsVCiTUkm67vY8dSfv+eJ1h2JLEulXQZf4t7rxP8HynxMKrYcAmGvIYsrUb77ys4K8uUj48ayT3bSsM3wfnoJLtgww2idNB7r8UeIyIGe/UKoO0co5aJoptt8NwuKNCS0uf7fEEZnAfB1rszXqKQj0IxOdCtYLorO7DltwDM=", rsa.encrpytion("helloworld"));
	}

//	@Test
//	void testDecryption() {
//		fail("Not yet implemented");
//	}

}
