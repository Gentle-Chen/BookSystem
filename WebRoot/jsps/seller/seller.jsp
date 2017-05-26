<%@ page contentType="text/html;charset=GBK" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>My JSP 'seller.jsp' starting page</title>
  </head>
  
  <body>
    <div style="font-size: 14px; line-height: 14px;">
			<c:if test="${empty seller }">
				  <a href="user/login.jsp" target="_parent">用户登录</a> |&nbsp; 
				  <a href="user/regist.jsp" target="_parent">用户注册</a>
			</c:if>
			<c:if test="${seller!=null }">
				      用户名：${sessionScope.user.getName()}&nbsp;&nbsp;|&nbsp;&nbsp;
				  <a href="order_getOrder.action">订单信息</a>
				  <a href="user_exit.action" target="_parent">退出</a>	
			</c:if>
	</div>
  </body>
</html>
