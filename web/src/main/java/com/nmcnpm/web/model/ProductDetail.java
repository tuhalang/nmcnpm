package com.nmcnpm.web.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.util.Date;

@Data
public class ProductDetail extends BaseModel{
	private Long productDetailID;
	private String information;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private String image5;
	private String accessories;
	private String guarantee;

	public ProductDetail(Long productDetailID, String information, String image1, String image2, String image3, String image4, String image5, String accessories, String guarantee) {
		this.productDetailID = productDetailID;
		this.information = information;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.image5 = image5;
		this.accessories = accessories;
		this.guarantee = guarantee;
	}

	public ProductDetail(Date createdAt, Date lastModifiedAt, Long productDetailID, String information, String image1, String image2, String image3, String image4, String image5, String accessories, String guarantee) {
		super(createdAt, lastModifiedAt);
		this.productDetailID = productDetailID;
		this.information = information;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.image5 = image5;
		this.accessories = accessories;
		this.guarantee = guarantee;
	}

	public ProductDetail(){
		this.productDetailID = 1L;
		this.information = "";
		this.image1 = "";
		this.image2 = "";
		this.image3 = "";
		this.image4 = "";
		this.image5 = "";
		this.accessories = "";
		this.guarantee = "";
	}

	public void setProductID(long product_id) {
	}
}
