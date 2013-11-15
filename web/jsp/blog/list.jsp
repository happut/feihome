<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World</title>
<script src="../js/jquery-2.0.3.js"></script>
<script src="../js/bootstrap.js"></script>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../jsp/blog/css/common.css" rel="stylesheet">
<link href="../jsp/blog/css/list.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function() {
	});
</script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<a class="navbar-brand" href="#">Blog</a>
		<c:if test="${!empty sessionScope.user.CUsername}">
			<p class="navbar-text"><a href="../blog/addBlog.action">新增博客</a></p>
			<p class="navbar-text pull-right" id="logined">Signed in as <c:out value='${user.CUsername}' />  <a href="../user/signup.action?ref=blog_list">Sign out</a></p>
		</c:if>
		<c:if test="${empty sessionScope.user.CUsername}">
			<p class="navbar-text pull-right" id="login"><a href="../user/signup.action?ref=blog_list">Sign in</a></p>
		</c:if>
	</nav>
		<div class="container">
			<div class="col-md-2">
				<div class="container">
					左布局
				</div>
			</div>
			<div class="col-md-10">
				<div class="container">
					<c:forEach items="${data}" var="d" varStatus="var">
							<div class="raised">
								<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
									<div class="blogPanel">
										<div class="blogTitle">
											<div class="blogTitleText"><c:out value='${d.CTitle}' /></div>
											<div class="blogTitleTime"><fmt:formatDate value="${d.dtCreatetime}" type="both" pattern="yyyy-MM-dd HH:mm:ss"/> <c:out value='${d.user.CUsername}' /> </div>
											<!-- <div class="blogTypeLabel">卧槽</div> -->
										</div>
										<div class="blogContent"><c:out value='${d.CContent}' escapeXml="false"/></div>
										<div class="blogCommentTip">评论(<strong>0</strong>)</div>
								    </div>
									<b class="b4b"></b><b class="b3b"></b><b class="b2b"></b><b class="b1b"></b>
								  
							</div>
					</c:forEach>
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
