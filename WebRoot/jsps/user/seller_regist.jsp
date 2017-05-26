<%@page import="com.zhbit.book.Action.userAction"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.zhbit.book.Domain.Seller" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>注册页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/user/regist.css">
</head>
<body>
	<div id="main">
		<div id="login1">
			<div id="login2">
				<div id="loginTopDiv">
					<span id="loginTop">购物系统注册</span>
				</div>
				<div id="form">
					<s:form action="user_register.action?flag=seller" method="post">
						<s:textfield cssStyle="width:200px;height:30px;" key="用户名" name="seller.name"/>

						<s:password cssStyle="width:200px;height:30px;" key="密码" name="seller.password"/>

						<s:textfield cssStyle="width:200px;height:30px;" key="年龄" name="seller.age" />

						<s:textfield cssStyle="width:200px;height:30px;" key="邮箱" name="seller.email" />

						<s:submit cssStyle="width:50px;height:30px;margin-right: 150px;" value="注册" />
					</s:form>
					<a href="regist.jsp">切换为买家注册</a>				
				</div>
			</div>
		</div>
	</div>
</body>
</html>
