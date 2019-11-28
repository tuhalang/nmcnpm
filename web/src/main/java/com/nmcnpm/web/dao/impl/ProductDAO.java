package com.nmcnpm.web.dao.impl;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.dao.IProductDAO;
import com.nmcnpm.web.mapprow.ProductMapper;
import com.nmcnpm.web.model.Product;

import java.util.List;

public class ProductDAO extends DataBaseDaoImpl<Product> implements IProductDAO {

    @Override
    public void insert(Product product) {
        String sql = "insert into product(name, price, description, category_id, image, thumb_image,"
                + " description_detail, product_detail_id, created_at, last_modified_at) value(?,?,?,?,?,?,?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        Long id = insert(sql, product.getName(), product.getPrice(), product.getDescription(), product.getCategoryID(),
                product.getImage(), product.getThumbImage(), product.getDescriptionDetail(), product.getProductDetailID());
        product.setProductID(id);
    }

    @Override
    public void update(Product product) {
        String sql = "update product set name=?,price =?, description=?, category_id=?, image=?, thumb_image=?,"
                + " description_detail=?, product_detail_id=?, last_modified_at=CURRENT_TIMESTAMP() where product_id=?";
        update(sql, product.getName(), product.getPrice(), product.getDescription(), product.getCategoryID(),
                product.getImage(), product.getThumbImage(), product.getDescriptionDetail(), product.getProductDetailID(), product.getProductID());

    }

    @Override
    public void delete(Product product) {
        String sql = "delete from product where product_id=? limit 1";
        delete(sql, product.getProductID());
    }

    @Override
    public List<Product> findAll() {
        String sql = "select * from product";
        List<Product> products = query(sql, new ProductMapper());
        return products;
    }

    @Override
    public Product findById(long id) {
        String sql = "select * from product where product_id=?";
        List<Product> products = query(sql, new ProductMapper(), id);
        if (products.isEmpty()) {
            return null;
        }
        return products.get(0);
    }

    @Override
    public List<Product> find(int start, int limit) {
        String sql = "select * from product limit ?,?";
        List<Product> products = query(sql, new ProductMapper(), start, limit);
        return products;
    }

    public List<Product> findByCategoryID(long id) {
        String sql = "select * from product where category_id=?";
        List<Product> products = query(sql, new ProductMapper(), id);
        return products;
    }

    @Override
    public List<Product> findByProductDetailID(long id) {
        String sql = "select * from product where product_detail_id=?";
        List<Product> products = query(sql, new ProductMapper(), id);
        return products;
    }

    @Override
    public Long count() {
        String sql = "select count(1) from product";
        return count(sql);
    }

    @Override
    public boolean isExist(Long productId) {
        String sql = "select count(1) from product where product_id=? limit 1";
        long count = count(sql, productId);
        if (count > 0) {
            return true;
        }
        return false;
    }
}
