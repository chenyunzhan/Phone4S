package com.phone4s.www.service;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.phone4s.www.model.Customer;

public class CustomerService {
	
	public DriverManagerDataSource dataSource = null;

	
	public DriverManagerDataSource getDataSource() {
		return dataSource;
	}


	public void setDataSource(DriverManagerDataSource dataSource) {
		this.dataSource = dataSource;
	}


	public boolean saveCustomer(Customer customer) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(this.dataSource);
		jdbcTemplate.update("INSERT INTO CUSTOMER(CUSTOMER_EMAIL,CUSTOMER_NIKENAME,CUSTOMER_PASSWORD) values(?,?,?)",
                  customer.getCustomerEmail(), customer.getCustomerNikeName(), customer.getCustomerPassword());
		return true;
	}

}
