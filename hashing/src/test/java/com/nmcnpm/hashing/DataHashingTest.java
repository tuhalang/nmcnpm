/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.hashing;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

/**
 *
 * @author hungpv
 */
public class DataHashingTest {
    
    DataHashing dataHashing;
    
    @Before
    public void setup(){
        dataHashing = DataHashing.getInstance();
    }

    @Test
    public void EncryptTest(){
        String s = "abc";
        String sHashing = dataHashing.getMethod().encrypt(s);
        Assert.assertNotEquals(sHashing, s);
    }
    
    @Test
    public void DecryptTest() throws Exception{
        String plainText = "tuhalang007@gmail.com";
        String encodedText = dataHashing.getMethod().encrypt(plainText);
        System.out.println(encodedText);
        String decodedText = dataHashing.getMethod().decrypt(encodedText);
        Assert.assertEquals(plainText, decodedText);
        
    }
}
