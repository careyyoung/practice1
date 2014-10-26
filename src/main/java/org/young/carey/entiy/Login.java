package org.young.carey.entiy;

import java.util.List;

public class Login {
	private int id;
	private String username;
	private String password;
	
	private List errors;
	
	public boolean invalidate(){
		
		boolean flag=true;
		/**
		 * 1.先验证输入不为空，在验证合法的输入格式。
		 * 如果输入不为空，那么进行下一项合法的格式的验证
		 */
		
		System.out.println("这是pojo得到的用户名********："+this.username);
		
		if(this.username==null||"".equals(this.username)){
			flag=false;
			errors.add("用户名不能为空！");
		}
		//合法格式的验证
		else{
			if(this.username.length()<3||this.username.length()>10)
			{
				flag=false;
				errors.add("您应该输入合法的用户名，长度在3~10之间！");
			}
		}
		if(this.password==null||"".equals(this.password)){
				flag=false;
				errors.add("密码不能为空！");
		}
		else{
			if(this.password.length()<3||this.password.length()>10){
				flag=false;
				errors.add("您应该输入合法的密码，长度在3~10之间！");
			}
		}
		
		return flag;
		
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public List getErrors() {
		return errors;
	}

	public void setErrors(List errors) {
		this.errors = errors;
	}

}
