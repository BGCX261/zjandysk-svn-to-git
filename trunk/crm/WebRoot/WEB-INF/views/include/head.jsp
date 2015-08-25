<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="navbar navbar-fixed-top">
  	<div class="navbar-inner">
	  	<div class="container-fluid" style="height:40px;font-size:13px;font-weight:bold">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" ><img alt="Workxp-logo" src="/crm/img/logo.png"></a>
				<div class="nav-collapse">
		  		<ul class="nav">
						<li class="divider-vertical"></li>
						<li class="${param.tag == 'dashboard' ? 'active' : '' }"><a href="/crm/dashboard/main.jspx">概览</a></li>
						<li class="${param.tag == 'contact' ? 'active' : '' }"><a href="/crm/contact/main.jspx">通讯录</a></li>
						<li class="${param.tag == 'task' ? 'active' : '' }"><a href="/crm/task/main.jspx">任务</a></li>
						
						<li class="${param.tag == 'chance' ? 'active' : '' }"><a href="/crm/chance/main.jspx">机会</a></li>
			    </ul>
					<ul class="nav">
						<li class="divider-vertical"></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									最近访问
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu recent-views">
											<li><a href="/people/494415" title="第一个联系人"><i class="icon-person"></i> 第一个联系人</a></li>
											<li><a href="/companies/494414" title="第二个公司"><i class="icon-company"></i> 第二个公司</a></li>
											<li><a href="/companies/494416" title="第一个公司"><i class="icon-company"></i> 第一个公司</a></li>
											<li><a href="/chances/4237" title="收购公司"><i class="icon-dollar"></i> 收购公司</a></li>
											<li><a href="/chances/4236" title="买别墅"><i class="icon-dollar"></i> 买别墅</a></li>
											<li><a href="/companies/494413" title="WorkXP"><i class="icon-company"></i> WorkXP</a></li>
								</ul>
							</li>
					</ul>
					<ul class="nav">
					  <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						    添加
						    <span class="caret"></span>
						  </a>
						  <ul class="dropdown-menu new-actions">
						    <li><a href="/crm/contact/addperson.jspx"><i class="icon-user"></i> 联系人</a></li>
								<li><a href="/companies/new"><i class="icon-th"></i> 公司</a></li>
								<li class="divider"></li>
								<li><a data-toggle="modal" href="#taskModal"><i class="icon-ok"></i> 任务</a></li>
								<!-- <li><a href="/kases/new"><i class="icon-case"></i> 项目</a></li> -->
								<li><a href="/crm/chance/main.jspx"><i class="icon-bookmark"></i> 机会</a></li>
						  </ul>
						</li>
					</ul>
					<form class="navbar-search">
						<input type="text" name="search" id="search" class="search-query mp_input" placeholder="搜索联系人或机会" autocomplete="off" x-webkit-speech=""><ul class="typeahead dropdown-menu mp_list" style="display: none; "></ul>
						<a href="/notes/search" rel="" title="搜索事件"><i class="icon-cog"></i></a>
			    </form>
					<ul class="nav pull-right">
						<li>
								<img src="downhead.jspx" style=" height:30px;width:30px;margin-top:5px;border-radius:3px" />
							</li>
						<li class="dropdown">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span id="head-name">${user.username }</span> <b class="caret"></b></a>
							<ul class="dropdown-menu settings">
								<li><a href="/crm/profile.jspx"><i class="icon-info-sign"></i> 个人信息</a></li>
								<li class="divider"></li>
								<li><a href="/crm/exit.jspx" ><i class="icon-off"></i>安全退出</a></li>
							</ul>
						</li>
						
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">管理 <b class="caret"></b></a>
									<ul class="dropdown-menu settings">
										<li><a href="/product_users"><i class="icon-user"></i> 同事</a></li>
										<li><a href="/groups"><i class="icon-list"></i> 组</a></li>
										<li class="divider"></li>
										<li><a href="/settings"><i class="icon-cog"></i> 帐号</a></li>
									</ul>
								</li>
			    </ul>
				</div>
		  </div>
	  </div>
  </div>