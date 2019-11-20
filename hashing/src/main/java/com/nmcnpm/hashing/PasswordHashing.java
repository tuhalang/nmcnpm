package com.nmcnpm.hashing;

public class PasswordHashing extends Hashing {

    private static PasswordHashing passwordHashing;

    private PasswordHashing(IMethod method) {
        super(method);
        //Prevent form the reflection api.
        if (passwordHashing != null) {
            throw new RuntimeException("Use getInstance() method to get the single instance of this class.");
        }
    }

    public static PasswordHashing getInstance() {
        if (passwordHashing == null) {
            synchronized(PasswordHashing.class){
                if(passwordHashing == null){
                    passwordHashing = new PasswordHashing(SHA256.getInstance());
                    return passwordHashing;
                }
            }
        }
        return passwordHashing;
    }
}
