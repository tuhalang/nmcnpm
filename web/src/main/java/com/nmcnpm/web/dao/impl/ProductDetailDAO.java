package com.nmcnpm.web.dao.impl;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.dao.IProductDetailDAO;
import com.nmcnpm.web.mapprow.ProductDetailMapper;
import com.nmcnpm.web.model.ProductDetail;

import java.util.List;

public class ProductDetailDAO extends DataBaseDaoImpl<ProductDetail> implements IProductDetailDAO {

    public void insert(ProductDetail productDetail) {
        String sql = "insert into product_detail( information, image1, image2, image3, image4, image5,"
                + " accessories, guarantee, created_at, last_modified_at) value(?,?,?,?,?,?,?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        Long id = insert(sql, productDetail.getInformation(), productDetail.getImage1(), productDetail.getImage2(), productDetail.getImage3(),
                productDetail.getImage4(), productDetail.getImage5(), productDetail.getAccessories(), productDetail.getGuarantee());
        productDetail.setProductDetailID(id);
    }

    public void update(ProductDetail productDetail) {
        String sql = "update product_detail set  information=?, image1=?, image2=?, image3=?, image4=?, image5=?,"
                + " accessories=?, guarantee=?, last_modified_at=CURRENT_TIMESTAMP() where product_detail_id=?";
        update(sql, productDetail.getInformation(), productDetail.getImage1(), productDetail.getImage2(), productDetail.getImage3(),
                productDetail.getImage4(), productDetail.getImage5(), productDetail.getAccessories(), productDetail.getGuarantee(), productDetail.getProductDetailID());
    }

    public void delete(ProductDetail productDetail) {
        String sql = "delete from product_detail where product_detail_id=? limit 1";
        delete(sql, productDetail.getProductDetailID());
    }

    public List<ProductDetail> findAll() {
        String sql = "select * from product_detail";
        List<ProductDetail> productDetail = query(sql, new ProductDetailMapper());
        return productDetail;
    }

    public List<ProductDetail> find(int start, int limit) {
        String sql = "select * from product_detail limit ?,?";
        List<ProductDetail> productDetail = query(sql, new ProductDetailMapper(), start, limit);
        return productDetail;
    }

    public ProductDetail findByProductDetailID(long id) {
        String sql = "select * from product_detail where product_detail_id=?";
        List<ProductDetail> productDetail = query(sql, new ProductDetailMapper(), id);
        if (productDetail == null || productDetail.isEmpty()) {
            return null;
        }
        return productDetail.get(0);
    }

    @Override
    public boolean isExist(Long productDetailId) {
        String sql = "select count(1) from product_detail where product_detail_id=? limit 1";
        long count = count(sql, productDetailId);
        if (count > 0) {
            return true;
        }
        return false;
    }
}
