package com.nmcnpm.web.model;

import lombok.*;

import java.util.Date;

@Setter
@Getter
public class Product extends BaseModel{
	private Long productID;
	private String name;
	private float price;
	private String description;
	private Long categoryID;
	private String image;
	private String thumbImage;
	private String descriptionDetail;
	private Long productDetailID;

	public Product(Long productID, String name, float price, String description, Long categoryID, String image, String thumbImage, String descriptionDetail, Long productDetailID) {
		this.productID = productID;
		this.name = name;
		this.price = price;
		this.description = description;
		this.categoryID = categoryID;
		this.image = image;
		this.thumbImage = thumbImage;
		this.descriptionDetail = descriptionDetail;
		this.productDetailID = productDetailID;
	}

	public Product(Date createdAt, Date lastModifiedAt, Long productID, String name, float price, String description, Long categoryID, String image, String thumbImage, String descriptionDetail, Long productDetailID) {
		super(createdAt, lastModifiedAt);
		this.productID = productID;
		this.name = name;
		this.price = price;
		this.description = description;
		this.categoryID = categoryID;
		this.image = image;
		this.thumbImage = thumbImage;
		this.descriptionDetail = descriptionDetail;
		this.productDetailID = productDetailID;
	}

	public Product(){}
}
