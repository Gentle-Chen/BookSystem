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
		<h2>学生信息查询</h2>
		<tr>
			<th>姓名</th>
			<th>密码</th>
			<th>年龄</th>
			<th>Email</th>
			<th colspan="2">操作</th>
		</tr>
		<c:forEach items="${pageBean.list }" var="user">
			<tr>
				<td>${user.name }</td>
				<td>${user.password }</td>
				<td>${user.age }</td>
				<td>${user.email }</td>
				<td><a
					href="${pageContext.request.contextPath}/userAction1!delete.action?id=${user.id }">删除</a>
				</td>
				<td><a href="${pageContext.request.contextPath}/userAction1!edit.action?id=${user.id }">修改</a></td>
			</tr>
		</c:forEach>
	</table>

	<div id="div1">
		共[<b>${pageBean.totalCount }</b>]条记录,[<b>${pageBean.totalPage }</b>]页,
		当前第[<b>${pageBean.currentPage }</b>]页
		<c:if test="${pageBean.currentPage!=1 }">
   			[<a
				href="userAction1!findAll.action?currentPage=${pageBean.currentPage-1 }">前一页</a>]
   		</c:if>
		<c:if test="${pageBean.currentPage != pageBean.totalPage }">
   			[<a
				href="userAction1!findAll.action?currentPage=${pageBean.currentPage+1 }">后一页</a>]
   		</c:if>

	</div>
</body>
</html>
