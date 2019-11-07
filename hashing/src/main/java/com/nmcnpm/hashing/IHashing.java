package com.nmcnpm.hashing;

public interface IHashing {
	public String encodeSHA256(String str);
	public boolean compareSHA256(String str1,String str2);
	public String encodeMD5(String str);
	public boolean compareMD5(String str1,String str2);
}
