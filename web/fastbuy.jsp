
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
    <% String rein = "";%>
    <script type="javascript">




    </script>
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
        <span>
            <c:if test="${not empty user }">
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

<section class="order">
    <div class="head">订单</div>
    <div class="title">
        <ul>
            <li>商品名称</li>
            <li>单价</li>
            <li>数量</li>
            <li>总价</li>
        </ul>
        </ul>
    </div>


    <ul class="order-content">

        <ul>
            <li>
                <img src="/upload/${sessionScope.pro.imgurl}">
            </li>
            <li><div class="order-details">${sessionScope.pro.description}</div></li>
            <li><span class="price">${sessionScope.pro.price}</span></li>
            <li><span class="order-count">1</span></li>
        </ul>
        <c:set value="${sessionScope.pro.price}" var="money"></c:set>
        <div class="order-sum">${sessionScope.pro.price}</div>
    </ul>
    <div class="order-foot">
        <ul>
            <li>
                <div class="order-adress">
                <input aria-label="送货地址" placeholder="送货地址" type="text" id="receiverinfo">
                </div>
            </li>
            <li><a class="sum-btn" onclick="window.location.href='${pageContext.request.contextPath}/AddOrderServlet?money=${sessionScope.pro.price}&receiverinfo='+document.getElementById('receiverinfo').value;" >生成订单</a></li>
        </ul>
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