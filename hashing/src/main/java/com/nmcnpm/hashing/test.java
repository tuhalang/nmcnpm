package com.nmcnpm.hashing;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class test {
    public static void main(String[] args) throws Exception {
        Hashing dataHashing = DataHashing.getInstance();
        String encoded = DataHashing.getInstance().getMethod().encrypt("jdbc:mysql://localhost:3306/nmcnpm");
        String decoded = DataHashing.getInstance().getMethod().decrypt(encoded);
        System.out.println(encoded);
        System.out.println(decoded);
    }
}
