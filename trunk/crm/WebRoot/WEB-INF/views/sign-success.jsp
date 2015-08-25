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
	<div class="navbar navbar-fixed-top " id="topbar">
			<div class="navbar-inner" >
				<div class="container" style="height:40px">
					<a class="brand">
						<img src="img/logo.png"   />
					</a>
					
				</div>
			</div>
	</div>
	
	<div class="container" style="margin-top:60px">
			<h4 class="page-header">
				感谢您注册 WorkXP！
			</h4>
		
	<div class="alert alert-success">
		您将收到一封确认邮件。请检查您的邮箱<span style="color:black;font-weight:bold">${email }</span>,按邮件中的提示完成注册。(温馨提示：可以先在垃圾邮件中找一找)<br/>
		
		
		<a href="index.jspx">返回登录页面</a>  |  <a href="reemail.jspx?email=${email }">再发一封</a>
		
		
	</div>

	
	</div>
</body>
</html>


