<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<link rel="stylesheet" href="/crm/css/bootstrap.min.css" />
	<script type="text/javascript" src="/crm/js/jquery.js"></script>
	<script type="text/javascript" src="/crm/js/bootstrap.min.js"></script>
<!-- 	<script type="text/javascript">
		$(document).ready(function(){
			$("#contact_name").blur(function(){
				var contactName=$("#contact_name").attr("value");
				if(contactName==null){
					$("#contactMsg").text("联系人名不能为空");
				}
				
			});
		
		});
	</script> -->
	<title></title>
</head>
  <body>
  <%@include file="include/head.jsp" %>
	<div class="container-fluid" style="margin-top:50px">
		<div class="row-fluid">
			<div class="span8">
				<div class="well screen">
					<div class="page-header header">
				<div style="background-color:#ffb308;font-size:20px;height:30px;width:100px;text-align:center;margin-left:80px;line-height:30px;display:block">
                添加机会
            </div>

					<div id="main" class="main">
<div style="padding:0 68px;margin-top:20px">
	<form novalidate="novalidate" method="post" id="chance_form" class="simple_form form-vertical" accept-charset="UTF-8"><div style="margin:0;padding:0;display:inline"><input type="hidden" value="?" name="utf8"><input type="hidden" value="hmUc5TOmYVDfZ8l3YjwShjY+IAcIvZ7PCbmeA3BCmDQ=" name="authenticity_token"></div>
		
		<div class="control-group string optional  marco_polo_container"><label for="chance_contact" class="string optional control-label"> 联系人</label>
		<div class="controls">
			<input type="text" name="contactName" id="contact_name" class="input-xlarge mp_input" autocomplete="off"><ul class="typeahead dropdown-menu mp_list" style="display: none;"><span id="contactMsg"></span></ul>
		</div>
		</div>
		<div class="control-group string required"><label for="chance_name" class="string required control-label"><abbr title="required">*</abbr> 机会名称</label><div class="controls"><input type="text" size="50" name="chance.name" id="chance_name" class="string required input-xlarge"></div></div>

		<div class="control-group text optional"><label for="chance_description" class="text optional control-label"> 机会描述或背景信息</label><div class="controls"><textarea rows="20" name="chance.desc" id="chance_description" cols="40" style="height:100px;width:500px" class="text optional content"></textarea></div></div>
		
		<div class="control-group float optional"><label for="chance_price" class="float optional control-label"> 金额</label>
        <div class="controls"><div class="input-prepend">
			<input type="text" name="chance.money" id="chance_price" class="numeric optional price"/>
            <span style="font-size:14px;">元</span>
</div>
</div></div>		
		<div class="control-group integer optional"><label for="chance_category_id" class="integer optional control-label"> 分类</label><div class="controls">
			<select onchange="changeCategory(this)" name="chanceType.name" id="chance_category_id" data="ChanceCategory"><option value="">无</option>
<option value="25483">买房</option>
<option value="new">新建分类 ...</option></select>
			<a href="/crm_categories?type=chance">编辑分类</a>
</div></div>		
				<div class="control-group select optional"><label for="chance_assigned_user_id" class="select optional control-label"> 谁负责？</label><div class="controls"><select name="chance[assigned_user_id]" id="chance_assigned_user_id" class="select optional"><option value="">无</option>
<option value="5831">我</option></select></div></div>
				
				<div class="control-group string optional"><label for="chance_access_policy" class="string optional control-label"> 谁可以看见这个机会？</label><div class="controls">
					
					 <div class="select_access_policy" id="select_access_policy_for_Chance_">
	<div class="radio scope activated">
		<input type="radio" value="Everyone" name="chance[access_policy_attributes][scope]" id="chance_access_policy_attributes_scope_everyone" checked="checked"> 所有同事
	</div>
	<div class="radio scope ">
		<input type="radio" value="Owner" name="chance[access_policy_attributes][scope]" id="chance_access_policy_attributes_scope_owner"> 只有我能看见
		<input type="hidden" value="5831" name="chance[access_policy_attributes][owner_id]" id="chance_access_policy_attributes_owner_id">
	</div>
		<div class="radio scope ">
			<input type="radio" value="NamedGroup" name="chance[access_policy_attributes][scope]" id="chance_access_policy_attributes_scope_namedgroup"> 选择一个组...
			<div class="editor">
		  	<select name="chance[access_policy_attributes][group_id]" id="chance_access_policy_attributes_group_id" class="named_group"><option value="">选择一个组</option>
<option value="565">CRM</option></select> 
			</div>
			<div data="{&quot;565&quot;:[]}" class="named_groups_data"></div>
		</div>
	<div class="radio scope  hide">
		<input type="hidden" name="chance[access_policy_attributes][user_ids]" id="chance_access_policy_attributes_user_ids" class="adhoc_group_ids">
		<input type="radio" value="AdhocGroup" name="chance[access_policy_attributes][scope]" id="chance_access_policy_attributes_scope_adhocgroup"> 选择同事...
		<div class="editor">
			<div style="display: none;" class="adhoc_group_member template">
				<select name="user_ids[]" id="user_ids_" disabled="disabled"></select> 
				<span id="" title="" style="display:inline-block;background: url(/assets/workxp_sprites.png) no-repeat scroll -189px -181px transparent; width: 14px; padding-top: 14px;" class="sprite remove"></span>
				<span id="" title="" style="display:inline-block;background: url(/assets/workxp_sprites.png) no-repeat scroll -189px -197px transparent; width: 14px; padding-top: 14px;" class="sprite add"></span>
			</div>
			<div class="adhoc_group_members"></div>
	  	<select name="" id="" class="new_adhoc_group_member"><option selected="selected" value="">选择一个同事...</option></select> 
		</div>
	</div>
	
</div>



</div></div>		
		<div class="form-actions">
			<input type="submit" value="添加这个机会" onclick="$('chance_form').addClassName('progress')" name="commit" class="btn btn-primary">
			<a class="btn" href="/chances">取消</a>
		</div>
</form></div>


					</div>
				</div>
			</div>
            		</div>
			<div class="span4 sidebar">
					<div class="well">
		<h3>什么是机会？</h3>
		<p></p><p>机会即业务机会或商业机会，比如一笔可能成交的业务或项目。<br><br>机会通常跟一个<strong>联系人</strong>相关，您需要先将这个联系人添加到系统。<br><br>在输入联系人时，系统会根据已输入的内容自动查找联系人，并以下拉列表的形式显示出来，您可以从中选取一个。<br><br>您可以根据自己的业务情况给机会添加分类。比如按产品分类、按重要程度或行业分类。</p><p></p>
	</div>

			</div>

	</div>
    </div>
</body>
</html>
