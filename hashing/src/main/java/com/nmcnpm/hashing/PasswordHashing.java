package com.nmcnpm.hashing;

import java.math.BigInteger;
import java.security.MessageDigest;

public class PasswordHashing extends Hashing {

	private static PasswordHashing passwordHashing;

	private PasswordHashing(IMethod method) {
		super(method);
	}

	public static PasswordHashing getInstance(){
		if(passwordHashing==null){
			passwordHashing = new PasswordHashing(SHA256.getInstance());
			return passwordHashing;
		}
		return passwordHashing;
	}
}
