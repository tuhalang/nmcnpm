package com.nmcnpm.web.model;

import lombok.*;

import java.util.Date;

<<<<<<< HEAD
@Data
@Getter
@Setter
@NoArgsConstructor
=======
@Setter
@Getter
>>>>>>> databaseDao
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

<<<<<<< HEAD
	public Product(Long productID, String name, float price, String description, Date lastUpdate, Long categoryID, String image, String thumbImage, String descriptionDetail) {
=======
	public Product(Long productID, String name, float price, String description, Long categoryID, String image, String thumbImage, String descriptionDetail, Long productDetailID) {
>>>>>>> databaseDao
		this.productID = productID;
		this.name = name;
		this.price = price;
		this.description = description;
<<<<<<< HEAD
		this.lastUpdate = lastUpdate;
=======
>>>>>>> databaseDao
		this.categoryID = categoryID;
		this.image = image;
		this.thumbImage = thumbImage;
		this.descriptionDetail = descriptionDetail;
<<<<<<< HEAD
=======
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
>>>>>>> databaseDao
	}
}
