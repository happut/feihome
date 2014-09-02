<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 生成参数 -->
<c:set value='<%=request.getParameter("active")%>' var="active"
	scope="request"></c:set>

<style>
.headLine {
	position: fixed;
	height: 43px;
	width: 100%;
	background-color: #e2ddc7;
	top: 0px;
	left: 0px;
	filter: alpha(Opacity =    80);
	-moz-opacity: 0.8;
	opacity: 0.8;
	z-index: 9999;
	padding-left: 170px;
	padding-right: 170px;
}

.headMessage {
	font-size: 16pt;
	margin-bottom: 0px;
	line-height: 170%;
}
</style>

<div class="headLine">
	<c:choose>
		<c:when test="${empty sessionScope.user}">
			<p class="headMessage text-right">
				<button type="button" class="btn btn-success"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;&nbsp;登录&nbsp;&nbsp;</button>
			</p>
		</c:when>
		<c:otherwise>
			<p class="headMessage text-right">
				欢迎您，
				<c:out value="${sessionScope.user.CUsername}"></c:out>
				<button type="button" class="btn btn-info"><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;&nbsp;&nbsp;注销&nbsp;&nbsp;</button>
			</p>
		</c:otherwise>
	</c:choose>
</div>


<div class="row marketing">
	<div class="col-md-12">
		<div style="margin: '0px'; padding: 80px 120px 80px 40px;">
			<h1>菜鸟.自由</h1>
			<h3>
				<small><a href="<c:url value='/' />"><span class="glyphicon glyphicon-hand-right"></span>&nbsp;&nbsp;http://wangfeidev.sinaapp.com</a></small>
			</h3>
		</div>
	</div>
</div>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li <c:if test="${active eq 'index'}"> class='active'</c:if>><a
				href="<c:url value='/' />">主页</a></li>
			<li <c:if test="${active eq 'blog'}"> class='active'</c:if>><a
				href="<c:url value='/blog/list.action' />">博客</a></li>
			<li <c:if test="${active eq 'readme'}"> class='active'</c:if>><a
				href="<c:url value='/readme.jsp' />">关于我</a></li>
		</ul>
	</div>
</nav>
