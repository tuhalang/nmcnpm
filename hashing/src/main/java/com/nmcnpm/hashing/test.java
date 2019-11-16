package com.nmcnpm.hashing;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class test {
    public static void main(String[] args) throws Exception {
        System.out.println(DataHashing.getInstance().getMethod().encrypt("jdbc:mysql://localhost:3306/nmcnpm"));
        System.out.println(DataHashing.getInstance().getMethod().decrypt("SDbD+JW025uUpbYFcDeZbwmxZvMSF7WgINzsSqwEzGnkswFuS8ZgekZn+Q0GIjQL"));
    }
}
