<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <%@ include file="/jsp/import.jsp" %>
    <title><%=ConfigUtils.getProperty("feihome.title")%>
    </title>
    <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>

<jsp:include page="/jsp/header.jsp"/>
<div class="wrap">
    <jsp:include page="/jsp/pageHeader.jsp"/>
    <div class="container">
        <div class="row marketing">
            <div class="col-md-9">
                <div class="row marketing">

                    <c:forEach items="${blogs}" var="blog">
                        <div class="col-md-12">
                            <div class="well">
                                <blockquote>
                                    <p><a href="<c:url value='/blog/p/${blog.NId}' />"/>
                                        <c:out value='${blog.CTitle}'/>
                                        </a></p>
                                </blockquote>
                                <p>
                                    <small><c:out value='${blog.CContent}'>无</c:out></small>
                                </p>
                            </div>
                        </div>
                    </c:forEach>

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
            <div class="col-md-3">
                <div class="row marketing">
                    <div class="col-md-12">
                        <div class="well">
                            <blockquote>
                                <p>me</p>
                            </blockquote>
                            <p class="text-center"><img alt="1377_littlewangfei" class="avatar littlewangfei-avatar"
                                                        id="avatar-change" width="100"
                                                        src="<c:url value="/img/myface2.jpg"></c:url>"></p>
                            <p class="text-center">wangfei</p>
                            <p class="text-center"><wb:follow-button uid="1215346015" type="red_3" width="300" height="24" ></wb:follow-button></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/jsp/footer.jsp" %>
</div>
</body>
</html>