<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <title>My JSP 'main.jsp' starting page</title>
  </head>
 <frameset rows="20%,*" frameborder="0" >
	<frame src="../top.jsp" scrolling="no" name="top">
	<frameset cols="25%,*">
		<frame src="../left.jsp" scrolling="no" name="left">
		<frame src="../right.jsp" name="right">
	</frameset>
</frameset>

</html>
 