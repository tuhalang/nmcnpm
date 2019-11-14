package com.nmcnpm.web.dao;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.mapprow.ProductDetailMapper;
import com.nmcnpm.web.mapprow.ProductMapper;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.model.ProductDetail;

import java.util.List;

public class ProductDetailDAO  extends DataBaseDaoImpl {
    public void insert(ProductDetail productDetail) {
        String sql = "insert into product_detail(product_detail_id, information, image1, image2, image3, image4, image5," +
                " accessories, guarantee, created_at, last_modified_at) value(?,?,?,?,?,?,?,?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        insert(sql, productDetail.getProductDetailID(), productDetail.getInformation(), productDetail.getImage1(), productDetail.getImage2(), productDetail.getImage3(),
                productDetail.getImage4(), productDetail.getImage5(), productDetail.getAccessories(), productDetail.getGuarantee());
    }

    public void update(ProductDetail productDetail) throws Exception {
        String sql = "update product_detail set  information=?, image1=?, image2=?, image3=?, image4=?, image5=?," +
                " accessories=?, guarantee=?, last_modified_at=CURRENT_TIMESTAMP() where product_detail_id=?";
        update(sql, productDetail.getInformation(), productDetail.getImage1(), productDetail.getImage2(), productDetail.getImage3(),
                productDetail.getImage4(), productDetail.getImage5(), productDetail.getAccessories(), productDetail.getGuarantee(), productDetail.getProductDetailID());
    }

    public void delete(ProductDetail productDetail) {
        String sql = "delete from product_detail where product_detail_id=?";
        delete(sql, productDetail.getProductDetailID());
    }

    public List<ProductDetail> findAll() {
        String sql = "select * from product_detail";
        List<ProductDetail> productDetail = query(sql, new ProductDetailMapper());
        return productDetail;
    }

    public List<ProductDetail> find(int start, int limit) {
        String sql = "select * from product_detail limit ?,?";
        List<ProductDetail> productDetail = query(sql,new ProductDetailMapper(), start, limit);
        return productDetail;
    }

    public List<ProductDetail> findByProductDetailID(long id) {
        String sql = "select * from product_detail where product_detail_id=?";
        List<ProductDetail> productDetail = query(sql, new ProductDetailMapper(),id);
        return productDetail;
    }
}
