<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>top页面</title>
	<link rel="stylesheet" type="text/css" href="css/top.css">
  </head>
  <body>
<div id="top">
	<h1 style="text-align: center;">网上书城系统</h1>
	<div style="font-size: 14px; line-height: 14px;">
			<c:if test="${empty user }">
				  <a href="user/login.jsp" target="_parent">用户登录</a> |&nbsp; 
				  <a href="user/regist.jsp" target="_parent">用户注册</a>
			</c:if>
			<c:if test="${user!=null }">
				      用户名：${sessionScope.user.getName()}&nbsp;&nbsp;|&nbsp;&nbsp;
				  <a href="book_CarList.action" target="right">我的购物车</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				  <a href="order_myOrderList.action" target="right">我的订单</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				  <a href="user/pwd.jsp" target="right">修改密码</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				  <a href="user_exit.action" target="_parent">退出</a>	
			</c:if>
	</div>
</div> 
</body>
</html>

 
 