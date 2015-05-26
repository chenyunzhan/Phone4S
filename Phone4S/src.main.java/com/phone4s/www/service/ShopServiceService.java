package com.phone4s.www.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.phone4s.www.model.RepairBussiness;
import com.phone4s.www.model.ShopService;

public class ShopServiceService {
	public DriverManagerDataSource dataSource = null;

	
	public DriverManagerDataSource getDataSource() {
		return dataSource;
	}


	public void setDataSource(DriverManagerDataSource dataSource) {
		this.dataSource = dataSource;
	}


	public List<ShopService> getShopSerivceByBussinessId(String bussinessId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(this.dataSource);
		List<ShopService> results = jdbcTemplate.query(
				"select * from t_phone4s_shop_service where bussiness_id = " + bussinessId,
				new RowMapper<ShopService>() {
					@Override
					public ShopService mapRow(ResultSet rs, int rowNum) throws SQLException {
						return new ShopService(rs.getInt("id"), rs.getInt("bussiness_id"), rs.getString("content"), rs.getString("service_image"), rs.getString("money"), rs.getString("trading_volume"), null, null);
					}
				});
		return results;
	}
}
