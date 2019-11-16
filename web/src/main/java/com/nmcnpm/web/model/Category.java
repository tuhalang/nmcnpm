package com.nmcnpm.web.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.util.Date;

@Data
public class Category extends BaseModel{
	private Long categoryID;
	private String name;
	private String image;

	public Category(Long categoryID, String name, String image) {
		this.categoryID = categoryID;
		this.name = name;
		this.image = image;
	}

	public Category(Date createdAt, Date lastModifiedAt, Long categoryID, String name, String image) {
		super(createdAt, lastModifiedAt);
		this.categoryID = categoryID;
		this.name = name;
		this.image = image;
	}

	public Category(){
		this.categoryID = 1L;
		this.name = "";
		this.image = "";
	}
}
