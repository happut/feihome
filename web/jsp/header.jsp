<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 生成参数 -->
<c:set value='<%=request.getParameter("active")%>' var="active"
	scope="request"></c:set>
<c:set value='<%=session.getAttribute("user") != null %>' var="isLogin"
	scope="request"></c:set>
<style>
.headLine {
	filter: alpha(Opacity =   80);
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
	<nav class="navbar navbar-dark bg-primary" role="navigation">
		<div class="navbar-brand">
			<a class="navbar-brand" href="#">Feihome </a>
		</div>
		<ul class="nav navbar-nav">
			<li class='nav-item'><a class="nav-link"
				href="<c:url value='/' />">主页</a></li>
			<li class='nav-item'><a class="nav-link"
				href="<c:url value='/blog/list.wangfei' />">博客</a></li>
			<li class='nav-item'><a class="nav-link"
				href="<c:url value='/readme.jsp' />">关于我</a></li>
		</ul>
	</nav>
</header>



