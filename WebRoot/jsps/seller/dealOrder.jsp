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
			<th>订单用户</th>
			<th>订单状态</th>
			<th>处理订单</th>
		</tr>
		<c:forEach items="${requestScope.list}" var="order">
			<tr>
				<td><a href="order_item.action?orderId=${order.orderId }">${order.orderNumber }</a></td>
				<td style="width: 200px;">${order.orderTime }</td>
				<td>${order.total }</td>
				<td>${order.address }</td>
				<td>${order.user.getName() }</td>
				<td>
				<c:choose>
					<c:when test="${order.isDeal eq 0}">等待发货</c:when>
					<c:when test="${order.isDeal eq 1}">等待确认</c:when>
					<c:when test="${order.isDeal eq 2}">交易成功</c:when>
					<c:when test="${order.isDeal eq 3}">已取消</c:when>
				</c:choose>	
				</td>
				<c:if test="${order.isDeal eq 0}">
				<td><a href="order_dealOrder.action">发货</a></td>
				</c:if>
				<c:if test="${order.isDeal eq 1}">
				<td bgcolor="gray">完成发货</td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
