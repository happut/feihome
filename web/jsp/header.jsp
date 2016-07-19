<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<header>
	<nav class="navbar navbar-info" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<c:url value='/' />">Feihome</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class='nav-item'><a class="nav-link"
						href="<c:url value='/home/index.wangfei' />">主页</a></li>
					<li class='nav-item'><a class="nav-link"
						href="<c:url value='/blog/list.wangfei' />">博客</a></li>
					<li class='nav-item'><a class="nav-link"
						href="<c:url value='/blog/list.wangfei' />">聚合</a></li>
					<li class='nav-item'><a class="nav-link"
						href="<c:url value='/gasoline/list.wangfei' />">油价</a></li>
					<li class='nav-item'><a class="nav-link"
						href="<c:url value='/readme.jsp' />">关于我</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<shiro:authenticated>
						<li class='nav-item'><a class="nav-link"
							href="<c:url value='/control/index' />">控制中心</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">(●'◡'●) , <shiro:principal
									property="CUsername" /> <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value='/user/signup' />">注销</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="<c:url value='/user/detail' />">详细信息</a></li>
							</ul></li>
					</shiro:authenticated>
					<shiro:notAuthenticated>
						<li class='nav-item'><a class="nav-link"
							href="<c:url value='/user/signup' />"> (●'◡'●) ,请登录 </a></li>
					</shiro:notAuthenticated>
				</ul>
			</div>
		</div>
	</nav>
</header>



