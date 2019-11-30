package com.nmcnpm.hashing;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class PasswordHashingTest {
    
    PasswordHashing passwordHashing;
    
    @Before
    public void setup(){
        passwordHashing = PasswordHashing.getInstance();
    }

    @Test
    public void PasswordHashingTest(){
        String s = "abc";
        String sHashing = passwordHashing.getMethod().encrypt(s);
        Assert.assertNotEquals(sHashing, s);
    }

}
