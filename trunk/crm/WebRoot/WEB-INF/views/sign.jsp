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
	<div class="navbar navbar-fixed-top " id="topbar">
			<div class="navbar-inner" >
				<div class="container" style="height:40px">
					<a class="brand">
						<img src="img/logo.png"   />
					</a>
					
				</div>
			</div>
	</div>
	
	<div class="container wall" style="margin-top:60px">
			<h4 class="page-header">
				快速注册，立即体验！
			</h4>
		
<div class="row">
	<div class="span8">
	<form accept-charset="UTF-8" action="sign.jspx" class="simple_form form-horizontal" id="user-form" method="post" >
	
	
		<div class="control-group string optional"><label class="string optional control-label" for="user_company_name"> * 公司名称</label><div class="controls">
		<input class="string optional" id="company" name="orgName.name" size="50" type="text" /><p class="help-block">或者团队，机构，学校等</p></div></div>
	
		<div class="control-group string optional"><label class="string optional control-label" for="user_name"> 姓名</label><div class="controls">
		<input class="string optional" id="user_name" name="user.username" size="50" type="text" /></div></div>
		<div class="control-group email required"><label class="email required control-label" for="user_email"><abbr title="required">*</abbr> Email</label><div class="controls">
		<input class="string email required" id="email" name="user.email" size="50" type="text"  /><p class="help-block" id="email-help">用来接收激活邮件，以及登录</p></div></div>
		<div class="control-group password required"><label class="password required control-label" for="user_password"><abbr title="required">*</abbr> 密码</label><div class="controls">
		<input class="password required" id="password" name="user.password" size="50" type="password" x-webkit-speech=""/><p class="help-block" id="password-help">至少6位并且包含1位数字的密码组合更安全</p></div></div>
		<div class="control-group password optional"><label class="password optional control-label" for="user_password_confirmation">* 再次输入密码</label><div class="controls">
		<input class="password optional" id="password-repeat"  size="50" type="password" x-webkit-speech=""/></div></div>
	
	
</form>
<div class="form-actions" >
	<a href="index.jspx" class="btn btn-inverse" style="margin-left:140px">返回登陆</a>
    <button class="btn btn-success" id="create">创建帐号</button>
		
  </div>
</div>
	<div class="span4">
		<div class="well">
			<h2>感谢您选择 WorkXP！</h2>
			<p></p>
			<h3>安全可靠</h3>
			<p>您的数据会加密存储，每日备份</p>
			<h3>优质的服务</h3>
			<p>您可以随时得到准确而友好的帮助</p>
		</div>
	</div>
</div>

	
	</div>
	
	
	<script type="text/javascript">
		$(document).ready(function(){
			
			
			$("#email").blur(function(){
			var email = $("#email").val();
			var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
			var i = reg.test(email);
			if(i){
				$.ajax({
					url:"checkemail.jspx",
					type:"POST",
					data:{
						email:email
					},
					success:function(msg){
					if(msg =="yes"){
						$("#email-help").text("恭喜你，该邮箱可用！");
						$("#email-help").css("color","green");
					}else{
						$("#email-help").text("很抱歉，该邮箱已经被注册！");
						$("#email-help").css("color","red");
					}
					}
				});
			
			}else{
				$("#email-help").text("很抱歉，邮箱为空或者格式错误！");
				$("#email-help").css("color","red");
			}
				
			});
			
			
			$("#create").click(function(){
				var email = $("#email").val();
				var pwd = $("#password").val();
				var pwdr = $("#password-repeat").val();
				var co = $("#company").val();
				
				if(email.trim() == "" || pwd.trim() == "" || pwdr.trim() == "" || co.trim() == ""){
					alert("信息不完整或者格式错误！");
				}else if(pwd.trim() != pwdr.trim()){
					$("#password-help").text("两次输入的密码不一致！");
					$("#password-help").css("color","red");
				}else{
					$("#user-form").submit();
				}
				
			});
			
		});
	</script>
</body>
</html>
