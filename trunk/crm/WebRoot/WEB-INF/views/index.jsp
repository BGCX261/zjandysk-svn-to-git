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
				<div class="container" style="height:40px;font-size:13px;font-weight:bold">
					<a class="brand">
						<img src="img/logo.png"   />
					</a>
					
				</div>
			</div>
	</div>

	<div class="row container">
		<div class=" container span8" style="margin-top:60px">
			<div>
				<div class="title">
					<h1>愉快高效的人脉管理与团队协作</h1>
				</div>
		
		<div class="carousel " id="myCarousel" >
    	<!-- Carousel items -->
	    <div class="carousel-inner" >
	    	<div class="item active " >
		    	<img src="img/intro-slide1.png"/>
					<div class="carousel-caption">
		        <h4>共享的企业通讯录</h4>
		      </div>
					<div class="carousel-desc">
						<ul>
							<li>完备的通讯录功能，帮助企业有效管理和累积人脉资源</li>
							<li>精确的权限控制，可以对每一个联系人设置访问权限</li>
							<li>灵活的标签功能，方便对联系人进行分类整理 </li>
							<li>方便记录与安排跟联系人相关的事情 </li>
							<li>重要日期与待办事宜的提醒功能</li>
						</ul>
					</div>
		    </div>
		    <div class="item" >
		    	<img src="img/intro-slide2.png"/>
					<div class="carousel-caption">
		        <h4>简单高效的团队协作</h4>
		      </div>
					<div class="carousel-desc">
						<ul>
							<li>及时了解团队的最新动态，增进同事间相互了解，让团队协作更紧密 </li>
							<li>方便分享工作内容和成果，减少沟通成本 </li>
							<li>随时分享好的想法，有问题可以及时得到团队帮助 </li>
							<li>同事之间可以相互安排任务，并且及时收到任务提醒 </li>
							<li>团队以及每个人的工作过程和结果自然呈现，可以方便地查询和整理</li>
						</ul>
					</div>
		    </div>
		    <div class="item">
		    	<img src="img/intro-slide3.png"/>
					<div class="carousel-caption">
		        <h4>安全可靠的云存储</h4>
		      </div>
					<div class="carousel-desc">
						<ul>
							<li>加密访问，保证数据私密安全</li>
							<li>自动备份，确保信息永不丢失</li>
						</ul>
					</div>
		    </div>
				<div class="item">
		    	<img src="img/intro-slide4.png"/>
					<div class="carousel-desc">
						<ul>
							<li>随时随地了解团队动态，与团队保持紧密联系</li>
							<li>充分利用时间片段，及时记录与安排工作</li>
						</ul>
					</div>
					<div class="carousel-caption">
		        <h4>便捷的移动办公</h4>
		      </div>
		    </div>
	    </div>
	    <!-- Carousel nav -->
	    <a data-slide="prev" href="#myCarousel" class="carousel-control left">‹</a>
	    <a data-slide="next" href="#myCarousel" class="carousel-control right">›</a>
    </div>
		<script charset="utf-8" type="text/javascript">
			$('#myCarousel').carousel();
			
		</script>
		
		<style media="screen" type="text/css">
			#myCarousel {
				padding: 0;
			}
			#myCarousel {
				text-align: center;
			}
			.carousel-caption {
			  background: none repeat scroll 0 0 rgba(0, 0, 0, 0.5);
			}
			.carousel-desc {
				left: 40px;
				top: 20px;
				position: absolute;
				text-align: left;
				color: gray;
				font-weight: bold;
			}
			.carousel-desc ul li {
				padding: 5px 0;
			}
			.carousel-control.right {
				right: 0;
				border-radius: 15px 0 0 15px;
			}
			.carousel-control.left {
				left: 0;
				border-radius: 0 15px 15px 0;
			}
			.title {
				text-align: center;
			}
			.title h1 {
				color: #51A351;
				margin-bottom: 20px;
			}
		</style>
	</div>
		</div>

		<div class="span4" style="margin-top:115px">
			<form class="wall" style="padding:40px">
				<div class="alert alert-error " style="display:none;width:px">
					<a class="close" href="javascript:;">×</a> <strong></strong>
				</div>
				
				<label style="font-weight:bold">邮箱</label> 
				<input type="text" placeholder="请输入邮箱" class="span3" id="name" name="name" /> <span class="help-block"></span>
				<label style="font-weight:bold">密码</label>
				<input type="password" placeholder="请输入密码" class="span3" id="pwd" name="password" /><span class="help-block"></span>
				<br /> <a class="btn btn-primary" style="font-weight:700" id="login" ><i class="icon-share-alt icon-white"></i>登入系统</a>
			</form>
			<div style="">
				<a  class="btn-large  btn-success btn" style="width:90%;font-weight:bold" href="tosign.jspx">注册新用户</a>
			</div>
		</div>

	</div>



	
	



	<script type="text/javascript">
		$(document).ready(function() {
			$(".close").click(function() {
				$(".alert-error").slideUp(200);
			});
		
			$("#login").click(function() {
				var name = $("#name").val();
				var pwd = $("#pwd").val();
				
				if (name.trim() == "" || pwd.trim() == "") {
					
					$(".alert-error").slideDown(200);
					$("strong").text("邮箱或者密码不能为空！");
				}else if(name.length > 100) {
					$(".alert-error").slideDown(200);
					$("strong").text("邮箱名不超过100个字符！");
				}else if(pwd.length > 18){
					$(".alert-error").slideDown(200);
					$("strong").text("密码不得超过18位！");
				}
				
				else {
					$.ajax({
							url : "login.jspx",
							type : "POST",
							data : {
								
								email : name,
								password : pwd
								
							},
							beforeSend:function(){
								$("#login").text("登录中...");
							},
							success:function(msg){
								$("#login").text("登入系统");
								if(msg == 10002) {
									$(".alert-error").slideDown(200);
										
										$("strong").text("邮箱或者密码错误!");
										 $("#pwd").val("");
									} else if(msg == 10001) {
										$(".alert-error").slideDown(200);
										$("strong").text("该邮箱未激活！");
										 $("#pwd").val("");
									}else if(msg == 10000){
										window.location.href = "/crm/dashboard/main.jspx";
									}
								}
						});
				}
			});

		});
	</script>
</body>
</html>