<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.feihome.support.utils.ConfigUtils"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>

<div class="jumbotron pageHead">
	<div class="container">
		<h1>Feihome</h1>
		<h2><%=ConfigUtils.getProperty("feihome.title")%></h2>
		<p>
			<a href="<c:url value='/' />"><span style="margin-left: 10px;"><%=ConfigUtils.getProperty("feihome.url")%></span></a>
		</p>
	</div>
</div>



