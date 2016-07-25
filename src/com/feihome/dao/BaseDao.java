package com.feihome.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;

public class BaseDao{

	private JdbcTemplate jdbcTemplate;
	/**
	 * Set the JDBC DataSource to be used by this DAO.
	 */
	@Autowired
	public void setDataSource(@Qualifier("dataSource")DataSource dataSource) {
		if (this.jdbcTemplate == null || dataSource != this.jdbcTemplate.getDataSource()) {
			this.jdbcTemplate = new JdbcTemplate(dataSource);
		}
	}
	
	/**
	 * Return the JdbcTemplate for this DAO,
	 * pre-initialized with the DataSource or set explicitly.
	 */
	public JdbcTemplate getJdbcTemplate() {
	  return this.jdbcTemplate;
	}
}
