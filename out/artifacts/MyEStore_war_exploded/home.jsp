<%@ page import="com.store.domain.User" %>
<%--
  Created by IntelliJ IDEA.
  User: 宋亚东
  Date: 2020/6/10
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>MyStore</title>
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <script type="javascript">
        function phone(obj) {
            window.location.href="/devotion/FindCategoryServlet?name="+encodeURIComponent(encodeURIComponent(obj));
        }

    </script>
</head>
<div >
    <div></div>
</div>
<body>
<header>
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="logo"></div>
        <a href="#">首页</a>
        <a href="${pageContext.request.contextPath}/FindCategoryServlet?name=手机">手机</a>
        <a href="${pageContext.request.contextPath}/FindCategoryServlet?name=平板">平板</a>
        <a href="${pageContext.request.contextPath}/FindCategoryServlet?name=笔记本">笔记本</a>
        <a href="${pageContext.request.contextPath}/FindCategoryServlet?name=配件">配件</a>
        <span>
          <c:if test="${not empty user}">
              <a class="user" href="${pageContext.request.contextPath}/OrderFindByIdServlet?id=${user.id}" >${user.username}</a>
              <a href="${pageContext.request.contextPath}/LogOutServlet">注销</a>
          </c:if>
          <c:if test="${ empty user}">
              <a class="signin" href="${pageContext.request.contextPath}/login.jsp">登录</a>
              <a class="signup" href="${pageContext.request.contextPath}/login.jsp">注册</a>
          </c:if>
        </span>
    </nav>

</header>

<div id="carousel-example-generic">
    <div class="carousel-inner">
        <div class="item active" id ="item1">
            <img src="img/iphone_square_large.jpg" alt="..." onclick="phone('手机')">
            <div class="carousel-caption">

            </div>
        </div>

    </div>

</div>
<section class="sec2">
    <h3>手机</h3>
    <div>
        <c:set var="s" value="100"></c:set>
        <c:forEach items="${pro1}" var="p" begin="0" end="4" step="1">
            <c:if test="${fn:substring(p.c3code,0,2)=='51' }">
                <div class="product">
                    <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                    <span class="brand">${p.name}</span>
                    <span class="title">${p.description}</span>
                    <span class="price">${p.price}</span>
                    <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}">
                        <em class="fast-buy"></em>
                    </a>
                </div>
            </c:if>
        </c:forEach>
    </div>
</section>

<section class="sec2">
    <h3>平板</h3>
    <div>
        <c:forEach items="${pro2}" var="p" varStatus="vs" begin="0" end="4" step="1">
            <c:if test="${fn:substring(p.c3code,0,2)=='52' }">
                <div class="product">
                    <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                    <span class="brand">${p.name}</span>
                    <span class="title">${p.description}</span>
                    <span class="price">${p.price}</span>
                    <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}"><em class="fast-buy"></em></a>
                </div>
            </c:if>
        </c:forEach>
    </div>
</section>
<section class="sec2">
    <h3>笔记本</h3>
    <div>
        <c:forEach items="${pro3}" var="p" varStatus="vs" begin="0" end="4" step="1">
            <c:if test="${fn:substring(p.c3code,0,2)=='53' }">
                <div class="product">
                    <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                    <span class="brand">${p.name}</span>
                    <span class="title">${p.description}</span>
                    <span class="price">${p.price}</span>
                    <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}"><em class="fast-buy"></em></a>
                </div>
            </c:if>
        </c:forEach>
    </div>
</section>
<section class="sec3">
    <h3>配件</h3>
    <div class="wrap">
        <div class="slide">
            <ul>
                <c:forEach items="${pro4}" var="p" begin="0" end="4" step="1">
                    <c:if test="${fn:substring(p.c3code,0,2)=='54' }">
                        <li>
                            <div class="product">
                                <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                                <span class="brand">${p.name}</span>
                                <span class="title">${p.description}</span>
                                <span class="price">${p.price}</span>
                                <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}"><em class="fast-buy"></em></a>
                            </div>
                        </li>
                    </c:if>
                </c:forEach>

            </ul>
            <ul>
                <c:forEach items="${pro4}" var="p" begin="0" end="4" step="1">
                    <c:if test="${fn:substring(p.c3code,0,2)=='54' }">
                        <li>
                            <div class="product">
                                <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                                <span class="brand">${p.name}</span>
                                <span class="title">${p.description}</span>
                                <span class="price">${p.price}</span>
                                <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}"><em class="fast-buy"></em></a>
                            </div>
                        </li>
                    </c:if>
                </c:forEach>

            </ul>

        </div>
    </div>
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
