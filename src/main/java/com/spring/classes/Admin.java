package com.spring.classes;

public class Admin {
	
	   private String nomAdmin;
	   private String email;
	   private String password;
	   
	   public Admin() {
			super();
			// TODO Auto-generated constructor stub
		}
	   public Admin(String nomAdmin, String email, String password) {
			super();
			this.nomAdmin = nomAdmin;
			this.email = email;
			this.password = password;
		}

	
	
	
	public String getNomAdmin() {
		return nomAdmin;
	}
	public void setNomAdmin(String nomAdmin) {
		this.nomAdmin = nomAdmin;
	}
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
	   
	


}
