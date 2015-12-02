package com.feihome.platform.gasoline.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Repository;

import com.feihome.dao.BaseDao;
import com.feihome.model.TGasoline;

@Repository
public class GasolineDao extends BaseDao {

	public List<TGasoline> getGasolineRecords() {
		try {
			return getRunner().query("select * from TGasoline order by bdrq asc",
					new BeanListHandler<TGasoline>(TGasoline.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
