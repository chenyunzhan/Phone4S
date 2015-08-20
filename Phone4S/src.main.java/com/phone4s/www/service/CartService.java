package com.phone4s.www.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.phone4s.www.model.CommunityCart;

public class CartService {
	
	public DriverManagerDataSource dataSource = null;

	
	public DriverManagerDataSource getDataSource() {
		return dataSource;
	}


	public void setDataSource(DriverManagerDataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<CommunityCart> getTopCommunityCarts() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(this.dataSource);
		
		StringBuffer sb = new StringBuffer();
		
		sb.append(" SELECT ");
		sb.append("    sum(a.number) total_number, ");
		sb.append("    c.community, ");
		sb.append("    sum(a.total_price) total_price, ");
		sb.append("    b.name goods_name, ");
		sb.append("    count(distinct a.user_id) total_user ");
		sb.append(" FROM ");
		sb.append("    t_phone4s_cart a ");
		sb.append("        LEFT JOIN ");
		sb.append("    t_phone4s_goods b ON a.goods_id = b.goods_id ");
		sb.append("        LEFT JOIN ");
		sb.append("    t_phone4s_user c ON a.user_id = c.user_id ");
		sb.append(" GROUP BY c.community; ");
		
		List<CommunityCart> results = jdbcTemplate.query(
				sb.toString(),
				new RowMapper<CommunityCart>() {
					@Override
					public CommunityCart mapRow(ResultSet rs, int rowNum) throws SQLException {
						return new CommunityCart(rs.getString("total_number"), rs.getString("community"), rs.getString("total_price"), rs.getString("goods_name"), rs.getString("total_user"));
					}
				});
		return results;
	}

}
