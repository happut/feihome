package com.feihome.logic.code;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.feihome.model.TCodepushRecord;

@Controller
@RequestMapping("/codePush")
public class CodePush {

	@Autowired
	@Qualifier("codeService")
	CodeService codeService;

	@RequestMapping(value = "push")
	@ResponseBody
	public String push(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String pushid = request.getParameter("after");
		String ref = request.getParameter("ref");

		JSONArray commits = JSONArray.parseArray(request
				.getParameter("commits"));
		for(int i=0;i<commits.size();i++){
			JSONObject commit = commits.getJSONObject(i);
			JSONObject committer = commit.getJSONObject("committer");
			
			TCodepushRecord r = new TCodepushRecord();
			r.setCCommitterEmail(committer.getString("email"));
			r.setCCommitterName(committer.getString("name"));
			r.setCCommitterSha(commit.getString("sha"));
			r.setCCommitterMsg(commit.getString("short_message"));
			r.setCPushId(pushid);
			r.setRef(ref);
			r.setDtCreatetime(new Timestamp(System.currentTimeMillis()));
			codeService.createPushRecord(r);
		}
		return "success";
	}
}
