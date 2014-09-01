<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 生成参数 -->
<c:set value='<%=request.getParameter("active") %>' var="active" scope="request"></c:set>

<div class="row marketing">
	<div class="col-md-12">
		<div style="margin: '0px'; padding: 80px 120px 80px 40px;">
			<h1>菜鸟.自由</h1>
			<h4>
				<a href="<c:url value='/' />">http://wangfeidev.sinaapp.com</a>
			</h4>
		</div>
	</div>
</div>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li <c:if test="${active eq 'index'}"> class='active'</c:if>> <a href="<c:url value='/' />">主页</a> </li>
			<li <c:if test="${active eq 'blog'}"> class='active'</c:if>> <a href="<c:url value='/blog/list.action' />">博客</a></li>
			<li <c:if test="${active eq 'readme'}"> class='active'</c:if>> <a href="<c:url value='/readme.jsp' />">关于我</a></li>
		</ul>
	</div>
</nav>

<script type="text/javascript">
	$("#<%=request.getParameter("active")%>").addClass("active");
</script>