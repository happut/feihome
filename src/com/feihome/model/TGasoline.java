package com.feihome.model;

import java.util.Date;

public class TGasoline {
	  private String id;
	  private Date bdrq;
	  private Float price;
	  private Float bdfd;
	  private Integer type;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getBdrq() {
		return bdrq;
	}
	public void setBdrq(Date bdrq) {
		this.bdrq = bdrq;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Float getBdfd() {
		return bdfd;
	}
	public void setBdfd(Float bdfd) {
		this.bdfd = bdfd;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	  
	  
}
