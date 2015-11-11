package com.feihome.support.time;

import java.sql.Connection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

import org.apache.commons.dbutils.QueryRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.feihome.logic.blog.BlogDao;
import com.feihome.logic.blog.BlogService;
import com.feihome.model.TUser;

@Repository
public class UserEntireJob {
	
	@Autowired
	@Qualifier("blogService")
	private BlogService blogService;
	
	private void refreshCache() {
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
	}
}
