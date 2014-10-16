package com.feihome.model;

import java.sql.Timestamp;

public class TCodepushRecord {
	
    private Integer NId;
    private String CPushId;
    private String CCommitterEmail;
    private String CCommitterName;
    private String CCommitterSha;
    private String CCommitterMsg;
    private String Ref;
    private Timestamp dtCreatetime;
	public Integer getNId() {
		return NId;
	}
	public String getCPushId() {
		return CPushId;
	}
	public String getCCommitterEmail() {
		return CCommitterEmail;
	}
	public String getCCommitterName() {
		return CCommitterName;
	}
	public String getCCommitterSha() {
		return CCommitterSha;
	}
	public String getCCommitterMsg() {
		return CCommitterMsg;
	}
	public String getRef() {
		return Ref;
	}
	public Timestamp getDtCreatetime() {
		return dtCreatetime;
	}
	public void setNId(Integer nId) {
		NId = nId;
	}
	public void setCPushId(String cPushId) {
		CPushId = cPushId;
	}
	public void setCCommitterEmail(String cCommitterEmail) {
		CCommitterEmail = cCommitterEmail;
	}
	public void setCCommitterName(String cCommitterName) {
		CCommitterName = cCommitterName;
	}
	public void setCCommitterSha(String cCommitterSha) {
		CCommitterSha = cCommitterSha;
	}
	public void setCCommitterMsg(String cCommitterMsg) {
		CCommitterMsg = cCommitterMsg;
	}
	public void setRef(String ref) {
		Ref = ref;
	}
	public void setDtCreatetime(Timestamp dtCreatetime) {
		this.dtCreatetime = dtCreatetime;
	}
    
    
}
