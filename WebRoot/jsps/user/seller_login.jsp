<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>登录界面</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jsps/css/user/login.css">
</head>

<body>
	<div id="main">
		<div id="login1">
			<div id="login2">
				<div id="loginTopDiv">
					<span id="loginTop">购物系统登录</span>
				</div>
				<div id="form">
					<s:form action="user_login.action?flag=seller" method="post">
						<s:textfield cssStyle="width:200px;height:40px;margin:10px;" key="用户名"
							name="seller.name" />
						<s:password cssStyle="width:200px;height:40px;margin:10px;" key="密码"
							name="seller.password" />
						<s:submit cssStyle="width:50px;height:30px;margin-right: 150px;"
							value="登陆" />
					</s:form>
					<a href="login.jsp">切换为买家登陆</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
