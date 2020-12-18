package com.spring.classes;

public class Client {
	private int id;
	private String nom;
	private String prenom;
	private String password;
	private String email;
	private String adresse;
	private String tel;
	private String pays; 
	
  
public Client() {
		super();
	}

public Client( String nom, String prenom,String password,String email,String adresse,String tel,String pays) 
	  {//SetId(id);
	  SetNom( nom);
	  SetPrenom( prenom);
	  SetEmail(email);
	  SetAdresse(adresse);
	  SetPass(password);
	  SetTel(tel);
	  SetPays(pays);
			  }



	
	
	@Override
public String toString() {
	return "Client [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", password=" + password + ", email=" + email
			+ ", adresse=" + adresse + ", tel=" + tel + ", pays=" + pays + "]";
}

	public int getId(){ return id;}
	public String getNom() {return nom;}
	public String getPrenom() {return prenom;}
	public String getEmail() {return email;}
	public String getPass() {return password;}
	public String getAdresse() {return adresse;}
	public String getTel() {return tel;}
	public String getPays() {return pays;}
	
	public void SetId(int id) {this.id=id;}
	public void SetNom(String nom){this.nom=nom;}
	public void SetPrenom(String prenom){this.prenom=prenom;}
	public void SetEmail(String email){this.email=email;}
	public void SetAdresse(String adresse){this.adresse=adresse;}
	public void SetPass(String password){this.password=password;}
	public void SetTel( String tel) {this.tel=tel;}
	public void SetPays(String pays) {this.pays=pays;}
	

}
