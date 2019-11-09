package com.nmcnpm.web.model;

import lombok.Data;

@Data
public class Category extends BaseModel{
	private Long categoryID;
	private String name;
	private String image;
}
