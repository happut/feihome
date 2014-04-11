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
	/* The html and body elements cannot have any padding or margin. */
	font-family: "Microsoft YaHei";
	padding-top: 50px;
	padding-bottom: 20px;
}
</style>
</head>
<body>
	<jsp:include page='/jsp/header.jsp'>
		<jsp:param value="blogNav" name="active" />
	</jsp:include>
	<div class="container">
		<div class="col-md-10">
			<div class="container">
				<c:forEach items="${data}" var="d" varStatus="var">
					<div class="raised">
						<b class="b1"></b><b class="b2"></b><b class="b3"></b><b
							class="b4"></b>
						<div class="blogPanel">
							<div class="blogTitle">
								<div class="blogTitleText">
									<c:out value='${d.CTitle}' />
								</div>
								<div class="blogTitleTime">
									<fmt:formatDate value="${d.dtCreatetime}" type="both"
										pattern="yyyy-MM-dd HH:mm:ss" />
									<c:out value='${d.user.CUsername}' />
								</div>
								<!-- <div class="blogTypeLabel">卧槽</div> -->
							</div>
							<div class="blogContent">
								<c:out value='${d.CContent}' escapeXml="false" />
							</div>
							<div class="blogCommentTip">
								评论(<strong>0</strong>)
							</div>
						</div>
						<b class="b4b"></b><b class="b3b"></b><b class="b2b"></b><b
							class="b1b"></b>

					</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-md-2">
			<div class="container">左布局</div>
		</div>
	</div>
	<div class="actGotop">
		<a href="javascript:;" title="Top"></a>
	</div>
	<%@ include file="/jsp/foot.jsp"%>
</body>
</html>
