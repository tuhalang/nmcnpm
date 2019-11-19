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
        private Long quantity;
        private boolean status;


	public Product(Long productID, String name, float price, String description, Long categoryID, String image, String thumbImage, String descriptionDetail, Long productDetailID, Long quantity, boolean status) {
		this.productID = productID;
		this.name = name;
		this.price = price;
		this.description = description;

		this.categoryID = categoryID;
		this.image = image;
		this.thumbImage = thumbImage;

		this.productDetailID = productDetailID;
                this.quantity = quantity;
                this.status = status;
	}

	public Product(Date createdAt, Date lastModifiedAt, Long productID, String name, float price, String description, Long categoryID, String image, String thumbImage, String descriptionDetail, Long productDetailID, Long quantity, boolean status) {
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
                this.quantity = quantity;
                this.status = status;
	}

	public Product(){
		this.productID = 1L;
		this.name = "";
		this.price = 0;
		this.description = "";
		this.categoryID = 1L;
		this.image = "";
		this.thumbImage = "";
		this.descriptionDetail = "";
		this.productDetailID = 1L;
                this.quantity = 0L;
                this.status = false;
	}
}
