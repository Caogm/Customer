package cn.customer.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.customer.domain.Customer;
import cn.customer.utils.DataSourceUtils;

public class CustomerDao {
	// 查询所有客户的数据
	public List<Customer> findAll() throws SQLException {
		String sql = "select * from customer";

		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		return runner.query(sql, new BeanListHandler<Customer>(Customer.class));
	}

}
