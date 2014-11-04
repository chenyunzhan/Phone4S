package com.phone4s.www.service;

import javax.mail.MessagingException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.phone4s.www.model.Customer;
import com.phone4s.www.utils.MailManager;

public class CustomerService {
	
	public DriverManagerDataSource dataSource = null;

	
	public DriverManagerDataSource getDataSource() {
		return dataSource;
	}


	public void setDataSource(DriverManagerDataSource dataSource) {
		this.dataSource = dataSource;
	}


	public boolean registerCustomer(Customer customer, String randomCodeKey, String basePath) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(this.dataSource);
		jdbcTemplate.update("INSERT INTO CUSTOMER(CUSTOMER_EMAIL,CUSTOMER_NIKENAME,CUSTOMER_PASSWORD) values(?,?,?)",
                  customer.getCustomerEmail(), customer.getCustomerNikeName(), customer.getCustomerPassword());
		
		MailManager mainManger=new MailManager();
		try {
			mainManger.sendVerify(customer.getCustomerEmail(),randomCodeKey, basePath);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return true;
	}
	
	public boolean saveCustomer(Customer customer) {
		return false;
	}


	public boolean customerVerifyEmail(String emailValidateCode,
			String sessionValidateCode, String customerEmail) {
		if(emailValidateCode.endsWith(sessionValidateCode)){
			JdbcTemplate jdbcTemplate = new JdbcTemplate(this.dataSource);
			jdbcTemplate.update("update customer set CUSTOMER_STATUS = 1 where CUSTOMER_EMAIL = '" + customerEmail + "'");
			return true;
		}
		return false;
	}

}
