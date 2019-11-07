package com.nmcnpm.hashing.impl;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

import com.nmcnpm.hashing.IHashing;

public class IHashingImpl implements IHashing{

	@Override
	public String encodeSHA256(String str) {
		String output="";
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(str.getBytes());
			byte [] c=md.digest();
			output=String.format("%064x", new BigInteger(1,c));
		} catch (Exception e) {
			return null;
		}
		return output;
	}

	@Override
	public boolean compareSHA256(String str1, String str2) {
		if (str2.compareTo(encodeSHA256(str1))==0) return true;
		return false;
	}

	@Override
	public String encodeMD5(String str) {
		String output="";
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes(StandardCharsets.UTF_8));
			byte[] c=md.digest();
			output=String.format("%032x", new BigInteger(1,c));
		} catch (Exception e) {
			return null;
		}
		return output;
	}

	@Override
	public boolean compareMD5(String str1, String str2) {
		if (str1.compareTo(encodeMD5(str2))==0) return true;
		return false;
	}
}
