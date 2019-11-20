package com.nmcnpm.hashing;

public interface IMethod {
    String encrypt(String plainText);
    String decrypt(String encodedText) throws Exception;
}
