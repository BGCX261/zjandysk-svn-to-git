<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<jsp:param value="no" name="tag"/>
	</jsp:include>
	<div class="row container" style="margin-top:60px">
		
			
				<div class="wall span8" style="padding:20px 100px 40px 100px;">
					<div class="page-header header" >
						
						
	<h4>修改个人信息</h4><br/>
	
	<ul class="nav nav-tabs details-tab" >
    <li class="active"><a href="#basic-info" data-toggle="tab">基本信息</a></li>
    <li class=""><a href="#password" data-toggle="tab">修改密码</a></li>
		<li class=""><a href="#avatar" data-toggle="tab">修改头像</a></li>
  </ul>

					
						
<div class="tab-content">
  <div class="tab-pane active" id="basic-info">
    
		<form  class="simple_form user-form" id="edit_user_5837" >
		  <div class="control-group string optional"><label class="string optional control-label" for="user_name"> 姓名</label><div class="controls">
		  <input class="string optional" id="username" name="user.username" size="50" type="text" value="${user.username }" x-webkit-speech=""></div></div>
			<div class="control-group email optional"><label class="email optional control-label" for="user_email"> Email</label><div class="controls">
			<input class="string email optional" id="email"  readonly="readonly" size="50" type="email" value="${user.email }" >
			<p class="help-block">如需修改Email，请与客服联系 739042544@qq.com</p></div></div>
		  

		 
		  	
		 
</form><button class="btn btn-success" id="basic">保存修改</button>  </div>
  <div class="tab-pane" id="password">
    
		<form  class="simple_form edit_user"  >
		  <div class="control-group password optional"><label class="password optional control-label" > 当前密码</label><div class="controls">
		  <input class="password optional" id="curpwd"  size="50" type="password" /></div></div>
			<div class="control-group password optional"><label class="password optional control-label" > 设置新密码</label><div class="controls">
			<input class="password optional" id="newpwd" size="50" type="password" /></div></div>
		  <div class="control-group password optional"><label class="password optional control-label" > 再输入一次新密码</label><div class="controls">
		  <input class="password optional" id="repwd"  size="50" type="password"/></div></div>
		  
		
</form>  <button class="btn btn-success" id="pwd">保存修改</button> </div>
  <div class="tab-pane" id="avatar">
    
		<form action="loadhead.jspx" class="simple_form edit_user" enctype="multipart/form-data"  method="post" >
			<img src="downhead.jspx" style="border-radius:3px"/>		
			<div class="control-group string optional"><div class="controls">
				
					<input name="headpic" type="file"/>
					<p class="help-block">从本地电脑选择一张大头照 (格式为png,gif,jepg,jpg)</p></div></div>			
			
		  <input class="btn btn-success" type="submit"value="保存修改"/>
		  
</form> 	</div>
</div>


					</div>
				</div>
			</div>
			
	<script type="text/javascript">
		$(document).ready(function(){
			$("#basic").click(function(){
				var username = $("#username").val().trim();
				if(username == ""){
					alert("用户名不能为空！");
				}else{
					$.ajax({
						url:"editname.jspx",
						type:"POST",
						data:{username:username},
						success:function(msg){
							if(msg == "ok"){
								$("#head-name").text(username);
								alert("名字修改成功！");
							}else{
								alert("名字未能修改成功！");
							}
							
						}
					});
				}
			});
			
			
			$("#pwd").click(function(){
				var curpwd = $("#curpwd").val().trim();
				var newpwd = $("#newpwd").val().trim();
				var repwd = $("#repwd").val().trim();
				
				if(curpwd == "" || newpwd == "" || repwd == ""){
					alert("密码不能为空！");
					
				}else if(newpwd != repwd){
					alert("两次输入的密码不一致！");
				}
				else{
					$.ajax({
						url:"editpwd.jspx",
						type:"POST",
						data:{password:curpwd,newpwd:newpwd},
						success:function(msg){
							if(msg == "ok"){
								
								alert("密码修改成功！");
							}else{
								alert("原密码错误！");
							}
							
						}
					});
				}
			});
			
			
			
		});
	</script>
	
	
</body>
</html>





