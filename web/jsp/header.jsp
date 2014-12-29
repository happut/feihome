<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
        %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 生成参数 -->
<c:set value='<%=request.getParameter("active")%>' var="active"
       scope="request"></c:set>
<c:set value='<%=session.getAttribute("user") != null %>' var="isLogin"
       scope="request"></c:set>
<style>
    .headLine {
        filter: alpha(Opacity=80);
        -moz-opacity: 0.8;
        opacity: 0.8;
    }

    .headMessage {
        font-size: 16pt;
        margin-bottom: 0px;
        line-height: 170%;
    }

    .line_left {
        float: left;
        margin: auto;
    }

    .line_right {
        float: right;
        margin: auto;
    }

    #headMessageLink {
        display: none;
    }
</style>

<script type="text/javascript">
    function logOut() {
        $.post('<c:url value="/user/logOutReq.wangfei" />', function (data,
                                                                      textStatus) {
            if (data.result == true) {
                window.location.reload();
            } else {
                alert("失败");
            }
        }, "json");
        return false;
    }

    function alertMessage(msg) {
    }

    $(document).ready(function () {
        $(window).scroll(function () {
            if ($(window).scrollTop() >= 300) {
                $('#headMessageLink').fadeIn(300);
            } else {
                $('#headMessageLink').fadeOut(300);
            }
        });
    });
</script>

<header>
    <nav class="navbar navbar-default navbar-fixed-top headLine" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand" href="#">Feihome&nbsp;<span
                    class="glyphicon glyphicon-send"></span>&nbsp;Wangfei</a>
            </div>
            <ul class="nav navbar-nav navbar-left">
                <li <c:if test="${active eq 'index'}"> class='active'</c:if>><a
                        href="<c:url value='/' />">主页</a></li>
                <li <c:if test="${active eq 'blog'}"> class='active'</c:if>><a
                        href="<c:url value='/blog/list.wangfei' />">博客</a></li>
                <li <c:if test="${active eq 'readme'}"> class='active'</c:if>><a
                        href="<c:url value='/readme.jsp' />">关于我</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${isLogin}">
                    <li <c:if test="${active eq 'controlCenter'}"> class='active'</c:if>><a
                            href="<c:url value='/control/index.wangfei' />">控制中心</a></li>
                </c:if>
                <c:choose>
                    <c:when test="${!isLogin}">
                        <li>
                            <a class="navbar-right" href="<c:url value='/user/signup.wangfei' />">
                                <span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;&nbsp;登录&nbsp;&nbsp;
                            </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <p class="navbar-text">欢迎您， <strong><c:out
                                    value="${sessionScope.user.CUsername}"></c:out></strong></p>
                        </li>
                        <li>
                            <a class="navbar-right" href="javascript:logOut();">
                                <span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;&nbsp;&nbsp;注销&nbsp;&nbsp;
                            </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>
</header>



