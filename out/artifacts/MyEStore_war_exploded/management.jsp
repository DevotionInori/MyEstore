
<%--
  Created by IntelliJ IDEA.
  User: 宋亚东
  Date: 2020/6/17
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>订单管理</title>
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
            height: 100px;
            background: #eee;
            border-top: #686868 1px dashed;
        }
        section.order .order-content ul:first-child {
            border-top: transparent 1px dashed;
        }

        section.order .order-content ul li{
            float: left;
            height: 100px;
        }

        section.order .order-content ul li:first-child{
            width: 300px;
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
            width: 270px;
            padding: 25px;
        }


        section.order .order-content ul li:nth-child(5){
            width: 130px;
            padding: 25px ;
        }

        section.order .order-content ul li:nth-child(6){
            width: 100px;
            padding: 25px ;
        }

        section.order .order-content ul li:nth-child(7){
            width: 100px;
            padding: 25px ;
        }


        section.order .title ul li:first-child{
            width: 300px;
        }

        section.order .title ul li:nth-child(2){
            width: 150px;
        }

        section.order .title ul li:nth-child(3){
            width: 150px;
        }

        section.order .title ul li:nth-child(4){
            width: 270px;
        }

        section.order .title ul li:nth-child(5){
            width: 130px;
        }
        section.order .title ul li:nth-child(6){
            width: 100px;
        }
        section.order .title ul li:nth-child(7){
            width: 100px;
            border-right: #8ca2f8 1px solid;
        }



    </style>
</head>
<body>

<section class="order">
    <div class="head">订单</div>
    <div class="title">
        <ul>
            <li>商品名称</li>
            <li>价格</li>
            <li>订单用户</li>
            <li>地址</li>
            <li>电话</li>
            <li>购买时间</li>
            <li>发货状态</li>
        </ul>
        </ul>
    </div>


    <ul class="order-content">

        <c:forEach items="${orders}" var="o" varStatus="vs">
            <ul>
                <li><div style="width: 300px">${o.description}</div></li>
                <li><span class="price">${o.money}</span></li>
                <li>${o.username}</li>
                <li><span class="order-count">${o.receiverinfo}</span></li>
                <li>${o.telephone}</li>
                <li>${o.ordertime}</li>
                <li>
                    <c:if test="${o.shippingState==0}">
                        未发货
                    </c:if>
                    <c:if test="${o.shippingState==1}">
                        已发货
                    </c:if>
                </li>

            </ul>
            <c:if test="${o.shippingState==0}">
                <a href="${pageContext.request.contextPath}/ShipOrderServlet?id=${o.id}">
                    <input type="submit" value="发货" style="background-color: blue;color: white;border-radius: 5px;">
                </a>
            </c:if>

        </c:forEach>

    </ul>
</section>


</body>
</html>
