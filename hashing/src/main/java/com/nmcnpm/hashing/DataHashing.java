package com.nmcnpm.hashing;

public class DataHashing extends Hashing {

	private static DataHashing dataHashing;

	private DataHashing(IMethod method) {
		super(method);
	}

	public static DataHashing getInstance(){
		if(dataHashing==null){
			dataHashing = new DataHashing(RSA.getInstance());
			return dataHashing;
		}
		return dataHashing;
	}
}
