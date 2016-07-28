/*
 * @(#)OAuth2Token.java 2016-7-25 下午5:55:24 feihome Copyright 2016 Thuisoft,
 * Inc. All rights reserved. THUNISOFT PROPRIETARY/CONFIDENTIAL. Use is subject
 * to license terms.
 */
package com.feihome.support.auth.shiro;

import org.apache.shiro.authc.AuthenticationToken;

/**
 * OAuth2Token
 * @author wfei
 * @time 2016-7-25下午5:55:24
 */
public class OAuth2Token implements AuthenticationToken {
    private String authCode;

    private String principal;

    public OAuth2Token(String authCode) {
        this.authCode = authCode;
    }

    //省略getter/setter  
    public String getAuthCode() {
        return authCode;
    }

    public void setAuthCode(String authCode) {
        this.authCode = authCode;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal;
    }

    /* (non-Javadoc)
     * @see org.apache.shiro.authc.AuthenticationToken#getCredentials()
     */
    @Override
    public Object getCredentials() {
        // TODO Auto-generated method stub
        return null;
    }
}