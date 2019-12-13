package com.nmcnpm.hashing;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class test {
    public static void main(String[] args) throws Exception {
        Hashing dataHashing = DataHashing.getInstance();
        //String encoded = DataHashing.getInstance().getMethod().encrypt("jdbc:mysql://localhost:3306/nmcnpm?useUnicode=true&characterEncoding=utf8");
        String encoded = DataHashing.getInstance().getMethod().encrypt("root");
        //String decoded = DataHashing.getInstance().getMethod().decrypt("ZvpSK7kV3oOFYHgKKM7vMyufDQjkdNV+nMufB1WIXh2ykjx/EVqGqldusgiXgzmnBophJl/d8n/Pc+KSqEsgQLGX6JNUNoAdJdgKTeA93yjIWhzo5vkBGwYubOQCE2KxahHcLOUl6GRUXe8UAEWRLMrr5ghZjLhVciPi+Qhh0cFmHoq6Sg7/Ep25UTYcIXZQwhUDUNknzBb+28KEu+9o6DbTOsDJLKeUyj2LAtC64RE3QFnHzcjRcD3CyykmrGPUmqsGGVmXPdQfVy4LD2g4u5Uy1bPglprzQ/BvEGj34fRcxqzY+qfth9tYi8mhVPrqpwN09R9TuJZ3JsiBW3YpgA==");
        String decoded = DataHashing.getInstance().getMethod().decrypt(encoded);
        System.out.println(encoded);
        System.out.println(decoded);
    }
}
