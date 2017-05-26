<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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


