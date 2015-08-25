<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
  <%@include file="include/head.jsp" %>
	<div style="margin-top:50px">
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span8">
					<div style="height:80px;border-bottom:1px gray solid">
						<div style="font-size:20px;margin:10px">业务机会</div>
						<div style="font-size:12px;margin:10px;"><s:property value="chanceList.size"/>个机会，价值<s:property value="totalMoney"/></div>
					</div>
					<s:iterator value="chanceList" var="chance">
					<div style="height:85px;border-bottom:1px gray solid;margin-top:10px">
						<div style="margin-left:30px">
							<div style="font-size:14px;color:blue;font-weight:bold;"><s:property value="#chance.name"/><span class="pull-right"style="font-size:14px;color:red;margin-right:20px;"><s:if test="<s:property value='#chance.state'/>==1">跟踪</s:if></span></div>
							<div style="font-size:12px;"><s:property value="#chance.desc"/></div>
							<div style="font-size:12px;"><span style="color:red;font-weight:bold"><s:property value="#chance.chanceType.name"/>&nbsp &nbsp</span><s:property value="#chance.money"/></div>
							<div style="font-size:12px;">由<s:property value="#chance.doOrg.user.username"/>负责</div>
							
						</div>
					</div>
					</s:iterator>
				</div>
				<div class="span4" style="margin-top:20px">
					<div style="font-size:14px;height:80px;"><a href="createChance.jspx">创建机会</a></div>
					<div style="">
						<div style="font-size:20px;">过滤条件...</div>
						<div class="control-group" style="margin-top:20px">
							<label for="select01" class="control-label">状态</label>
							<div class="controls">
								<select id="select01">
									<option>所有状态</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
							<label for="select01" class="control-label">分类</label>
							<div class="controls">
								<select id="select01">
									<option>所有状态</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
							<label for="select01" class="control-label">负责人</label>
							<div class="controls">
								<select id="select01">
									<option>所有状态</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
							<label for="select01" class="control-label">时间</label>
							<div class="controls">
								<select id="select01">
									<option>所有状态</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
