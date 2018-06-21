package cn.customer.service;

import java.sql.SQLException;
import java.util.List;

import cn.customer.dao.CustomerDao;
import cn.customer.domain.Customer;

public class CustomerService {
	private CustomerDao dao = new CustomerDao();

	// 查询所有客户信息操作
	public List<Customer> findAll() throws SQLException {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

}
