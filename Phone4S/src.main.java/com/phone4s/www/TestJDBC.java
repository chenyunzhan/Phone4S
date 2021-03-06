package com.phone4s.www;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class TestJDBC {
	///
	public DriverManagerDataSource dataSource = null;

	
	public DriverManagerDataSource getDataSource() {
		return dataSource;
	}


	public void setDataSource(DriverManagerDataSource dataSource) {
		this.dataSource = dataSource;
	}

	
	
	public String testJDBC() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(this.dataSource);
		
		
		String[] names = "John Woo;Jeff Dean;Josh Bloch;Josh Long".split(";");
		for (String fullname : names) {
			String[] name = fullname.split(" ");
			System.out.printf("Inserting customer record for %s %s\n", name[0], name[1]);
			jdbcTemplate.update(
					"INSERT INTO customers(first_name,last_name) values(?,?)",
					name[0], name[1]);
		}
		
		System.out.println("Querying for customer records where first_name = 'Josh':");
		List<Customer> results = jdbcTemplate.query(
				"select * from customers where first_name = ?", new Object[] { "Josh" },
				new RowMapper<Customer>() {
					@Override
					public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
						return new Customer(rs.getLong("id"), rs.getString("first_name"),
								rs.getString("last_name"));
					}
				});
		
		for (Customer customer : results) {
			System.out.println(customer);
		}
		
		return null;
	}


}
