package cn.free.service;

import cn.free.bean.User;
import cn.free.dao.UserDAO;

public class UserService {
	
	public User login(String account, String password) {
		UserDAO userDAO = new UserDAO();
		return userDAO.login(account, password);
	}
}
