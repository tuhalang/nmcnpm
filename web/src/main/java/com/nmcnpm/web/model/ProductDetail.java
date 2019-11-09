package com.nmcnpm.web.model;

import lombok.Data;

@Data
public class ProductDetail extends BaseModel{
	private Long productID;
	private String information;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private String image5;
	private String accessories;
	private String guarantee;
}
