<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日志界面</title>
<script src="../js/jquery-2.0.3.js"></script>
<script src="../js/bootstrap.js"></script>
<link
	href="http://lib.sinaapp.com/js/bootstrap/v3.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../jsp/blog/css/common.css" rel="stylesheet">
<link href="../jsp/blog/css/list.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(window).scrollTop() >= 100) {
				$('.actGotop').fadeIn(300);
			} else {
				$('.actGotop').fadeOut(300);
			}
		});
		$('.actGotop').click(function() {
			$('html,body').animate({
				scrollTop : '0px'
			}, 800);
		});
	});
</script>
<style type="text/css">
body {
	height: 100%;
	font-family: "Microsoft YaHei";
	padding-top: 70px;
	padding-bottom: 20px;
}
</style>
</head>
<body>
	<jsp:include page='/jsp/header.jsp'>
		<jsp:param value="blogNav" name="active" />
	</jsp:include>
	<div class="container">
		<div class="col-md-8">
			<div class="container">
				<c:forEach items="${data}" var="d" varStatus="var">
					<div class="well">
						<div class="blogTitle">
							<h2>
								<c:out value='${d.CTitle}' />
							</h2>
							<span class="blogTitleTime"> <fmt:formatDate
									value="${d.dtCreatetime}" type="both"
									pattern="yyyy-MM-dd HH:mm:ss" /> <c:out
									value='${d.user.CUsername}' />
							</span> <span class="label label-primary">卧槽</span>
						</div>
						<div class="blogContent">
							<c:out value='${d.CContent}' escapeXml="false" />
						</div>
						<div class="blogCommentTip">评论(10) | 赞(5)</div>
					</div>
				</c:forEach>
				<ul class="pager">
					<li class="previous disabled"><a href="javascript:false;">&larr;
							Older</a></li>
					<li class="next"><a href="#">Newer &rarr;</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-4">
			<div class="container">
				<div class="panel panel-success">
					<div class="panel-heading">个人简介：</div>
					<div class="panel-body">
						<p>Happut Wong Fane</p>
						<p>Poor Java Programme Developer</p>
						<p>Beijing</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="actGotop">
		<a href="javascript:;" title="Top"></a>
	</div>


	<%@ include file="/jsp/foot.jsp"%>
</body>
</html>
