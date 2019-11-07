package src.main.java.com.nmcnpm.web.model;

import java.util.Date;

public class Product {
	private Long productID;
	private String name;
	private float price;
	private String description;
	private Date lastUpdate;
	private Long categoryID;
	private String image;
	private String thumbImage;
	private String desciptionDetail;
	public Long getProductID() {
		return productID;
	}
	public void setProductID(Long productID) {
		this.productID = productID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getLastUpdate() {
		return lastUpdate;
	}
	public void setLastUpdate(Date lastUpdate) {
		this.lastUpdate = lastUpdate;
	}
	public Long getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(Long categoryID) {
		this.categoryID = categoryID;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getThumbImage() {
		return thumbImage;
	}
	public void setThumbImage(String thumbImage) {
		this.thumbImage = thumbImage;
	}
	public String getDesciptionDetail() {
		return desciptionDetail;
	}
	public void setDesciptionDetail(String desciptionDetail) {
		this.desciptionDetail = desciptionDetail;
	}
	
}
