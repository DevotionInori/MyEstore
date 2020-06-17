<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--
  Created by IntelliJ IDEA.
  User: 宋亚东
  Date: 2020/6/14
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Product</title>
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<header>
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="logo"></div>
        <a href="${pageContext.request.contextPath}/ProductFindAllServlet">首页</a>
        <a href="${pageContext.request.contextPath}/FindCategoryServlet?name=手机">手机</a>
        <a href="${pageContext.request.contextPath}/FindCategoryServlet?name=平板">平板</a>
        <a href="${pageContext.request.contextPath}/FindCategoryServlet?name=笔记本">笔记本</a>
        <a href="${pageContext.request.contextPath}/FindCategoryServlet?name=配件">配件</a>
        <span><c:if test="${not empty user }">
        <a class="user" href="${pageContext.request.contextPath}/OrderFindByIdServlet?id=${user.id}" >${user.username}</a>
            <a href="${pageContext.request.contextPath}/LogOutServlet">注销</a>
        </c:if>
			<c:if test="${ empty user }">
                <a class="signin" href="${pageContext.request.contextPath}/login.jsp">登录</a>
                <a class="signup" href="${pageContext.request.contextPath}/login.jsp">注册</a>
            </c:if>
		</span>
    </nav>
</header>

<section class="page">

    <div class="content">
        <c:forEach items="${pb1.pro}" var="p" varStatus="vs">
            <div class="product">
                <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                <span class="brand">${p.name}</span>
                <span class="title">${p.description}</span>
                <span class="price">${p.price}</span>
                <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}"><em class="fast-buy"></em></a>
            </div>
        </c:forEach>
    </div>
    <ul class="pagination">
        <li><a href="${pageContext.request.contextPath}/ProductFindByPageCodeServlet?pageNum=1&currentPage=${pb1.currentPage}">首页</a></li>
        <li><c:if test="${pb1.pageNum==1}"><a>上一页</a></c:if></li>
        <li><c:if test="${pb1.pageNum!=1}"><a href="${pageContext.request.contextPath}/ProductFindByPageCodeServlet?pageNum=${pb1.pageNum-1}&currentPage=${pb1.currentPage}">上一页</a></c:if></li>
        <c:if test="${pb1.pageNum==pb1.totalPage}"><li><a>下一页</a></li><li><a>尾页</a></li></c:if>
        <li><c:if test="${pb1.pageNum!=pb1.totalPage}">
            <a href="${pageContext.request.contextPath}/ProductFindByPageCodeServlet?pageNum=${pb1.pageNum+1 }&currentPage=${pb1.currentPage}">下一页</a>
            <a href="${pageContext.request.contextPath}/ProductFindByPageCodeServlet?pageNum=${pb1.totalPage }&currentPage=${pb1.currentPage}">尾页</a>
        </c:if></li>
    </ul>
</section>
<footer>
    <div>
        <ul>
            <li>开发人员1</li>
            <li>宋亚东</li>
        </ul>
        <ul>
            <li>开发人员2</li>
            <li>宋华鹏</li>
        </ul>
    </div>
</footer>
</body>
</html>
