<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
  <head>
    <title>CRM</title>
	<link rel="stylesheet" href="/crm/css/bootstrap.min.css" />
	<script type="text/javascript" src="/crm/js/jquery.js"></script>
	<script type="text/javascript" src="/crm/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$('.dropdown-toggle').dropdown();
	</script>
	<style type="text/css">
		
	</style>
  </head>
  
  <body>
   	<%@ include file="include/head.jsp" %>
 	<div class="container-fluid" style="margin-top:40px">
 		<div class="row-fluid">
	 		<div class="span8" style="margin-top:10px;">
	 			<div class="content" style="height:auto;border:1px #ccc solid;">
	 				<div class="head well" style="padding:10px 8px 0 10px;">
	 					<div style="float:left;">
	 						<span><h3>最新动态</h3></span>
	 					</div>
	 					<div style="float:right;">
		 					<form class="form-inline">
						      <label>显示</label>
				              <select class="span2">
				                <option>所有同事</option>
				                <option>我</option>
				                <option>3</option>
				              </select>
				              <label class="control-label">的</label>
				              <select class="span2">
				                <option>所有动态</option>
				                <option>任务动态</option>
				                <option>机会动态</option>
				                <option>事件动态</option>
				                <option>邮件动态</option>
				              </select>
					         </form>
				         </div>
				         <div style="clear:both;"></div>
	 				</div>
	 				
	 				<div style="padding:0 10px 10px 10px;">
	 					<table class="table">
						    <thead>
							    <tr>
								    <th width="10%"></th>
								    <th width="80%"></th>
								    <th width="10%"></th></tr>
						    </thead>
						    <tbody>
							    <tr>
								    <td>√</td>
								    <td>
										<p style="color:#049cdb;"><strong>workxp</strong></p>
										注册了账号<sapn style="color:#999">由Tom添加</sapn>
									</td>
								    <td>昨天</td></tr>
							    <tr>
								    <td>√</td>
								    <td>
										<p style="color:#049cdb"><strong>workxp</strong></p>
										试用：通讯录<sapn style="color:#999">由Tom完成</sapn>
									</td>
								    <td>今天</td></tr>
						    </tbody>
						</table>
	 				</div>
	 			</div>
			</div>
 			
			<div class="span4" style="margin-top:10px;">
				<div class="well" style="height:auto;border:1px #ccc solid;padding:0 10px 10px 10px;">
					<table class="table">
					    <thead>
						    <tr>
						    <th width="80%">您的日程安排</th>
						    <th width="20%"><a href="#myModal" data-toggle="modal">添加任务</a></th>
						    </tr>
					    </thead>
					    <tbody>
						    <tr>
							    <td>本周</td>
							    <td></td></tr>
						    <tr>
							    <td>
									<label class="checkbox">
										<input type="checkbox"/>事件一
									</label>
									<label class="checkbox">
										<input type="checkbox"/>事件二
									</label>
								</td>
							    <td></td></tr>
					    </tbody>
					</table>
					
					 <%--添加任务--%>
					<div id="myModal" class="modal fade">
						<div class="modal-header">
							<a class="close" data-dismiss="modal">×</a>
							<h3>添加一个任务</h3>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" action="#" method="post">
						          <div class="control-group">
						            <label for="input01" class="control-label">任务描述</label>
						            <div class="controls">
						              <textarea rows="3" id="textarea" class="input-xlarge"></textarea>
						            </div>
						          </div>
						          <div class="control-group">
						            <label for="input01" class="control-label">到期时间</label>
						            <div class="controls">
						              <select id="select01">
						                <option>今天</option>
						                <option>-----</option>
						              </select>
						            </div>
						          </div>
						          <div class="control-group">
						            <label for="input01" class="control-label ">选择一个分类</label>
						            <div class="controls">
						              <select id="select01">
						                <option>无</option>
						                <option>新建分类</option>
						              </select>
						              <span class="help-inline"><a href="#">编辑分类</a></span>
						            </div>
						          </div>
						          <div class="control-group">
						            <label for="input01" class="control-label ">由谁负责？</label>
						            <div class="controls">
						              <select id="select01">
						                <option>我</option>
						                <option>--</option>
						              </select>
						            </div>
						          </div>
						          <div class="control-group">
						            <div class="controls">
						              <label class="checkbox">
						                <input type="checkbox" value="option1" id="optionsCheckbox"/>
						                                          同事可以看见这个任务
						              </label>
						            </div>
						          </div>
					        </form>
						</div>
						<div class="modal-footer">
							<button id="fileBtn" class="btn btn-primary" type="submit">添加任务</button>
							<a href="#" class="btn" data-dismiss="modal">取消</a>
						</div>
					 </div>
				</div>
			</div>
		</div>
 	</div>
  </body>

</html>
