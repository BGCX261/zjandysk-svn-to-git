<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<link rel="stylesheet" href="/crm/css/bootstrap.min.css" />
	<script type="text/javascript" src="/crm/js/jquery.js"></script>
	<script type="text/javascript" src="/crm/js/bootstrap.min.js"></script>
	<title></title>
</head>
<body>
	<jsp:include page="include/head.jsp" >
		<jsp:param value="contact" name="tag"/>
	</jsp:include>
	
	<div class="container" style="margin-top:60px">
		<div class="row ">
			<div class="span12">
				<div class="wall screen">
					<h4 class="page-header">联系人</h4>
					<c:forEach items="${booklist }" var="book">
					<c:if test="${book.co eq '0' }">联系人：${book.name } → 联系人所在公司：${book.company }<br/></c:if>
					<c:if test="${book.co eq '1' }">公司：${book.name }<br/></c:if>
				</c:forEach>
				</div>
				
	</div></div></div>
</body>
</html>





