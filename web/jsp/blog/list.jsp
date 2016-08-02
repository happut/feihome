<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
<title><%=ConfigUtils.getProperty("feihome.title")%></title>

<script type="text/javascript">
	var duoshuoQuery = {short_name:"feihome"};
	(function() {
	    var ds = document.createElement('script');
	    ds.type = 'text/javascript';ds.async = true;
	    ds.src = 'http://static.duoshuo.com/embed.js';
	    ds.charset = 'UTF-8';
	    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds);
	})();
	

	$(document).ready()
	{

	/*	$.get("list/1", {
		}, function(data, textStatus) {
			var test = $.parseJSON(data);
			
			for(var i=0;i<test.length;i++){
				$("#main").append("<div class=\"well\">");
				$("#main").append("<blockquote>");
				$("#main").append("<p>");
				$("#main").append("<a href=\"<c:url value='/blog/p/' />"+test[i].NId+"\" />");
				$("#main").append(test[i].CTitle+"</a>");
				$("#main").append("</p>");
				$("#main").append("</blockquote>");
				$("#main").append("</div>");
			}
		}, "json");*/
	}
</script>

</head>
<body>
	<jsp:include page='/jsp/header.jsp' />
	<div class="wrap">
		<jsp:include page="/jsp/pageHeader.jsp" />
		<div class="container">
			<div class="col-md-12">
				<c:forEach items="${data}" var="d" varStatus="var">
					<div class="well">
						<blockquote>
							<p>
								<a href="<c:url value='/blog/p/${d.NId}' />" />
								<c:out value='${d.CTitle}' />
								</a>
							</p>
							<footer>
								无 <cite title="Source Title"><a href="http://wangfei.tk">http://wangfei.tk</a></cite>

								<p class="text-right">
									<a href="<c:url value='/blog/p/${d.NId}' />" /> <span
										class="ds-thread-count"
										data-thread-key="p<c:out value='${d.NId}' />"
										data-count-type="comments"></span> </a>
									<fmt:formatDate value="${d.dtCreatetime}" type="both"
										pattern="yyyy-MM-dd HH:mm" />
									<c:out value='${d.CUsername}' />
								</p>
							</footer>
						</blockquote>
					</div>
				</c:forEach>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>
