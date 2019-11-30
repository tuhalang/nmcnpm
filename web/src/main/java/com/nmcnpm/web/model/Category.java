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
        private Long quantity;
    

	public Category(Long categoryID, String name, String image, Long quantity) {
		this.categoryID = categoryID;
		this.name = name;
		this.image = image;
                this.quantity = quantity;
	}

	public Category(Date createdAt, Date lastModifiedAt, Long categoryID, String name, String image, Long quantity) {
		super(createdAt, lastModifiedAt);
		this.categoryID = categoryID;
		this.name = name;
		this.image = image;
                this.quantity = quantity;
	}

	public Category(){
		this.categoryID = 1L;
		this.name = "";
		this.image = "";
                this.quantity = 0L;
	}
}
