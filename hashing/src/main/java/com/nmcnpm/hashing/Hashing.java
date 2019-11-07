package com.nmcnpm.hashing;

public abstract class Hashing{
    private IMethod method;

    public Hashing(IMethod method){
        this.method = method;
    }

    public IMethod getMethod() {
        return method;
    }

    public void setMethod(IMethod method) {
        this.method = method;
    }
}
