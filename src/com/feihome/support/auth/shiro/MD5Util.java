/*
 * @(#)MD5Util.java 2016-7-18 下午4:44:44 feihome Copyright 2016 Thuisoft, Inc.
 * All rights reserved. THUNISOFT PROPRIETARY/CONFIDENTIAL. Use is subject to
 * license terms.
 */
package com.feihome.support.auth.shiro;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * MD5Util
 * @author wfei
 * @time 2016-7-18下午4:44:44
 */
public class MD5Util {
    private final static String MD5_SALT = "wangfeiisveryclever!";
    
    public static String md5(String str){
        return new Md5Hash(str,MD5_SALT).toString() ;
    }
}
