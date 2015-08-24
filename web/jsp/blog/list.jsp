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

							<p class="text-right">
								<c:if test="${sessionScope.user.NId eq d.NUserid}">
									<span style="cursor: pointer;"><span
										class="glyphicon glyphicon-edit"></span>&nbsp;编辑</span> | <span
										style="cursor: pointer;"
										onclick="javascript:deleteBlog(<c:out value='${d.NId}'/>)"><span
										class="glyphicon glyphicon-remove"></span>&nbsp;删除</span> |
                            </c:if>
								<span style="cursor: pointer;"
									onclick="javascript:showCommentDiv('comment<c:out value='${d.NId}'/>')"><span
									class="glyphicon glyphicon-comment"></span>&nbsp;<span
									class="badge">10</span></span> | <span style="cursor: pointer;"><span
									class="glyphicon glyphicon-thumbs-up"></span>&nbsp;<span
									class="badge">5</span></span>
							</p>

							<div class="well commentDiv"
								id="comment<c:out value='${d.NId}'/>">
								<input type="text" class="form-control" id="blog_title"
									placeholder="用户名" />

								<textarea rows="3" class="form-control" id="blog_title"
									placeholder="请输入评论" cols="20"></textarea>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>

</body>
</html>
