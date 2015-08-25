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
		<jsp:param value="contact" name="tag"/>
	</jsp:include>
	
	<div class="container-fluid" style="margin-top:60px">
		<div class="row-fluid">
			<div class="span8">
				<div class="wall">
					<div class="page-header header">
						
							<div class="pull-right">
		<a href="/companies/new">添加公司</a>
	</div>
			<h4>添加联系人</h4>

					</div>
					
					<div class="main" id="main">
						


<form  action="/crm/contact/newperson.jspx" class="simple_form form-horizontal"  method="post" >
	
	<div class="control-group string required"><label class="string required control-label" for="person_name"><abbr title="required">*</abbr> 姓名</label><div class="controls"><input class="input-xlarge string required" id="person_name" name="book.name" size="50" type="text" x-webkit-speech=""></div></div>
	<div class="control-group string optional"><label class="string optional control-label" for="person_title"> 职位</label><div class="controls"><input class="input-xlarge string optional" id="book.position" name="person[title]" size="50" type="text" x-webkit-speech=""></div></div>
	
	<div class="control-group string optional marco_polo_container"><label class="string optional control-label" for="person_company"> 公司</label><div class="controls">
		<input  class="input-xlarge mp_input" data-selected="{&quot;name&quot;:null,&quot;id&quot;:null}" id="company_name" name="book.company" type="text" autocomplete="off" x-webkit-speech=""><ul class="typeahead dropdown-menu mp_list" style="display: none; "></ul>
		<input id="person_company_id" name="person[company_id]" type="hidden" x-webkit-speech="">
</div></div>	
		<div class="control-group tel optional"><label class="tel optional control-label input-xlarge" for="person_contact_phone"> 电话</label><div class="controls">
		<div class="contact_forms contact_phones" id="contact_phone_list_company">
	
	<div class="contact_methods" style="display: block; ">
  			
			
		<div id="contact_phone_#xca13971138173321f4" class="contact_method new_contact_method edit_phone">
	
		<input class="autofocus input-xlarge" id="person_contact_phones__value" name="phone.num" size="30" type="text">
		<select class="span1" name="phone.type">
			<option value="office">公司</option>
			<option value="work">工作</option>
			<option value="mobile">手机</option>
			<option value="fax">传真</option>
			<option value="home">住宅</option>
			<option value="other">其它</option>
		</select>
		
</div>
	</div>
</div>

</div></div>	<div class="control-group email optional"><label class="email optional control-label input-xlarge" for="person_contact_email"> 邮箱</label><div class="controls">
		<div class="contact_forms contact_emails" id="contact_email_list_company">
	<div id="blank_slate_company_contact_email" class="blank_slate" style="display: none; ">添加一个Email地址</div>
	<div class="contact_methods" style="display: block; ">
  			
			
		<div id="contact_email_#xac61b67b138173324b4" class="contact_method new_contact_method edit_phone">
	
		<input class="autofocus input-xlarge" id="person_contact_emails__value" name="email.email" size="30" type="text">
		<select id="person_contact_emails__key" name="email.type" class="span1"><option value="work">工作</option>
<option value="personal">个人</option>
<option value="other">其它</option></select>
		
</div><div id="add_company_contact_email" class="add_contact_method" style="display: none; ">
		  <div class="add"><a href="#">添加..</a></div>
		</div>
	</div>
</div>

</div></div>	<div class="control-group string optional"><label class="string optional control-label" for="person_contact_im"> IM</label><div class="controls">
		<div class="contact_forms contact_ims" id="contact_im_list_company">
	<div id="blank_slate_company_contact_im" class="blank_slate" style="display: none; ">添加一个即时聊天帐号</div>
	<div class="contact_methods" style="display: block; ">
  			
			
		<div id="contact_im_#x3e5ea591138173326fa" class="contact_method new_contact_method edit_phone">
	
		<input class="autofocus input-xlarge" id="person_contact_ims__value" name="im.num" size="30" type="text">
		<select id="person_contact_ims__key" name="im.type" class="span1"><option value="qq">QQ</option>
<option value="gtalk">GTalk</option>
<option value="msn">MSN</option>
<option value="other">其它</option></select>
		
</div><div id="add_company_contact_im" class="add_contact_method" style="display: none; ">
		  <div class="add"><a href="#">添加..</a></div>
		</div>
	</div>
</div>

</div></div>	<div class="control-group string optional"><label class="string optional control-label" for="person_contact_website"> 网站</label><div class="controls">
		<div class="contact_forms contact_websites" id="contact_website_list_company">
	<div id="blank_slate_company_contact_website" class="blank_slate" style="display: none; ">添加一个网址</div>
	<div class="contact_methods" style="display: block; ">
  			
			
		<div id="contact_website_#x1f634bb71381733290d" class="contact_method new_contact_method edit_phone">
	
		<input class="autofocus input-xlarge" id="person_contact_websites__value" name="sites.sites" size="30" type="text">
		<select id="person_contact_websites__key" name="sites.type" class="span1"><option value="office">公司</option>
<option value="personal">个人</option>
<option value="other">其它</option></select>
		
</div><div id="add_company_contact_website" class="add_contact_method" style="display: none; ">
		  <div class="add"><a href="#">添加..</a></div>
		</div>
	</div>
</div>

</div></div>	<div class="control-group string optional"><label class="string optional control-label" for="person_contact_address"> 地址</label><div class="controls">
		<div class="contact_forms contact_addresses" id="contact_address_list_company">
	<div id="blank_slate_company_contact_address" class="blank_slate" style="display: none; ">添加一个地址</div>
	<div class="contact_methods" style="display: block; ">
  			
			
		<div id="contact_address_#x590f0ff713817332ad5" class="contact_method new_contact_method edit_phone">
	
		<input class="autofocus input-xlarge" id="person_contact_addresses__value" name="address.address" size="30" type="text">
		<select id="person_contact_addresses__key" name="address.type" class="span1"><option value="office">公司</option>
<option value="home">住宅</option>
<option value="other">其它</option></select>
		
</div><div id="add_company_contact_address" class="add_contact_method" style="display: none; ">
		  <div class="add"><a href="#">添加..</a></div>
		</div>
	</div>
</div>

</div></div>

	<input id="person_contact_sns_attributes_0_key" name="person[contact_sns_attributes][0][key]" type="hidden" value="weibo" x-webkit-speech="">
	<div class="control-group string optional"><label class="string optional control-label" for="person_contact_sns_attributes_0_value"> 新浪微博</label><div class="controls"><input class="string optional input-xlarge" id="person_contact_sns_attributes_0_value" name="book.weibo" size="50" type="text" x-webkit-speech=""><p class="help-block">输入微博昵称或ID</p></div></div>

<div class="control-group text optional"><label class="text optional control-label" for="person_others"> 背景信息</label><div class="controls"><textarea class="text optional content"  id="person_others" name="book.descr" ></textarea><p class="help-block">简介，如何认识的等</p></div></div>

		<div class="control-group string optional"><label class="string optional control-label" for="person_access_policy"> 谁可以看见？</label><div class="controls">
			
			 <div id="select_access_policy_for_Contact_" class="select_access_policy">
	<div class="radio scope activated">
		<input checked="checked" id="person_access_policy_attributes_scope_everyone" name="person[access_policy_attributes][scope]" type="radio" value="Everyone" x-webkit-speech=""> 所有同事
	</div>
	<div class="radio scope ">
		<input id="person_access_policy_attributes_scope_owner" name="person[access_policy_attributes][scope]" type="radio" value="Owner" x-webkit-speech=""> 只有我能看见
		<input id="person_access_policy_attributes_owner_id" name="person[access_policy_attributes][owner_id]" type="hidden" value="5837" x-webkit-speech="">
	</div>
		<div class="radio scope ">
			<input id="person_access_policy_attributes_scope_namedgroup" name="person[access_policy_attributes][scope]" type="radio" value="NamedGroup" x-webkit-speech=""> 选择一个组...
			<div class="editor">
		  	<select class="named_group" id="person_access_policy_attributes_group_id" name="person[access_policy_attributes][group_id]"><option value="">选择一个组</option>
<option value="587">第一个组</option></select> 
			</div>
			<div class="named_groups_data" data="{&quot;587&quot;:[]}"></div>
		</div>
	<div class="radio scope  hide">
		<input class="adhoc_group_ids" id="person_access_policy_attributes_user_ids" name="person[access_policy_attributes][user_ids]" type="hidden" x-webkit-speech="">
		<input id="person_access_policy_attributes_scope_adhocgroup" name="person[access_policy_attributes][scope]" type="radio" value="AdhocGroup" x-webkit-speech=""> 选择同事...
		<div class="editor">
			<div class="adhoc_group_member template" style="display: none;">
				<select disabled="disabled" id="user_ids_" name="user_ids[]"></select> 
				<span class="sprite remove" style="display:inline-block;background: url(/assets/workxp_sprites.png) no-repeat scroll -189px -181px transparent; width: 14px; padding-top: 14px;" title="" id=""></span>
				<span class="sprite add" style="display:inline-block;background: url(/assets/workxp_sprites.png) no-repeat scroll -189px -197px transparent; width: 14px; padding-top: 14px;" title="" id=""></span>
			</div>
			<div class="adhoc_group_members"></div>
	  	<select class="new_adhoc_group_member" id="" name=""><option value="" selected="selected">选择一个同事...</option></select> 
		</div>
	</div>
	
</div>




</div></div>
<div class="form-actions">
	<input class="btn btn-primary" data-loading-text="处理中.." name="commit" type="submit" value="保存联系人" x-webkit-speech="">
		<input class="btn btn-success" data-loading-text="处理中.." name="next_action" type="submit" value="保存并继续添加联系人" x-webkit-speech="">
		<a href="/crm/contact" class="btn btn-inverse">取消</a>
</div>

</form>

					</div>
				</div>
			</div>
			<div class="span4 sidebar">
					<div class="wall">
	<legend>您还可以通过以下方式导入联系人</legend>
	<ul>
		<li><a href="/contact_imports/new?from=vcard">上传vCard文件</a></li>
		<p>Outlook, Gmail, Address Book等程序都可以导出vCard格式的文件</p>
		<li><a href="/contact_imports/new?from=csv">上传CSV文件</a></li>
		<p>大部分数据库和表格程序都可以导出CSV格式的文件</p>
		<li><a href="/contact_imports/new?from=outlook">从Outlook导入</a></li>
		<p>您可以从Outlook 2003, 2007, and Outlook Express等导入联系人</p>
		<li><a href="/contact_imports/new?from=xls">上传Excel文件</a></li>
		<p>目前我们只支持微软老版本的Excel格式，还不支持.xlsx格式，请在导入前转成.xls格式</p>
	</ul>
</div>

			</div>
		</div>
	</div>
	
</body>
</html>





