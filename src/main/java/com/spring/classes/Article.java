package com.spring.classes;

public class Article {
private int idProduit;
	
	private String nomProduit;
	private String prix;
	private String description;
	private String photo;
	private String IdCategorie;
	
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Article(String nomProduit, String description, String prix, String IdCategorie , String photo) {
		super();
		this.nomProduit = nomProduit;
		this.prix = prix;
		this.IdCategorie = IdCategorie;
		this.photo = photo;
		this.description = description;
	}

	public int getIdProduit() {
		return idProduit;
	}
	public void setIdProduit(int idProduit) {
		this.idProduit = idProduit;
	}
	public String getNomProduit() {
		return nomProduit;
	}
	public void setNomProduit(String nomProduit) {
		this.nomProduit = nomProduit;
	}
	public String getPrix() {
		return prix;
	}
	public void setPrix(String prix) {
		this.prix = prix;
	}

	public String getIdCategorie() {
		return IdCategorie;
	}
	public void setIdCategorie(String IdCategorie) {
		this.IdCategorie = IdCategorie;
	}
	

	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public double getPrixConvert() {
		// TODO Auto-generated method stub
		return Double.parseDouble( this.prix);
	}
	
	

	

	
}
