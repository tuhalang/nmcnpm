package com.nmcnpm.hashing;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Base64;
import java.util.Random;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class AES implements IMethod {
	private byte[] key;
	private static AES aes=null;
	private AES() {

		byte[] array = new byte[15];
		new Random().nextBytes(array);
		String myKey = new String(array, Charset.forName("UTF-8"));
		MessageDigest sha = null;
		try {
			key = myKey.getBytes("UTF-8");
			sha = MessageDigest.getInstance("SHA-1");
			key = sha.digest(key);
			key = Arrays.copyOf(key, 16);
		}
		catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

	}
	public synchronized static AES getInstance() {
		if (aes==null) {
			aes=new AES();
		}
		return aes;
	}
	@Override
	public String encrypt(String plainText) {
		try {
			SecretKeySpec secretKey = new SecretKeySpec(key, "AES");
			Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
			cipher.init(Cipher.ENCRYPT_MODE, secretKey);
			return Base64.getEncoder().encodeToString(cipher.doFinal(plainText.getBytes("UTF-8")));
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}

	@Override
	public String decrypt(String encodedText) {
		try {
			SecretKeySpec secretKey = new SecretKeySpec(key, "AES");
			Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
			cipher.init(Cipher.DECRYPT_MODE, secretKey);
			return new String(cipher.doFinal(Base64.getDecoder().decode(encodedText)));
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}

	public byte[] getKey() {
		return key;
	}

}
