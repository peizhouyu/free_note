package cn.free.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import cn.free.bean.User;
import cn.free.service.UserService;

public class LoginAction extends ActionSupport{
	private String account;
	private String password;
	private User entity;
	private UserService userService = new UserService();
	
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	//获取session对象
	HttpSession session = request.getSession(true);
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//System.out.println(account);
		//System.out.println(password);
		
		return login();
		
	}
	
	public String checklogin() {
		if (session.getAttribute("account") == null) {
			return "input";
		}else{
			return SUCCESS;
		}
	}
	
	private String login() {
		
		entity = userService.login(account, password);
		if (entity!=null) {
			session.setAttribute("account", account);
			return SUCCESS;
		}else {
			return "input";
		}
	}
	
	public String logout(){
		session.setAttribute("account", null);
		return "input";
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
