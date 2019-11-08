package com.nmcnpm.hashing;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public class MD5 implements IMethod {
	private static MD5 md=null;
	private MD5() {
		super();
	}
	public synchronized static MD5 getInstance() {
		if (md==null) md=new MD5();
		return md;
	}
    @Override
    public String encrypt(String plainText) {
    	String output="";
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes(StandardCharsets.UTF_8));
			byte[] c=md.digest();
			output=String.format("%032x", new BigInteger(1,c));
		} catch (Exception e) {
			return null;
		}
		return output;
    }

    @Override
    public String decrypt(String encodedText) {
        return null;
    }
}
