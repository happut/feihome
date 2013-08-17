package com.feihome.model;

import java.sql.Timestamp;
import java.util.Date;


/**
 * TBlog entity. @author MyEclipse Persistence Tools
 */

public class TBlog  implements java.io.Serializable {


    // Fields    

     private Integer NId;
     private String CTitle;
     private String CContent;
     private Integer NType;
     private Integer NUserid;
     private Date dtCreatetime;
     private Date dtEdittime;


    // Constructors

    /** default constructor */
    public TBlog() {
    }

	/** minimal constructor */
    public TBlog(Integer NId) {
        this.NId = NId;
    }
    
    /** full constructor */
    public TBlog(Integer NId, String CTitle, String CContent, Integer NType, Integer NUserid, Timestamp dtCreatetime, Timestamp dtEdittime) {
        this.NId = NId;
        this.CTitle = CTitle;
        this.CContent = CContent;
        this.NType = NType;
        this.NUserid = NUserid;
        this.dtCreatetime = dtCreatetime;
        this.dtEdittime = dtEdittime;
    }

   
    // Property accessors

    public Integer getNId() {
        return this.NId;
    }
    
    public void setNId(Integer NId) {
        this.NId = NId;
    }

    public String getCTitle() {
        return this.CTitle;
    }
    
    public void setCTitle(String CTitle) {
        this.CTitle = CTitle;
    }

    public String getCContent() {
        return this.CContent;
    }
    
    public void setCContent(String CContent) {
        this.CContent = CContent;
    }

    public Integer getNType() {
        return this.NType;
    }
    
    public void setNType(Integer NType) {
        this.NType = NType;
    }

    public Integer getNUserid() {
        return this.NUserid;
    }
    
    public void setNUserid(Integer NUserid) {
        this.NUserid = NUserid;
    }

    public Date getDtCreatetime() {
        return this.dtCreatetime;
    }
    
    public void setDtCreatetime(Date dtCreatetime) {
        this.dtCreatetime = dtCreatetime;
    }

    public Date getDtEdittime() {
        return this.dtEdittime;
    }
    
    public void setDtEdittime(Date dtEdittime) {
        this.dtEdittime = dtEdittime;
    }
   








}