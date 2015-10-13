package com.feihome.logic.code;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.feihome.model.TCodepushRecord;

@Repository
public class CodeService {
	
	@Autowired
	@Qualifier("codeDao")
	private CodeDao dao;
	
	public boolean createPushRecord(TCodepushRecord r) {
		return dao.createPushRecord(r);
	}
}
