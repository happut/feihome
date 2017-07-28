<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE HTML>
<html>
<head>
    <%@ include file="/jsp/import.jsp" %>
    <title><%=ConfigUtils.getProperty("feihome.title")%>
    </title>
</head>
<body>
<jsp:include page='/jsp/header.jsp'/>
<div class="wrap">
    <jsp:include page="/jsp/pageHeader.jsp"/>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <nav aria-label="Page navigation">
                    <ul class="pager">
                        <li><a href="<c:url value="/blog/list/${prePage}"></c:url>">Previous</a></li>
                        <li><a href="<c:url value="/blog/list/${nextPage}"></c:url>">Next</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-12" id="main">
                <c:forEach items="${data}" var="d" varStatus="var">
                    <div class="well">
                        <blockquote>
                            <p>
                                <a href="<c:url value='/blog/p/${d.NId}' />"/>
                                <c:out value='${d.CTitle}'/>
                                </a>
                            </p>

                            <p class="text-right">
                                <small>
                                    <shiro:authenticated>
                                        <a href="<c:url value='/blog/edit/${d.NId}' />">编辑</a>
                                        <a href="<c:url value='/blog/delete/${d.NId}' />">删除</a>
                                    </shiro:authenticated>
                                    <fmt:formatDate value="${d.dtCreatetime}" type="both"
                                                    pattern="yyyy-MM-dd HH:mm"/>
                                    <c:out value='${d.CUsername}'/>
                                </small>
                            </p>

                        </blockquote>
                        <p>
                            <small><c:out value='${d.CContent}'>无</c:out></small>
                        </p>
                    </div>
                </c:forEach>
                <div class="col-md-12">
                    <nav aria-label="Page navigation">
                        <ul class="pager">
                            <li><a href="<c:url value="/blog/list/${prePage}"></c:url>">Previous</a></li>
                            <li><a href="<c:url value="/blog/list/${nextPage}"></c:url>">Next</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/jsp/footer.jsp" %>
</div>
</body>
</html>
