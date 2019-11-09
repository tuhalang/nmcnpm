package com.nmcnpm.web.model;

import lombok.Data;

import java.util.Date;

@Data
public abstract class BaseModel {
    private Date createdAt;
    private Date lastModifiedAt;
}
