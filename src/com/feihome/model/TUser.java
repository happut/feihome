package com.feihome.model;

import java.util.Date;

/**
 * TUser entity. @author MyEclipse Persistence Tools
 */

public class TUser implements java.io.Serializable {

    // Fields    

    private Integer NId;

    private String CUsername;

    private String CPassword;

    private String CEmail;

    private Date dtCreateTime;

    // Constructors

    /** default constructor */
    public TUser() {
    }

    /** minimal constructor */
    public TUser(Integer NId) {
        this.NId = NId;
    }

    /** full constructor */
    public TUser(Integer NId, String CUsername, String CPassword,
            String CEmail, Date dtCreateTime) {
        this.NId = NId;
        this.CUsername = CUsername;
        this.CPassword = CPassword;
        this.CEmail = CEmail;
        this.dtCreateTime = dtCreateTime;
    }

    // Property accessors

    public Integer getNId() {
        return this.NId;
    }

    public void setNId(Integer NId) {
        this.NId = NId;
    }

    public String getCUsername() {
        return this.CUsername;
    }

    public void setCUsername(String CUsername) {
        this.CUsername = CUsername;
    }

    public String getCPassword() {
        return this.CPassword;
    }

    public void setCPassword(String CPassword) {
        this.CPassword = CPassword;
    }

    public String getCEmail() {
        return this.CEmail;
    }

    public void setCEmail(String CEmail) {
        this.CEmail = CEmail;
    }

    public Date getDtCreateTime() {
        return this.dtCreateTime;
    }

    public void setDtCreateTime(Date dtCreateTime) {
        this.dtCreateTime = dtCreateTime;
    }

}