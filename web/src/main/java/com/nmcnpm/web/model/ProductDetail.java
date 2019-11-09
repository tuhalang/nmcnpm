package com.nmcnpm.web.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
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
