package com.phone4s.www.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.phone4s.www.model.GoodsPhone;

public class GoodsPhoneService {
	
	public DriverManagerDataSource dataSource = null;

	
	public DriverManagerDataSource getDataSource() {
		return dataSource;
	}


	public void setDataSource(DriverManagerDataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<GoodsPhone> getGoodsPhone() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(this.dataSource);
		List<GoodsPhone> results = jdbcTemplate.query(
				"select * from GOODS_PHONE",
				new RowMapper<GoodsPhone>() {
					@Override
					public GoodsPhone mapRow(ResultSet rs, int rowNum) throws SQLException {
						return new GoodsPhone(rs.getInt("GOODS_PHONE_ID"), rs.getString("GOODS_PHONE_NAME"), null, rs.getString("GOODS_PHONE_SUMMARY"), rs.getString("GOODS_PHONE_PHOTO"), null, null, null, null, null, null, null, null, null);
					}
				});
		return results;
	}

}
