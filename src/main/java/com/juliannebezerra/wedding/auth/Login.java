package com.juliannebezerra.wedding.auth;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

public class Login  implements SessionAware{

	
	private String email,password;  
	private SessionMap<String,Object> sessionMap;  
	
	
	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public SessionMap<String, Object> getSessionMap() {
		return sessionMap;
	}


	public void setSessionMap(SessionMap<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}


	@Override
	public void setSession(Map<String, Object> map) {
		 sessionMap=(SessionMap)map;  		
	}
	
	public String execute(){  
		if(password.equals("admin")){  
		    sessionMap.put("login","true");  
		    sessionMap.put("name",email);  
		      
		    return "success";  
		}  
		else{  
		    return "login";  
		}  
		}  
		  
		public String logout(){  
		    if(sessionMap!=null){  
		        sessionMap.invalidate();  
		    }  
		    return "success";  
		}  


}
