package cn.free.action;


import com.opensymphony.xwork2.ActionSupport;

import cn.free.bean.User;
import cn.free.dao.UserDAO;

public class RegisterAction extends ActionSupport {
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String account;
	private String password;
	private String email;
	
	@Override
	public String execute() throws Exception {
		
//		System.out.println(account);
//		System.out.println(password);
//		System.out.println(email);
		
		User user = new User();
		UserDAO userDAO = new UserDAO();
		
		user.setAccount(account);
		user.setPassword(password);
		user.setEMail(email);
		
		userDAO.addUser(user);
		return super.execute();
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
}
