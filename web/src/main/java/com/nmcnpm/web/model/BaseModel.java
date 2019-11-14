package com.nmcnpm.web.model;

import lombok.*;

import java.util.Date;

@Setter
@Getter
public abstract class BaseModel {
    private Date createdAt;
    private Date lastModifiedAt;

    public BaseModel() {
    }

    public BaseModel(Date createdAt, Date lastModifiedAt) {
        this.createdAt = createdAt;
        this.lastModifiedAt = lastModifiedAt;
    }

}
