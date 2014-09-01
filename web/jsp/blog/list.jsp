<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日志界面</title>
<%@ include file="/jsp/import.jsp"%>
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
</head>
<body>
	<div class="container">
		<jsp:include page='/jsp/header.jsp'>
			<jsp:param value="blog" name="active" />
		</jsp:include>
		<div class="row marketing">
			<div class="col-md-3">
				<div class="panel panel-success">
					<div class="panel-heading">日期：</div>
					<div class="panel-body">
						<p>2014年8月</p>
						<p>2014年7月</p>
						<p>2014年6月</p>
					</div>
				</div>
				<div class="panel panel-success">
					<div class="panel-heading">标签：</div>
					<div class="panel-body">
						<p>卧槽</p>
					</div>
				</div>				
			</div>
			<div class="col-md-9">
				<c:forEach items="${data}" var="d" varStatus="var">
					<div class="well">
						<div>
							<h2>
								<c:out value='${d.CTitle}' />
							</h2>
							<h6>
								<small><fmt:formatDate value="${d.dtCreatetime}"
										type="both" pattern="yyyy-MM-dd HH:mm:ss" /> <c:out
										value='${d.user.CUsername}' /></small>
							</h6>
						</div>
						<div>
							<c:out value='${d.CContent}' escapeXml="false" />
						</div>
						<div>评论(10) | 赞(5)</div>
					</div>
				</c:forEach>
				<ul class="pager">
					<li class="previous disabled"><a href="javascript:false;">&larr;
							Older</a></li>
					<li class="next"><a href="#">Newer &rarr;</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="actGotop">
		<a href="javascript:;" title="Top"></a>
	</div>


	<%@ include file="/jsp/foot.jsp"%>
</body>
</html>
