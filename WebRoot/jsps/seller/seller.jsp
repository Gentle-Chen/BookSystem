<%@ page contentType="text/html;charset=GBK" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>My JSP 'seller.jsp' starting page</title>
  </head>
  
  <body>
    <div style="font-size: 14px; line-height: 14px;">
			<c:if test="${empty seller }">
				  <a href="user/login.jsp" target="_parent">�û���¼</a> |&nbsp; 
				  <a href="user/regist.jsp" target="_parent">�û�ע��</a>
			</c:if>
			<c:if test="${seller!=null }">
				      �û�����${sessionScope.user.getName()}&nbsp;&nbsp;|&nbsp;&nbsp;
				  <a href="order_getOrder.action">������Ϣ</a>
				  <a href="user_exit.action" target="_parent">�˳�</a>	
			</c:if>
	</div>
  </body>
</html>
