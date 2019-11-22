package com.nmcnpm.web.dao.impl;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.dao.IProductDAO;
import com.nmcnpm.web.mapprow.OrderedProductMapper;
import com.nmcnpm.web.mapprow.ProductMapper;
import com.nmcnpm.web.model.OrderedProduct;
import com.nmcnpm.web.model.Product;

import java.util.List;

public class ProductDAO extends DataBaseDaoImpl<Product> implements IProductDAO{
    public void insert(Product product) {
        String sql = "insert into product(name, price, description, category_id, image, thumb_image," +
                " description_detail, product_detail_id, created_at, last_modified_at) value(?,?,?,?,?,?,?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        Long id = insert(sql, product.getName(), product.getPrice(), product.getDescription(), product.getCategoryID(),
                product.getImage(), product.getThumbImage(), product.getDescriptionDetail(), product.getProductDetailID());
        product.setProductID(id);
    }

    public void update(Product product) {
        String sql = "update product set name=?,price =?, description=?, category_id=?, image=?, thumb_image=?," +
                " description_detail=?, product_detail_id=?, last_modified_at=CURRENT_TIMESTAMP() where product_id=?";
        try {
            update(sql, product.getName(), product.getPrice(), product.getDescription(), product.getCategoryID(),
                    product.getImage(), product.getThumbImage(), product.getDescriptionDetail(), product.getProductDetailID(), product.getProductID());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void delete(Product product) {
        String sql = "delete from product where product_id=? limit 1";
        delete(sql, product.getProductID());
    }

    public List<Product> findAll() {
        String sql = "select * from product";
        List<Product> products = query(sql, new ProductMapper());
        return products;
    }

    public Product findById(long id) {
        String sql = "select * from product where product_id=?";
        List<Product> products = query(sql,new ProductMapper(), id);
        if(products.isEmpty())
            return null;
        return products.get(0);
    }

    public List<Product> find(int start, int limit) {
        String sql = "select * from product limit ?,?";
        List<Product> products = query(sql,new ProductMapper(), start, limit);
        return products;
    }

    public List<Product> findByCategoryID(long id) {
        String sql = "select * from product where category_id=?";
        List<Product> products = query(sql, new ProductMapper(),id);
        return products;
    }
    public List<Product> findByCategory(int id,int offset,int elePerPage) {
        String sql = "select * from product where category_id=? limit ?,?";
        List<Product> products = query(sql, new ProductMapper(),id,offset,elePerPage);
        return products;
    }
    public List<Product> findByProductDetailID(long id) {
        String sql = "select * from product where product_detail_id=?";
        List<Product> products = query(sql, new ProductMapper(),id);
        return products;
    }
    public List<Product> findByProductKey(String key) {
        String sql = "select * from product where name like '%"+key+"%' limit 10";
        List<Product> products = query(sql, new ProductMapper());
        return products;
    }
    public Long count(){
        String sql = "select count(1) from product";
        return count(sql);
    }
    public Long countByCategoryId(long id){
        String sql = "select count(1) from product where category_id=?";
        return count(sql,id);
    }
}
