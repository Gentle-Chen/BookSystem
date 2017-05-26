<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
  <head>
    <title>My JSP 'left_01.jsp' starting page</title>
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jsps/css/link.css">
  </head>
  
  <body>
  <body>
<table border="1">
		<h2>图书信息查询</h2>
		<!-- <tr>
			<th>书名</th>
			<th>价钱</th>
			<th>库存量</th>
			<th>出版社</th>
			<th>图片</th>
		</tr> -->
		<c:forEach items="${bookBean.list }" var="book">
				<%-- <td>${book.bookName }</td>
				<td>${book.bookPrice }</td>
				<td>${book.number }</td> --%>
				<td>
					<a href="book_show.action?bookId=${book.bookId}"><img src="${pageContext.request.contextPath}/${book.photo}"/></a>
				</td>		
		</c:forEach>

	</table>
	
	
	<div id="div1">
		共[<b>${bookBean.totalCount }</b>]条记录,[<b>${bookBean.totalPage }</b>]页,
		当前第[<b>${bookBean.currentPage }</b>]页
		
		<c:if test="${bookBean.currentPage!=1 }">
			[<a
				href="book_bookListPage.action?currentPage=${bookBean.currentPage-1 }">前一页</a>]
		</c:if>
		
   			
   		
		<c:if test="${bookBean.currentPage!=bookBean.totalPage}">
			[<a
				href="book_bookListPage.action?currentPage=${bookBean.currentPage+1 }">后一页</a>]
		</c:if>
   			
   		

	</div>
</body>
  </body>
</html>
