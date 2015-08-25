package com.crm.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.crm.pojo.Org;
import com.crm.pojo.OrgName;
import com.crm.pojo.User;
import com.crm.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	
	private String email;
	private UserService userService;
	private String password;
	private OrgName orgName;
	private User user;
	private String uid;
	private String username;
	private String newpwd;
	private File headpic;
	private String headpicContentType;
	private String headpicFileName;
	private Org org;
	private HttpServletResponse response = ServletActionContext.getResponse();
	private Map<String,Object> session;
	
	
	public String tosign(){
		return "success";
	}
	public String sign(){
		userService.save(user,orgName);

		return SUCCESS;
	}
	
	public String checkemail() throws IOException{
		user = userService.findByEmail(email);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(user == null){
			out.print("yes");
		}else{
			out.print("false");
		}
		out.flush();
		out.close();
		return null;
	}
	
	public String  signsuccess(){
		return "success";
	}
	
	public String active(){
		System.out.println(uid);
		userService.active(uid);
		
		return "success";
	}
	
	
	public String login() throws IOException{
		User user = userService.findByEmailAndPwd(email,password);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(user == null){
			out.print("10002");
		}else if(user.getState() == 0){
			
			out.print("10001");
		}else{
			session.put("user", user);
			org = userService.findOrg(user);
			session.put("org", org);
			out.print("10000");
		}
		out.flush();
		out.close();
		return null;
	}
	
	public String profile(){
		user = (User) session.get("user");
		return "success";
	}
	
	public String editname() throws IOException{
		user = (User) session.get("user");
		user.setUsername(username);
		userService.update(user);
		user = userService.findByEmail(user.getEmail());
		session.put("user", user);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("ok");
		out.flush();
		out.close();
		
		return null;
	}
	
	public String editpwd() throws IOException{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		user = (User) session.get("user");
		
		if(!(password.equals(user.getPassword().trim())) ){
			out.print("false");
		}else{
			user.setPassword(newpwd);
			userService.update(user);
			user = userService.findByEmail(user.getEmail());
			session.put("user", user);
			out.print("ok");
		}
		
		
		
		out.flush();
		out.close();
		
		return null;
	}
	
	public String loadhead() throws Exception{
		System.out.println("type"+headpicContentType);
		if(headpic == null  ){
			return "error";
		}
		if("".equals(headpicFileName)){
			return "error";
		}
		
		/*if(!("image/png".equals(type))){
			return "error";
		}*/
		user = (User) session.get("user");
		String savePath = ServletActionContext.getServletContext().getRealPath("/") + "upload/";
		File filesave = new File(savePath);
		if(!(filesave.exists())){
			filesave.mkdir();
		}
		String type = headpicFileName.substring(headpicFileName.indexOf("."));
		headpicFileName = user.getId() + type;
		InputStream inputStream = new FileInputStream(headpic);
		OutputStream outputStream = new FileOutputStream(new File(savePath+headpicFileName));
		
		byte[] buffer = new byte[1024];
		int len = -1;
		while((len = inputStream.read(buffer)) != -1) {
			outputStream.write(buffer, 0, len);
		}
		
		outputStream.flush();
		outputStream.close();
		inputStream.close();
		
		user = (User) session.get("user");
		user.setFace(user.getId()+type);
		userService.update(user);
		user = userService.findByEmail(user.getEmail());
		session.put("user", user);
		return "success";
	}
	
	public String downhead(){
		return "success";
	}
	public InputStream getInputStream() throws Exception {
		user = (User) session.get("user");
		String filePath = ServletActionContext.getServletContext().getRealPath("/") + "upload/" + user.getFace();
		InputStream stream = new FileInputStream(new File(filePath));
		return stream;
	}
	
	public String exit(){
		session.clear();
		return "success";
	}
	
	public String reemail(){
		System.out.println("email:" +email);
		user = userService.findByEmail(email);
		
		userService.sendEmail(user);
		return "success";
	}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	


	public OrgName getOrgName() {
		return orgName;
	}


	public void setOrgName(OrgName orgName) {
		this.orgName = orgName;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public UserService getUserService() {
		return userService;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNewpwd() {
		return newpwd;
	}
	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
	}
	
	
	public String getHeadpicContentType() {
		return headpicContentType;
	}
	public void setHeadpicContentType(String headpicContentType) {
		this.headpicContentType = headpicContentType;
	}
	public String getHeadpicFileName() {
		return headpicFileName;
	}
	public void setHeadpicFileName(String headpicFileName) {
		this.headpicFileName = headpicFileName;
	}
	public File getHeadpic() {
		return headpic;
	}
	public void setHeadpic(File headpic) {
		this.headpic = headpic;
	}
	public Org getOrg() {
		return org;
	}
	public void setOrg(Org org) {
		this.org = org;
	}
	
	
}
