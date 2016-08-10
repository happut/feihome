package com.feihome.support.time;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.impl.SLF4JLogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Repository;

import com.feihome.logic.blog.BlogService;
import com.feihome.model.TUser;

@Repository
public class UserEntireJob {
	
	@Autowired
	@Qualifier("blogService")
	private BlogService blogService;
	
	Log log = SLF4JLogFactory.getLog(getClass());
	
	@Scheduled(cron = "0/30 1 * * * ? ")
	private void refreshCache() {
	    log.info("开始刷新UserEntireJob缓存");
		Cache cache = CacheManager.getInstance().getCache("userEntire");
		if(blogService == null){
			return;
		}
		List<TUser> users = blogService.getAllUserInfo();
		Iterator<TUser> it = users.iterator();
		
		Map<Integer,TUser> userMap = new HashMap<Integer,TUser>();
		while(it.hasNext()){
			TUser user = it.next();
			userMap.put(user.getNId(), user);
		}
		
		Element userMapEle = new Element("userMap", userMap);
		cache.put(userMapEle);
		log.info("结束刷新UserEntireJob缓存");
	}
}
