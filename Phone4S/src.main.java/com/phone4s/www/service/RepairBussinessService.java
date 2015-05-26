package com.phone4s.www.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.phone4s.www.model.RepairBussiness;

public class RepairBussinessService {
	
	public DriverManagerDataSource dataSource = null;

	
	public DriverManagerDataSource getDataSource() {
		return dataSource;
	}


	public void setDataSource(DriverManagerDataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<RepairBussiness> getTopRepairBussiness() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(this.dataSource);
		List<RepairBussiness> results = jdbcTemplate.query(
				"select * from t_phone4s_repair_bussiness",
				new RowMapper<RepairBussiness>() {
					@Override
					public RepairBussiness mapRow(ResultSet rs, int rowNum) throws SQLException {
						return new RepairBussiness(rs.getInt("id"), rs.getString("name"), rs.getString("description"), rs.getString("logo"), rs.getString("spread_image"), rs.getString("credit"), null, null,rs.getString("longitude"),rs.getString("latitude"));
					}
				});
		return results;
	}

}
