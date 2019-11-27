package com.nmcnpm.web.model;

import java.util.ArrayList;import com.mysql.cj.jdbc.result.CachedResultSetMetaDataImpl;

public class ShoppingItems {
	 Float amount;
	Long numberOfItems;
  ArrayList<ItemCart> items;

	public ShoppingItems(ArrayList<ItemCart> items) {
		super();
		this.items = items;
	}

	public ShoppingItems() {
		items=new ArrayList<>();
	}

	public synchronized void addItem(Product product) {
		boolean newItem = true;
		for (ItemCart item : items) {
			System.out.println("buy"+item.getProduct().getProductID());
			if (item.getProduct().getProductID()==product.getProductID()) {
				newItem = false;
				item.increment();
				break;
			}
		}
		if (newItem) {
			ItemCart item = new ItemCart(product, 1L);
			items.add(item);
		}
	}

	public synchronized void update(Long productid, String quantity) {
		Long qty = 0L;
		qty = Long.parseLong(quantity);

		for (ItemCart item : items) {
			if (item.getProduct().getProductID() == productid) {
				if (qty > 0) {
					item.setQuantity(qty);
				} else {
					item.setQuantity(1L);
				}
				break;
			}

		}
	}

	public synchronized void update(Long productid, Long quantity) {

		for (ItemCart item : items) {
			if (item.getProduct().getProductID() == productid) {
				if (quantity > 0) {
					item.setQuantity(quantity);
				} else {
					item.setQuantity(1L);
				}
				break;
			}

		}
	}

	public synchronized void remove(Long productid) {

		for (ItemCart item : items) {
			if (item.getProduct().getProductID() == productid) {
				items.remove(item);
				break;
			}

		}
	}

	public synchronized ArrayList<ItemCart> getItems() {
		return items;
	}

	public synchronized Long getNumberOfItems() {
		numberOfItems = 0L;
		for (ItemCart item : items) {
			numberOfItems += item.getQuantity();
		}
		return numberOfItems;
	}

	public synchronized void calculateAmount() {
		amount = 0F;
		for (ItemCart item : items) {
			amount += item.getQuantity() * item.getProduct().getPrice();
		}

	}

	public synchronized void changeAmount(String subamount) {
		Float sub = 0F;
		sub = Float.parseFloat(subamount);
		amount += sub;
	}

	public synchronized Float getAmount() {
		return amount;
	}

	public synchronized void clear() {
		items.clear();
		amount = 0F;
		numberOfItems = 0L;
	}
	
}
