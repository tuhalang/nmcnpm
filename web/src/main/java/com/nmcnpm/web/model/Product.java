package com.nmcnpm.web.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
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

}
