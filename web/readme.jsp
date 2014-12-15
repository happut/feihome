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
    <jsp:param name="active" value="readme"/>
</jsp:include>

<div class="wrap">
    <div class="container">
        <div class="row marketing">
            <div class="col-md-12">
                <div class="well">
                    <div class="row marketing">
                        <div class="col-md-6">
                            <h1>一个简简单单的人</h1>
                            <address>
                                <strong>Wang Fei, (Happut).</strong><br> A Poor Java
                                Programme Developer<br> Xixiaokou, Haidian, Beijing, China<br>
                                <abbr title="Phone">P:</abbr> (0) 156-GRYS-8912<br> <abbr
                                    title="E-Mail">E:</abbr> <a href="mailto:happut@163.com">happut#163.com</a>
                                (Please replace '#' with '@')
                            </address>
                        </div>
                        <div class="col-md-6">
                            <h1>开发进度</h1>
                            <script
                                    src="http://git.oschina.net/littlewangfei/feihome/preview"></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/jsp/footer.jsp" %>

</body>
</html>