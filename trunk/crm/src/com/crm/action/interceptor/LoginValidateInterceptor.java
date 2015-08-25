package com.crm.action.interceptor;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.crm.pojo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginValidateInterceptor extends AbstractInterceptor{

	private static final long serialVersionUID = 1L;

	private String goName;
	
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		
		
		//获取当前拦截到的Action的name属性值 如果为index或login放行，其他的值要判断session中是否有对象
		String actionName = invocation.getProxy().getActionName();
		String nameSpace = invocation.getProxy().getNamespace();
		
		String[] names = goName.split(",");
		List<String> namelist = new ArrayList<String>();
		for (int i = 0; i < names.length; i++) {
			namelist.add(names[i]);
		}
		if("/".equals(nameSpace) && namelist.contains(actionName)) {
			return invocation.invoke();
		} else {
			ActionContext ctx = invocation.getInvocationContext();
			Map<String,Object> session = ctx.getSession();
			
			if(session.containsKey("user")) {
				User user = (User) session.get("user");
				if(user != null) {
					return invocation.invoke();
				} else {
					return "index";
				}
			} else {
				return "index";
			}
			
		}
			
			
		
		/*if("/".equals(nameSpace) && ("index".equals(actionName) || "login".equals(actionName)|| "sign".equals(actionName)|| "tosign".equals(actionName)|| "active".equals(actionName)|| "checkemail".equals(actionName)|| "sign-success".equals(actionName))) {
			return invocation.invoke();
		} else {
			ActionContext ctx = invocation.getInvocationContext();
			Map<String,Object> session = ctx.getSession();
			
			if(session.containsKey("user")) {
				User user = (User) session.get("user");
				if(user != null) {
					return invocation.invoke();
				} else {
					return "index";
				}
			} else {
				return "index";
			}
			
		}*/
	}

	public String getGoName() {
		return goName;
	}

	public void setGoName(String goName) {
		this.goName = goName;
	}
	
	

}
