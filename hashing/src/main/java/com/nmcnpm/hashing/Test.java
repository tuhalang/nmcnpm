package com.nmcnpm.hashing;

public class Test {
    public static void main(String[] args) {

        Hashing hashing = new PasswordHashing(new MD5());
        hashing.getMethod().encrypt("");

    }
}
