<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>left页面</title>
	<link rel="stylesheet" type="text/css" href="css/left.css">
  </head>
  <body>
   <div id="left">
		<ul>
			<a href="admin_toAddPage.action" target="right"><li>学生信息注册</li></a>
			<a href="admin_list.action" target="right"><li>学生信息查询</li></a>
			<a href="admin_listPage.action?currentPage=1" target="right"><li>分页查询</li></a>
			<a href="book_bookListPage.action?currentPage=1" target="right"><li>图书信息查询</li></a>
			<a href="book_toAddBookPage.action" target="right"><li>添加图书</li></a>
			<li>运动/户外</li>
			<li>汽车/汽车用品</li>
			<li>母婴/玩具/乐器</li>
			<li>食品/酒类/生鲜/特产</li>
			<a href="order_orderList.action"><li>图书/音像/电子书</li></a>
		</ul>
	</div>
  </body>
</html>
