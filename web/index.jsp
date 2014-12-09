<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <%@ include file="/jsp/import.jsp" %>

</head>
<body>

<jsp:include page="/jsp/header.jsp">
    <jsp:param name="active" value="index"/>
</jsp:include>
<div class="container">
    <div class="row marketing">
        <div class="col-md-12">
            <div style="margin: '0px'; padding: 80px 120px 80px 40px;">
                <h1><%=ConfigUtils.getProperty("feihome.title")%>
                </h1>

                <h3>
                    <small><a href="<c:url value='/' />"><span
                            class="glyphicon glyphicon-hand-right"></span><span
                            style="margin-left: 10px;"><%=ConfigUtils.getProperty("feihome.url")%></span></a></small>
                </h3>
            </div>
        </div>
    </div>
    <div class="row marketing">
        <div class="col-md-12">
            <div class="well">
                <h3>留言板</h3>
                <table class="table">
                    <tr>
                        <td>我擦:网站弄得不错呦</td>
                    </tr>
                    <tr>
                        <td>我擦:网站弄得不错呦</td>
                    </tr>
                    <tr>
                        <td>我擦:网站弄得不错呦</td>
                    </tr>
                    <tr>
                        <td>我擦:网站弄得不错呦</td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="col-md-12">
            <div class="well">
                <h3>友情链接</h3>
                <h5>
                    <a href="http://xuding.info" target="_blank"><img width="16"
                                                                      height="16" width="16" height="16" alt=""
                                                                      src="http://www.xuding.info/favicon.ico">徐老师</a>
                </h5>
            </div>
        </div>
    </div>
</div>
<%@ include file="/jsp/footer.jsp" %>
</body>
</html>