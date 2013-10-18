package com.feihome.model;

import java.util.Date;

/**
 * TBlogComment entity. @author MyEclipse Persistence Tools
 */

public class TBlogComment implements java.io.Serializable {

    // Fields    

    private Integer TId;

    private Integer TPid;

    private Integer TRepId;

    private Integer TUserId;

    private String TComment;

    private Date dtCreatetime;

    private Date dtEdittime;

    // Constructors

    /** default constructor */
    public TBlogComment() {
    }

    /** minimal constructor */
    public TBlogComment(Integer TId) {
        this.TId = TId;
    }

    /** full constructor */
    public TBlogComment(Integer TId, Integer TPid, Integer TRepId,
            Integer TUserId, String TComment, Date dtCreatetime,
            Date dtEdittime) {
        this.TId = TId;
        this.TPid = TPid;
        this.TRepId = TRepId;
        this.TUserId = TUserId;
        this.TComment = TComment;
        this.dtCreatetime = dtCreatetime;
        this.dtEdittime = dtEdittime;
    }

    // Property accessors

    public Integer getTId() {
        return this.TId;
    }

    public void setTId(Integer TId) {
        this.TId = TId;
    }

    public Integer getTPid() {
        return this.TPid;
    }

    public void setTPid(Integer TPid) {
        this.TPid = TPid;
    }

    public Integer getTRepId() {
        return this.TRepId;
    }

    public void setTRepId(Integer TRepId) {
        this.TRepId = TRepId;
    }

    public Integer getTUserId() {
        return this.TUserId;
    }

    public void setTUserId(Integer TUserId) {
        this.TUserId = TUserId;
    }

    public String getTComment() {
        return this.TComment;
    }

    public void setTComment(String TComment) {
        this.TComment = TComment;
    }

    public Date getDtCreateTime() {
        return this.dtCreatetime;
    }

    public void setDtCreateTime(Date dtCreatetime) {
        this.dtCreatetime = dtCreatetime;
    }

    public Date getDtEdittime() {
        return this.dtEdittime;
    }

    public void setDtEdittime(Date dtEdittime) {
        this.dtEdittime = dtEdittime;
    }

}