<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>My JSP 'left_01.jsp' starting page</title>
	<link rel="stylesheet" type="text/css" href="../css/left_01.css">
  </head>
  
  <body>
   <div id="divMain">
  <div id="divTitle">
    <span id="spanTitle">新用户注册</span>
  </div>
  <div id="divBody">
  <form action="/test2/stuServlet" method="post">
    <table id="tableForm">
      <tr>
        <td class="tdText">学号：</td>
        <td class="tdInput">
          <input class="inputClass" type="text" name="stuNum"/>
        </td>
        <td class="tdError">
          <label class="errorClass" id="stuNumError"></label>
        </td>
      </tr>
      <tr>
        <td class="tdText">姓名：</td>
        <td>
          <input class="inputClass" type="text" name="stuName" />
        </td>
        <td>
          <label class="errorClass" id="stuNameError"></label>
        </td>
      </tr>
      <tr>
        <td class="tdText">年龄：</td>
        <td>
          <input class="inputClass" type="text" name="stuAge" />
        </td>
        <td>
          <label class="errorClass" ></label>
        </td>
      </tr>
      <tr>
        <td class="tdText">Email：</td>
        <td>
          <input class="inputClass" type="text" name="stuEmail"/>
        </td>
        <td>
          <label class="errorClass" id="stuEmailError"></label>
        </td>
      </tr>
 
     
      <tr>
        <td></td>
        <td>
          <input class="bnt" type="submit" name="" value="注册">
          <input class="bnt" type="reset" name="" value="取消">
        </td>
        <td>
          <label></label>
        </td>
      </tr>
    </table>
   </form>
  </div>
</div>
  </body>
</html>
