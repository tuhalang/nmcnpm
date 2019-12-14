package com.nmcnpm.web.model;

import lombok.*;

import java.io.Serializable;
import java.util.Date;

@Setter
@Getter
public abstract class BaseModel implements Serializable {
    private Date createdAt;
    private Date lastModifiedAt;

    public BaseModel() {
    }

    public BaseModel(Date createdAt, Date lastModifiedAt) {
        this.createdAt = createdAt;
        this.lastModifiedAt = lastModifiedAt;
    }

}
