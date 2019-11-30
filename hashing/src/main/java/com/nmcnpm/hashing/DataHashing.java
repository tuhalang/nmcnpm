package com.nmcnpm.hashing;

public class DataHashing extends Hashing {

    private static DataHashing dataHashing;

    private DataHashing(IMethod method) {
        super(method);
        //Prevent form the reflection api.
        if (dataHashing != null) {
            throw new RuntimeException("Use getInstance() method to get the single instance of this class.");
        }
    }

    public static DataHashing getInstance() {
        if (dataHashing == null) {
            synchronized(DataHashing.class){
                if(dataHashing == null){
                    dataHashing = new DataHashing(RSA.getInstance());
                return dataHashing;
                }
            }
        }
        return dataHashing;
    }
}
