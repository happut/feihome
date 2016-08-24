package com.feihome.support.polymerization.Job;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Repository;

import com.feihome.dao.Test;
import com.feihome.logic.blog.dao.impl.BlogDao;
import com.feihome.model.TPolymerizationElement;
import com.feihome.support.polymerization.dao.impl.PolymerizationDao;
import com.feihome.support.polymerization.service.IPolymerization;
import com.feihome.support.utils.SpringContextUtil;

@Repository
public class PolymerizationJob {

	@Autowired
	@Qualifier("blogDao")
	private BlogDao dao;

	@Autowired
	@Qualifier("polymerizationDao")
	private PolymerizationDao polymerizationDao;

	@Scheduled(cron = "0 0/2 * * * ? ")
	public void polymerization() throws SQLException {
		Map<String, IPolymerization> beans = SpringContextUtil
				.getBeansByType(IPolymerization.class);

		for (String s : beans.keySet()) {
			List<TPolymerizationElement> elements = beans.get(s)
					.pullPolymerizationInfo();
			polymerizationDao.createPolymerizationelements(elements);
		}
	}
}
