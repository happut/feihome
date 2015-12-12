<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
	String url = basePath + "home/index.wangfei";
	response.sendRedirect(url);
%>
