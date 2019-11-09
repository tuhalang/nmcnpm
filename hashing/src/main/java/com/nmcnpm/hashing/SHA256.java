package com.nmcnpm.hashing;

import java.math.BigInteger;
import java.security.MessageDigest;

public class SHA256 implements IMethod {
	private static SHA256 sha=null;
	private SHA256() {
	}
	
	public synchronized static SHA256 getInstance() {
		if (sha==null) sha=new SHA256();
		return sha;
	}
	@Override
	public String encrypt(String plainText) {
		String output = "";
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(plainText.getBytes());
			byte[] c = md.digest();
			output = String.format("%064x", new BigInteger(1, c));
		} catch (Exception e) {
			return null;
		}
		return output;
	}

	@Override
	public String decrypt(String encodedText) {
		// TODO Auto-generated method stub
		return null;
	}

}
