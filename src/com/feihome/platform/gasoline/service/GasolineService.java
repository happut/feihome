package com.feihome.platform.gasoline.service;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.alibaba.fastjson.JSONObject;
import com.feihome.model.TGasoline;
import com.feihome.platform.gasoline.dao.GasolineDao;

@Repository
public class GasolineService {

	@Autowired
	@Qualifier("gasolineDao")
	private GasolineDao gasolineDao;

	public JSONObject getChartData() {
		List<TGasoline> gasolines = gasolineDao.getGasolineRecords();
		Set<String> gasolinesXArray = new LinkedHashSet<String>(); 
		List<Float> gasoline95dataArray = new ArrayList<Float>();
		List<Float> gasoline92dataArray = new ArrayList<Float>();
		JSONObject result = new JSONObject();
		for(TGasoline t : gasolines){
			gasolinesXArray.add(t.getBdrq().toString());
			
			if(t.getType().equals(95)){
				gasoline95dataArray.add(t.getPrice());
			}
			if(t.getType().equals(92)){
				gasoline92dataArray.add(t.getPrice());
			}
		}
		result.put("xAxisData", gasolinesXArray);
		result.put("gasoline95data", gasoline95dataArray);
		result.put("gasoline92data", gasoline92dataArray);
		return result;
	}
}
