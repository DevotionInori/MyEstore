
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>快速购买</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <style type="text/css">

        section.order .order-content{
            width: 100%;
            margin-top: 37px;
            position: relative;
        }

        section.order .order-content ul{
            width: 1200px;
            height: 150px;
            background: #eee;
            border-top: #686868 1px dashed;
        }
        section.order .order-content ul:first-child {
            border-top: transparent 1px dashed;
        }

        section.order .order-content ul li{
            float: left;
            height: 150px;
        }

        section.order .order-content ul li:first-child{
            width: 500px;
            padding-top: 25px;
        }

        section.order .order-content ul li:nth-child(2){
            width: 150px;
            padding: 27px;
        }

        section.order .order-content ul li:nth-child(3){
            width: 150px;
            padding: 25px;
        }

        section.order .order-content ul li:nth-child(4){
            width: 150px;
            padding: 25px 150px;
        }
    </style>
</head>
<body>

<header>
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="logo"></div>
        <a href="ProductFindAllServlet">首页</a>
        <a href="/devotion/FindCategoryServlet?name=手机">手机</a>
        <a href="/devotion/FindCategoryServlet?name=平板">平板</a>
        <a href="/devotion/FindCategoryServlet?name=笔记本">笔记本</a>
        <a href="/devotion/FindCategoryServlet?name=配件">配件</a>
        <span>
            <c:if test="${not empty user }">
                <a class="user" href="${pageContext.request.contextPath}/FindAllOrderServlet?id=${user.id}" >${user.username}</a>
                <a href="${pageContext.request.contextPath}/LogOutServlet">注销</a>
            </c:if>
			<c:if test="${ empty user }">
                <a class="signin" href="${pageContext.request.contextPath}/login.jsp">登录</a>
                <a class="signup" href="${pageContext.request.contextPath}/login.jsp">注册</a>
            </c:if>
		</span>
    </nav>
</header>

<section class="order">
    <div class="head">订单</div>
    <div class="title">
        <ul>
            <li>商品名称</li>
            <li>价格</li>
            <li>地址</li>
            <li>购买时间</li>
        </ul>
        </ul>
    </div>


    <ul class="order-content">

        <c:forEach items="${orders}" var="o" varStatus="vs" begin="0" end="4" step="1">
            <ul>
                <li><div style="width: 500px">${o.description}</div></li>
                <li><span class="price">${o.money}</span></li>
                <li><span class="order-count">${o.receiverinfo}</span></li>
                <li>${o.ordertime}</li>
            </ul>
        </c:forEach>

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