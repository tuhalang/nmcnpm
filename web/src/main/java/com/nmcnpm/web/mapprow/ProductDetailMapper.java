package com.nmcnpm.web.mapprow;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;
import com.nmcnpm.web.model.ProductDetail;

public class ProductDetailMapper implements IRowMapper<ProductDetail>{

	@Override
	public ProductDetail mapRow(ResultSet result) {
		try {
			ProductDetail productDetail = new ProductDetail();
			productDetail.setProductID(result.getLong("product_id"));
			productDetail.setInformation(result.getString("information"));
			productDetail.setImage1(result.getString("image1"));
			productDetail.setImage2(result.getString("image2"));
			productDetail.setImage3(result.getString("image3"));
			productDetail.setImage4(result.getString("image4"));
			productDetail.setImage5(result.getString("image5"));
			productDetail.setAccessories(result.getString("accessories"));
			productDetail.setGuarantee(result.getString("guarantee"));
			productDetail.setCreatedAt(result.getDate("created_at"));
			productDetail.setLastModifiedAt(result.getDate("last_modified_at"));
			return productDetail;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
