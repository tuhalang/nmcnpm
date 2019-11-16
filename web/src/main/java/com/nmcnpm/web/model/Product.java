package com.nmcnpm.web.model;

import lombok.*;

import java.util.Date;

@Data
@Getter
@Setter
@NoArgsConstructor
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

	public Product(Long productID, String name, float price, String description, Date lastUpdate, Long categoryID, String image, String thumbImage, String descriptionDetail) {
		this.productID = productID;
		this.name = name;
		this.price = price;
		this.description = description;
		this.lastUpdate = lastUpdate;
		this.categoryID = categoryID;
		this.image = image;
		this.thumbImage = thumbImage;
		this.descriptionDetail = descriptionDetail;
	}
}
