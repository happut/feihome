package com.feihome.support.time;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.feihome.model.TUser;
import com.feihome.service.CommonService;

@Component
public class UserEntireJob {
	
	@Autowired
	@Qualifier("commonService")
	private CommonService commonService;
	
	@Scheduled(cron="0/30 * *  * * ? ")   //每5秒执行一次  
	private void refreshCache() {
		Cache cache = CacheManager.getInstance().getCache("userEntire");
		if(commonService == null){
			return;
		}
		List<TUser> users = commonService.getAllUserInfo();
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
