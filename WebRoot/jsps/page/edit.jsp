<%@page import="com.zhbit.book.Domain.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<html>
  <head>
    <title>学生信息修改页面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/left_01.css">
  </head>
  <body>
	<form action="admin_update.action" method="post">
	<input type="hidden" name="id" value="${requestScope.user.id }">
    <table id="tableForm">
      <tr>
        <td class="tdText">姓名:</td>
        <td class="tdInput">
          <input class="inputClass" type="text" name="name" value="${requestScope.user.name}"/>
        </td>
      </tr>
      <tr>
        <td class="tdText">密码:</td>
        <td>
          <input class="inputClass" type="password" name="password" value="${requestScope.user.password}"/>
        </td>
      </tr>
      <tr>
        <td class="tdText">年龄:</td>
        <td>
          <input class="inputClass" type="text" name="age" value="${requestScope.user.age }" />
        </td>
      </tr>
      <tr>
        <td class="tdText">邮箱:</td>
        <td>
          <input class="inputClass" type="text" name="email" value="${requestScope.user.email }" />
        </td>
      </tr>
 
     
      <tr>
        <td></td>
        <td>
          <input class="bnt" type="submit" name="" value="保存">
          <input class="bnt" type="reset" name="" value="取消">
        </td>
      </tr>
    </table>
   </form>
  </body>
</html>
