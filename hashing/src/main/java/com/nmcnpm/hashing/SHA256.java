package com.nmcnpm.hashing;

import java.math.BigInteger;
import java.security.MessageDigest;

public class SHA256 implements IMethod {

	public SHA256() {
		// TODO Auto-generated constructor stub
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
