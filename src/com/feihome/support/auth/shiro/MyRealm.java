/*
 * @(#)MyRealm.java 2016-7-18 上午11:09:11 feihome Copyright 2016 Thuisoft, Inc.
 * All rights reserved. THUNISOFT PROPRIETARY/CONFIDENTIAL. Use is subject to
 * license terms.
 */
package com.feihome.support.auth.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.feihome.logic.user.UserService;
import com.feihome.model.TUser;

/**
 * MyRealm
 * @author wfei
 * @time 2016-7-18上午11:09:11
 */
@Repository("myRealm")
public class MyRealm extends AuthorizingRealm {

    @Autowired
    UserService userService;

    /*
     * (non-Javadoc)
     * 
     * @see
     * org.apache.shiro.realm.AuthorizingRealm#doGetAuthorizationInfo(org.apache
     * .shiro.subject.PrincipalCollection)
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(
            PrincipalCollection principals) {
        // TODO Auto-generated method stub
        return null;
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * org.apache.shiro.realm.AuthenticatingRealm#doGetAuthenticationInfo(org
     * .apache.shiro.authc.AuthenticationToken)
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken token) throws AuthenticationException {
        //获取用户账号
        String username = token.getPrincipal().toString();
        TUser user = userService.findUserByUsername(username);
        if (user != null) {
            //将查询到的用户账号和密码存放到 authenticationInfo用于后面的权限判断。第三个参数传入realName。
            AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                    user, user.getCPassword(), user.getCUsername());
            return authenticationInfo;
        } else {
            return null;
        }
    }

}
