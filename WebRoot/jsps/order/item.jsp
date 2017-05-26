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
		<h2>订单详细信息</h2>
		<tr>
			<th>序列号</th>
			<th>图书名称</th>
			<!-- <th>图书图片</th> -->
			<th>图书价格</th>
			<th>购买数量</th>
			<th>出版社</th>
		</tr>
		<c:forEach items="${item }" var="item" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td style="width: 180px;">${item.book.bookName }</td>
				<%-- <td><img alt="" src="${pageContext.request.contextPath}/${item.book.photo }"></td> --%>
				<td>${item.book.bookPrice }</td>
				<td>${item.book.number }</td>
				<td style="width: 180px;">${item.book.publishName }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
