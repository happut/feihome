<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World</title>
<script src="../js/jquery-2.0.3.js"></script>
<script src="../js/bootstrap.js"></script>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../jsp/blog/css/common.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
		<a class="navbar-brand" href="#">Blog</a>
		<p class="navbar-text"><a href="../blog/addBlog.action">新增博客</a></p>
		<c:if test="${!empty sessionScope.user.CUsername}">
			<p class="navbar-text pull-right" id="logined">Signed in as <c:out value='${user.CUsername}' />  <a href="../user/signup.action?ref=blog_list">Sign out</a></p>
		</c:if>
		<c:if test="${empty sessionScope.user.CUsername}">
			<p class="navbar-text pull-right" id="login"><a href="../user/signup.action?ref=blog_list">Sign in</a></p>
		</c:if>
	</nav>
	    <div id="wrap">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<c:forEach items="${data}" var="d">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								<c:out value='${d.CTitle}' />
							</h3>
							<h5><c:out value='${d.dtCreatetime}' /></h5>
						</div>
						<div class="panel-body">
							<c:out value='${d.CContent}' />
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	</div>
    <div id="footer">
      <div class="container">
        <p class="text-muted">Copyright © 2013 Wfei.de.bug.(Happut). All rights reserved. </p>
      </div>
    </div>
</body>
</html>
