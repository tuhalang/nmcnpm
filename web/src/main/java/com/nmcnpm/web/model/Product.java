package com.nmcnpm.web.model;

import lombok.Data;

import java.util.Date;

@Data
public class Product extends BaseModel{
	private Long productID;
	private String name;
	private float price;
	private String description;
	private Date lastUpdate;
	private Long categoryID;
	private String image;
	private String thumbImage;
	private String descriptionDetail;

}
