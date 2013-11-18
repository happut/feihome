package com.feihome.support.time;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.feihome.dao.BaseDao;
import com.feihome.model.TUser;

public class UserEntireJob extends QuartzJobBean {
	@Autowired
	@Qualifier("baseDao")
	private BaseDao dao;
	
    @Override
    protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
    	refreshCache();
    }

	private void refreshCache() {
		Cache cache = CacheManager.getInstance().getCache("userEntire");
		if(dao == null){
			System.out.println("dao == null了");
			return;
		}
		List<TUser> users = dao.getAllUserInfo();
		Iterator<TUser> it = users.iterator();
		Map<Integer,TUser> userMap = new HashMap<Integer,TUser>();
		while(it.hasNext()){
			TUser user = it.next();
			userMap.put(user.getNId(), user);
		}
		Element userMapEle = new Element("userMap", userMap);
		cache.put(userMapEle);
	}
}
