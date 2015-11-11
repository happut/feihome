package com.feihome.support.polymerization.Job;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Repository;

import com.feihome.logic.blog.BlogDao;
import com.feihome.model.TBlog;
import com.feihome.support.polymerization.service.IPolymerization;
import com.feihome.support.utils.SpringContextUtil;

@Repository
public class PolymerizationJob {

	@Autowired
	@Qualifier("blogDao")
	private BlogDao dao;

	@Scheduled(cron = "0/30 1 * * * ? ")
	public void polymerization() throws SQLException {
		System.out.println("test");

		Map<String, IPolymerization> beans = SpringContextUtil
				.getBeansByType(IPolymerization.class);

		for (String s : beans.keySet()) {
			beans.get(s).pullPolymerizationInfo();
		}
		// 返回单行记录，使用Map
		System.out.println("使用Map处理单行记录！");
		List<TBlog> map = dao.getRunner().query("select * from t_blog",
				new BeanListHandler<TBlog>(TBlog.class));
		System.out.println();

	}
}
