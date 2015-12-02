<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<%@ include file="/jsp/import.jsp"%>

<script type="text/javascript">
        function showCommentDiv(id) {
            $("#" + id).fadeToggle();
        }

        function deleteBlog(id) {
            $.post('<c:url value="/blog/deteleBlogReq.wangfei" />', {
                "id": id
            }, function (data, textStatus) {
                if (data.result == true) {
                    window.location.href = '<c:url value="/blog/list.wangfei" />';
                } else {
                    alert("失败");
                }
            }, "json");
            return false;
        }
        

    </script>
</head>
<body>
	<jsp:include page='/jsp/header.jsp'>
		<jsp:param value="blog" name="active" />
	</jsp:include>
	<div class="wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-1 col-md-10">
					<c:forEach items="${data}" var="d" varStatus="var">
						<div class="card">
							<div class="card-block">
								<h4 class="card-title">
									<c:out value='${d.CTitle}' />
								</h4>
								<p class="card-text"><small class="text-muted">
									<fmt:formatDate value="${d.dtCreatetime}" type="both"
										pattern="yyyy-MM-dd HH:mm" />
									<c:out value='${d.user.CUsername}' />
									&nbsp;&nbsp; <span class="glyphicon glyphicon-tags"></span>&nbsp;
									<span class="label label-success">卧槽</span>
								</small></p>
							</div>
							<div class="card-block">
								<c:out value='${d.CContent}' escapeXml="false" />
							</div>
						</div>
					</c:forEach>
													<!--高速版-->
								<div id="SOHUCS"></div>
								<script charset="utf-8" type="text/javascript" src="http://changyan.sohu.com/upload/changyan.js" sid="<c:out value='${d.CContent}'></c:out>"></script>
								<script type="text/javascript">
								    window.changyan.api.config({
								        appid: 'cys5H3oKt',
								        conf: 'prod_477db5d530601b90cdd56133ad25cdf2'
								    });
								</script>   
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>
