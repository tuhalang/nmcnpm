/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.database.utils;

/**
 *
 * @author hungpv
 */

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.Security;
import java.util.logging.Logger;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.bouncycastle.jce.provider.BouncyCastleProvider;


public class AES {

        private static final Logger LOGGER = Logger.getLogger(AES.class.getName());

	private final static char[] hexArray = "0123456789ABCDEF".toCharArray();

	private enum EncryptMode {

		ENCRYPT, DECRYPT;
	}

	static String key = "nmcnpm-pvh";
	static String iv = "151e7b7548668ea2";

	static Cipher _cx;
	static byte[] _key, _iv;

	public AES() {
		init();
	}

	private static void init() {
		try {
			_cx = Cipher.getInstance("AES/CBC/PKCS5Padding");
			Security.addProvider(new BouncyCastleProvider());
			_key = new byte[16]; // 256 bit key space
			_iv = new byte[16]; // 128 bit IV
		} catch (NoSuchAlgorithmException e) {
			_cx = null;
			LOGGER.severe("Sai thuat toan ma hoa md5: "+ e);
		} catch (NoSuchPaddingException e) {
			_cx = null;
			LOGGER.severe("Sai thuat toan ma hoa md5: "+ e);
		}
	}

	public static final String md5(final String inputString) {
		final String MD5 = "MD5";
		try {
			// Create MD5 Hash
			MessageDigest digest = java.security.MessageDigest.getInstance(MD5);
			digest.update(inputString.getBytes());
			byte messageDigest[] = digest.digest();

			// Create Hex String
			StringBuilder hexString = new StringBuilder();
			for (byte aMessageDigest : messageDigest) {
				String h = Integer.toHexString(0xFF & aMessageDigest);
				while (h.length() < 2) {
					h = "0" + h;
				}
				hexString.append(h);
			}
			return hexString.toString();

		} catch (NoSuchAlgorithmException e) {
			LOGGER.severe("Sai thuat toan ma hoa md5: "+ e);
		}
		return "";
	}

	public static String bytesToHex(byte[] bytes) {
		char[] hexChars = new char[bytes.length * 2];
		for (int j = 0; j < bytes.length; j++) {
			int v = bytes[j] & 0xFF;
			hexChars[j * 2] = hexArray[v >>> 4];
			hexChars[j * 2 + 1] = hexArray[v & 0x0F];
		}
		return new String(hexChars);
	}

	public static byte[] hexStringToByteArray(String s) {
		int len = s.length();
		byte[] data = new byte[len / 2];
		for (int i = 0; i < len; i += 2) {
			data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4) + Character.digit(s.charAt(i + 1), 16));
		}
		return data;
	}

	/**
	 * thuc hien ma hoa du lieu dau vao
	 *
	 * @param _inputText
	 * @param _encryptionKey
	 * @param _mode
	 * @param _initVector
	 * @return
	 * @throws UnsupportedEncodingException
	 * @throws InvalidKeyException
	 * @throws InvalidAlgorithmParameterException
	 * @throws IllegalBlockSizeException
	 * @throws BadPaddingException
	 */
	private static String encryptDecrypt(String _inputText, String _encryptionKey, EncryptMode _mode,
			String _initVector) throws UnsupportedEncodingException, InvalidKeyException,
			InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
		String _out = "";
		int len = _encryptionKey.getBytes("UTF-8").length; // length of the key
		// provided

		if (_encryptionKey.getBytes("UTF-8").length > _key.length) {
			len = _key.length;
		}

		int ivlen = _initVector.getBytes("UTF-8").length;

		if (_initVector.getBytes("UTF-8").length > _iv.length) {
			ivlen = _iv.length;
		}

		System.arraycopy(_encryptionKey.getBytes("UTF-8"), 0, _key, 0, len);
		System.arraycopy(_initVector.getBytes("UTF-8"), 0, _iv, 0, ivlen);
		// KeyGenerator _keyGen = KeyGenerator.getInstance("AES");
		// _keyGen.init(128);

		SecretKeySpec keySpec = new SecretKeySpec(_key, "AES"); // Create a new
		// SecretKeySpec
		// for the
		// specified key
		// data and
		// algorithm
		// name.

		IvParameterSpec ivSpec = new IvParameterSpec(_iv); // Create a new
		// IvParameterSpec
		// instance with the
		// bytes from the
		// specified buffer
		// iv used as
		// initialization
		// vector.

		// encryption
		if (_mode.equals(EncryptMode.ENCRYPT)) {
			// Potentially insecure random numbers on Android 4.3 and older.
			// Read
			// https://android-developers.blogspot.com/2013/08/some-securerandom-thoughts.html
			// for more info.
			_cx.init(Cipher.ENCRYPT_MODE, keySpec, ivSpec);// Initialize this
			// cipher instance
			byte[] results = _cx.doFinal(_inputText.getBytes("UTF-8")); // Finish
			// multi-part
			// transformation
			// (encryption)
			_out = bytesToHex(results); // ciphertext
			// output
		}

		// decryption
		if (_mode.equals(EncryptMode.DECRYPT)) {
			_cx.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);// Initialize this
			// ipher instance

			byte[] decodedValue = hexStringToByteArray(_inputText);
			byte[] decryptedVal = _cx.doFinal(decodedValue); // Finish
			// multi-part
			// transformation
			// (decryption)
			_out = new String(decryptedVal);
		}
		// System.out.println(_out);
		return _out; // return encrypted/decrypted string
	}

	/**
	 * * This function computes the SHA256 hash of input string
	 *
	 * @param text
	 *            input text whose SHA256 hash has to be computed
	 * @param length
	 *            length of the text to be returned
	 * @return returns SHA256 hash of input text
	 * @throws NoSuchAlgorithmException
	 * @throws UnsupportedEncodingException
	 */
	public static String SHA256(String text, int length) throws NoSuchAlgorithmException, UnsupportedEncodingException {

		String resultStr;
		MessageDigest md = MessageDigest.getInstance("SHA-256");

		md.update(text.getBytes("UTF-8"));
		byte[] digest = md.digest();

		StringBuffer result = new StringBuffer();
		for (byte b : digest) {
			result.append(String.format("%02x", b)); // convert to hex
		}

		if (length > result.toString().length()) {
			resultStr = result.toString();
		} else {
			resultStr = result.toString().substring(0, length);
		}

		return resultStr;

	}

	/**
	 * * This function encrypts the plain text to cipher text using the key
	 * provided. You'll have to use the same key for decryption
	 *
	 * @param _plainText
	 *            Plain text to be encrypted
	 * @param _key
	 *            Encryption Key. You'll have to use the same key for decryption
	 * @param _iv
	 *            initialization Vector
	 * @return returns encrypted (cipher) text
	 * @throws InvalidKeyException
	 * @throws UnsupportedEncodingException
	 * @throws InvalidAlgorithmParameterException
	 * @throws IllegalBlockSizeException
	 * @throws BadPaddingException
	 */
	public String encrypt(String _plainText, String _key, String _iv) {
		String strResult = "";
		try {
			strResult = encryptDecrypt(_plainText, _key, EncryptMode.ENCRYPT, _iv);
		} catch (InvalidKeyException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (UnsupportedEncodingException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (InvalidAlgorithmParameterException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (IllegalBlockSizeException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (BadPaddingException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		}
		return strResult;
	}

	public static String encrypt(String _plainText) {
		init();
		String strResult = "";
		try {
			String key = AES.SHA256(AES.key, 16); // 32 bytes = 256 bit
			String iv = AES.iv;// CryptLib.generateRandomIV(16);
			strResult = encryptDecrypt(_plainText, key, EncryptMode.ENCRYPT, iv);
		} catch (InvalidKeyException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (UnsupportedEncodingException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (InvalidAlgorithmParameterException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (IllegalBlockSizeException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (BadPaddingException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return strResult;
	}

	/**
	 * * This funtion decrypts the encrypted text to plain text using the key
	 * provided. You'll have to use the same key which you used during
	 * encryprtion
	 *
	 * @param _encryptedText
	 *            Encrypted/Cipher text to be decrypted
	 * @param _key
	 *            Encryption key which you used during encryption
	 * @param _iv
	 *            initialization Vector
	 * @return encrypted value
	 * @throws InvalidKeyException
	 * @throws UnsupportedEncodingException
	 * @throws InvalidAlgorithmParameterException
	 * @throws IllegalBlockSizeException
	 * @throws BadPaddingException
	 */
	public static String decrypt(String _encryptedText) {
		init();
		String strResult = "";
		try {
			String key = AES.SHA256(AES.key, 16); // 32 bytes = 256 bit
			String iv = AES.iv;// CryptLib.generateRandomIV(16);
			strResult = encryptDecrypt(_encryptedText, key, EncryptMode.DECRYPT, iv);
		} catch (InvalidKeyException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (UnsupportedEncodingException e) {
			strResult = null;
		} catch (InvalidAlgorithmParameterException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (IllegalBlockSizeException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (BadPaddingException e) {
			strResult = null;
			LOGGER.severe("Loi trong qua trinh ma hoa "+ e);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return strResult;
	}

	/**
	 * this function generates random string for given length
	 *
	 * @param length
	 *            Desired length * @return
	 */
	public static String generateRandomIV(int length) {
		SecureRandom ranGen = new SecureRandom();
		byte[] aesKey = new byte[16];
		ranGen.nextBytes(aesKey);
		StringBuffer result = new StringBuffer();
		for (byte b : aesKey) {
			result.append(String.format("%02x", b)); // convert to hex
		}
		if (length > result.toString().length()) {
			return result.toString();
		} else {
			return result.toString().substring(0, length);
		}
	}

	public static void main(String[] args) throws Exception {
		try {
			
                    //String encoded = AES.encrypt("jdbc:mysql://localhost:3306/nmcnpm?useUnicode=true&characterEncoding=utf8");
                    String encoded = AES.encrypt("root");
                    String decoded = AES.decrypt(encoded);
                    System.out.println(encoded);
                    System.out.println(decoded);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}

