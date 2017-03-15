package cn.free.actionForAPI;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import cn.free.bean.User;
import cn.free.service.UserService;

public class HttpLoginAction extends ActionSupport {
	private String account;
	private String password;
	private String devicetype;
	private User entity;
	private UserService userService = new UserService();
	
	private String statecode;
	private String info;
	
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	//获取session对象
	HttpSession session = request.getSession(true);
	
	private Map<String, Object> dataMap;
	
	public String login() {
			dataMap = new HashMap<String, Object>();

//			System.out.println(account);
//			System.out.println(password);
			
			entity = userService.login(account, password);
			if (entity!=null) {
				statecode="200";
				info="success";
			}else {
				statecode="400";
				info="error";
			}
			
			dataMap.put("statecode", statecode);
			dataMap.put("info", info);
			return SUCCESS;
		}
	
	public Map<String, Object> getDataMap() {
		  return dataMap;
		 }
	
	
	

	public String getDevicetype() {
		return devicetype;
	}

	public void setDevicetype(String devicetype) {
		this.devicetype = devicetype;
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
