package com.nmcnpm.web.model;

public class ItemCart {
	private Product product;
	private Long quantity;

	public ItemCart(Product product, Long quantity) {
		super();
		this.product = product;
		this.quantity = quantity;
	}

	public ItemCart() {
		quantity = 1L;
	}

	public ItemCart(Product product) {
		this.product = product;
		quantity = 1L;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public void increment() {
		quantity++;
	}

	public void decrement() {
		quantity--;
	}

	public float getTotal() {
		return product.getPrice() * quantity;
	}

}