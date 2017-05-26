<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.zhbit.book.Domain.User" %>
<html>
  <head>
    <title>My JSP 'left_01.jsp' starting page</title>
	<link rel="stylesheet" type="text/css" href="../css/left_05.css">
  </head>
  
  <body>
   <div id="div1">
		<img src="../pic/04.jpg">
		 <p>
    	总有一个地方，一辈子不会再提起，却也一辈子都不会忘记。总有一个人，一句对不起，
    	让你心痛，刻骨铭心。总有一段情，一直住在心里，却告别在生活里。忘不掉的是回忆，
    	继续的是生活，错过的，就当是路过吧。来往身边出现了很多人，总有一个位置，一直没有变。看看温暖的阳光，偶尔还是会想一想。
    </p>
	</div>
	<%
		User user =(User) request.getSession().getAttribute("user1");
		out.print(user);
	 %>
  </body>
</html>
