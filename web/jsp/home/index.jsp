<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <%@ include file="/jsp/import.jsp" %>
    <title><%=ConfigUtils.getProperty("feihome.title")%>
    </title>
</head>
<body>

<jsp:include page="/jsp/header.jsp"/>
<div class="wrap">
    <jsp:include page="/jsp/pageHeader.jsp"/>
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
                                <p>aboutMe</p>
                            </blockquote>
                            <p>name:wangfei</p>
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