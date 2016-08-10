<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
<title><c:out value='${data.CTitle}' /></title>
<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
<script type="text/javascript">
	var duoshuoQuery = {
		short_name : "feihome"
	};
	(function() {
		var ds = document.createElement('script');
		ds.type = 'text/javascript';
		ds.async = true;
		ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:')
				+ '//static.duoshuo.com/embed.js';
		ds.charset = 'UTF-8';
		(document.getElementsByTagName('head')[0] || document
				.getElementsByTagName('body')[0]).appendChild(ds);
	})();

	$(document).ready(function() {
		$(".content").hide();
		var content = $(".content_hidden").val();
		$(".content").html(markdown.toHTML(content));
		$(".content").fadeIn();
	});
</script>
<!-- 多说公共JS代码 end -->

<style type="text/css">
.title {
	padding: 0 20px;
}

.summary {
	margin: 0 15px;
	padding: 10px;
	background-color: #efefef;
}

.content {
	padding: 30px;
}
</style>
</head>
<body>
	<jsp:include page='/jsp/header.jsp' />
	<div class="wrap">
		<jsp:include page="/jsp/pageHeader.jsp" />
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="well">
						<div class="title">
							<h3>
								<c:out value='${data.CTitle}' />
								<small><c:out value='${data.CUsername}' />(<fmt:formatDate
										value="${data.dtCreatetime}" type="both"
										pattern="yyyy-MM-dd HH:mm" />) <a href="#comment" /> <span
									class="ds-thread-count"
									data-thread-key="p<c:out value='${data.NId}' />"
									data-count-type="comments"></span> </a> <shiro:authenticated>
										<a href="<c:url value='/blog/edit/${data.NId}' />">编辑</a>
										<a href="<c:url value='/blog/delete/${data.NId}' />">删除</a>
									</shiro:authenticated> </small>
							</h3>
						</div>
						<div class="summary">
							<c:out value='${data.CSummary}' />
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="well">
						<div class="content">
							<%-- <c:out value='${data.CContent}' escapeXml="false"/> --%>
						</div>
						<input class="content_hidden" type="hidden"
							value="<c:out value='${data.CContent}'/>">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="well" id="comment">
						<!-- 多说评论框 start -->
						<div class="ds-thread"
							data-thread-key="p<c:out value='${data.NId}' />"
							data-title="<c:out value='${data.CTitle}' />"
							data-url="<%=ConfigUtils.getProperty("feihome.url")%><c:out value='/blog/p/${data.NId}' />"></div>
						<!-- 多说评论框 end -->
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>
