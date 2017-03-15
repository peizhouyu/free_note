package cn.free.action;

import com.opensymphony.xwork2.ActionSupport;

public class WaitAction extends ActionSupport {
	public String building() {
		return "building";
	}
	
	public String profile() {
		return SUCCESS;
	}
}
