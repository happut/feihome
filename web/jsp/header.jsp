<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>
	<nav class="navbar navbar-dark bg-primary" role="navigation">
		<div class="navbar-brand">
			<a class="navbar-brand" href="#">Feihome </a>
		</div>
		<ul class="nav navbar-nav">
			<li class='nav-item'><a class="nav-link"
				href="<c:url value='/' />">主页</a></li>
			<li class='nav-item'><a class="nav-link"
				href="<c:url value='/blog/list.wangfei' />">博客</a></li>
			<li class='nav-item'><a class="nav-link"
				href="<c:url value='/blog/list.wangfei' />">聚合</a></li>
			<li class='nav-item'><a class="nav-link"
				href="<c:url value='/gasoline/list.wangfei' />">油价</a></li>
			<li class='nav-item'><a class="nav-link"
				href="<c:url value='/readme.jsp' />">关于我</a></li>
		</ul>
	</nav>
</header>



