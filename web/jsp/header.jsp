<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Feihome</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li id="indexNav" ><a href='<c:url value="/"/>'>主页</a></li>
				<li id="blogNav" ><a href='<c:url value="/blog/list.action"/>'>日志</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</div>

<script type="text/javascript">
	$("#<%=request.getParameter("active")%>").addClass("active");
</script>