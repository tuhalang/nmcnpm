package com.nmcnpm.hashing;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AESTest {
    AES a=AES.getInstance();

    @Test
    void decrypt() {
        String s=a.encrypt("abc");
        assertEquals("abc",a.decrypt(s));
    }
}