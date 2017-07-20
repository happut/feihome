<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="com.feihome.support.utils.ConfigUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<header>

    <nav class="navbar navbar-info" role="navigation">

        <div class="container">
            <div class="col-md-12">
                <h1>feihome</h1>
                <h4><%=ConfigUtils.getProperty("feihome.title")%>
                </h4>
                <h5><%=ConfigUtils.getProperty("feihome.url")%></h5>
            </div>
            <div class="col-md-12">
                <div class="collapse navbar-collapse nav-menu"
                     id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class='nav-item'><a class="nav-link"
                                                href="<c:url value='/home/index' />">Home</a></li>
                        <li class='nav-item'><a class="nav-link"
                                                href="<c:url value='/blog/list' />">All blogs</a></li>
                        <li class='nav-item'><a class="nav-link"
                                                href="<c:url value='/blog/list' />">Polymerization</a></li>
                        <%-- 						<li class='nav-item'><a class="nav-link"
                            href="<c:url value='/gasoline/list' />">油价</a></li> --%>
                        <li class='nav-item'><a class="nav-link"
                                                href="<c:url value='/home/aboutMe' />">About me</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <shiro:authenticated>
                            <li class="dropdown"><a href="#" class="dropdown-toggle"
                                data-toggle="dropdown" role="button" aria-haspopup="true"
                                aria-expanded="false">My <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="<c:url value='/user/detail' />">Account</a></li>
                                    <li><a href="<c:url value='/user/login' />"
                                        style="color: red;">Logout</a></li>
                                </ul></li>
                        </shiro:authenticated>
                        <shiro:notAuthenticated>
                            <li class='nav-item'><a class="nav-link"
                                href="<c:url value='/user/login' />">Login</a></li>
                        </shiro:notAuthenticated>
                    </ul>
                    <shiro:authenticated>
                        <p class="navbar-text navbar-right">
                            <span class="glyphicon glyphicon-user" style="margin-right:3px;"
                                aria-hidden="true"></span>
                            <shiro:principal property="CUsername" />
                        </p>
                        <ul class="nav navbar-nav navbar-right">
                            <li class='nav-item'><a class="nav-link"
                                href="<c:url value='/control/index' />">控制中心</a></li>
                        </ul>
                    </shiro:authenticated>

                </div>
            </div>
        </div>
    </nav>
</header>



