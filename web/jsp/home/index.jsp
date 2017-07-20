<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
<title><%=ConfigUtils.getProperty("feihome.title")%></title>
</head>
<body>

	<jsp:include page="/jsp/header.jsp" />
	<div class="wrap">
		<jsp:include page="/jsp/pageHeader.jsp" />
		<div class="container">
			<div class="row marketing">
				<div class="col-md-8">
					<div class="row marketing">
						<div class="col-md-12">
							<div class="well">
								<blockquote>
									<p>Blogs</p>
								</blockquote>
								<p>
								</p>
							</div>
						</div>
						<div class="col-md-12">
							<div class="well">
								<blockquote>
									<p>Friend Link</p>
								</blockquote>
								<p>
									<a href="http://www.xuding.info" target="_blank"><img
										width="16" height="16" width="16" height="16" alt=""
										src="http://www.xuding.info/favicon.ico">徐老师</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="row marketing">
						<div class="col-md-12">
							<div class="well">
								<blockquote>
									<p>标签云</p>
								</blockquote>
							</div>
						</div>
						<div class="col-md-12">
							<div class="well">
								<blockquote>
									<p>热门文章</p>
								</blockquote>
								<ul class="ds-top-threads" data-range="monthly"
									data-num-items="5"></ul>
								<!--多说js加载开始，一个页面只需要加载一次 -->
								<script type="text/javascript">
									var duoshuoQuery = {
										short_name : "feihome"
									};
									(function() {
										var ds = document
												.createElement('script');
										ds.type = 'text/javascript';
										ds.async = true;
										ds.src = 'http://static.duoshuo.com/embed.js';
										ds.charset = 'UTF-8';
										(document.getElementsByTagName('head')[0] || document
												.getElementsByTagName('body')[0])
												.appendChild(ds);
									})();
								</script>
								<!--多说js加载结束，一个页面只需要加载一次 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>