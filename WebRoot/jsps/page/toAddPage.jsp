<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>注册页面</title>
	<link rel="stylesheet" type="text/css" href="css/left_01.css">
  </head>
  
  <body>
   <div id="divMain">
  <div id="divTitle">
    <span id="spanTitle">添加用户</span>
  </div>
  <div id="divBody">
  <s:form action="admin_add.action" method="post">
    <table id="tableForm">
      <tr>
        <td class="tdText">姓名:</td>
        <td class="tdInput">
          <input class="inputClass" type="text" name="name"/>
        </td>
        <td class="tdError">
          <label class="errorClass" id="nameError">
          </label>
        </td>
      </tr>
      <tr>
        <td class="tdText">密码:</td>
        <td>
          <input class="inputClass" type="password" name="password" />
        </td>
        <td>
           <label class="errorClass" id="passwordError">
           </label>
        </td>
      </tr>
      <tr>
        <td class="tdText">年龄:</td>
        <td>
          <input class="inputClass" type="text" name="age" />
        </td>
        <td>
          <label class="errorClass" id="ageError">
          </label>
        </td>
      </tr>
      <tr>
        <td class="tdText">邮箱:</td>
        <td>
          <input class="inputClass" type="text" name="email"/>
        </td>
        <td>
          <label class="errorClass" id="emailError">
          </label>
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
   </s:form>
  </div>
</div>
  </body>
</html>
