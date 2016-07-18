/*
 * @(#)UserMapper.java	2016-7-18 上午11:14:50
 * feihome
 * Copyright 2016 Thuisoft, Inc. All rights reserved.
 * THUNISOFT PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.feihome.logic.user.dao.impl.mapper;

import java.util.List;

import com.feihome.model.TUser;

/**
 * UserMapper
 * @author wfei
 * @time 2016-7-18上午11:14:50
 */
public interface UserMapper {
    public List<TUser> findUserByUsername(String username);
}
