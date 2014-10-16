package com.feihome.logic.code;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.feihome.model.TCodepushRecord;
import com.feihome.service.CommonService;

@Controller
@RequestMapping("/codePush")
public class CodePush {

	@Autowired
	@Qualifier("commonService")
	CommonService commonService;

	@RequestMapping(value = "push")
	@ResponseBody
	public String push(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String pushid = request.getParameter("after");
		String ref = request.getParameter("ref");

		JSONArray commits = JSONArray.fromObject(request
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
			commonService.createPushRecord(r);
		}
		return "success";
	}
}
