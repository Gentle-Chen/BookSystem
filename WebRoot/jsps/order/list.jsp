<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>显示信息页面</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jsps/css/link.css">
</head>

<body>
	<table border="1">
		<h2>订单信息</h2>
		<tr>
			<th>订单号</th>
			<th>订单日期</th>
			<th>总价</th>
			<th>地址</th>
			<th>处理状态</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list }" var="order">
			<tr>
				<td><a href="order_item.action?orderId=${order.orderId }">${order.orderNumber }</a></td>
				<td style="width: 200px;">${order.orderTime }</td>
				<td>${order.total }</td>
				<td>${order.address }</td>
				<td>
				<c:choose>
					<c:when test="${order.isDeal eq 0}">等待付款</c:when>
					<c:when test="${order.isDeal eq 1}">准备发货</c:when>
					<c:when test="${order.isDeal eq 2}">等待确认</c:when>
					<c:when test="${order.isDeal eq 3}">交易成功</c:when>
					<c:when test="${order.isDeal eq 4}">已取消</c:when>
				</c:choose>	
				</td>
				<td><a
					href="order_deleteOrder.action?orderId=${order.orderId }">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
