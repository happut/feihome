package com.feihome.logic.code;

import org.springframework.stereotype.Repository;

import com.feihome.dao.BaseDao;
import com.feihome.model.TCodepushRecord;

@Repository
public class CodeDao extends BaseDao{
	
	public boolean createPushRecord(TCodepushRecord r){
		int rows = getJdbcTemplate()
				.update("insert into t_codepush_record(C_PUSH_ID,C_COMMITTER_EMAIL,C_COMMITTER_NAME,C_COMMITTER_SHA,C_COMMITTER_MSG,ref,DT_CREATETIME) VALUE(?,?,?,?,?,?,?)",
						r.getCPushId(), r.getCCommitterEmail(),
						r.getCCommitterName(), r.getCCommitterSha(),
						r.getCCommitterMsg(), r.getDtCreatetime());
		return rows > 0;	
	}
}
