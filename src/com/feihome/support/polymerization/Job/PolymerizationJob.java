package com.feihome.support.polymerization.Job;

import java.util.Map;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Repository;

import com.feihome.support.polymerization.service.IPolymerization;
import com.feihome.support.utils.SpringContextUtil;

@Repository
public class PolymerizationJob {

	@Scheduled(cron = "0/30 * * * * ? ")
	public void polymerization() {
		System.out.println("test");

		Map<String, IPolymerization> beansByType = SpringContextUtil
				.getBeansByType(IPolymerization.class);

		for (String s : beansByType.keySet()) {
			beansByType.get(s).pullPolymerizationInfo();
		}

	}
}
