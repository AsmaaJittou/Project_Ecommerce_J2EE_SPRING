package com.spring.classes;

public class Categorie {

	private Long idCategorie;
	private String nomCategorie;
	
	
	public Categorie() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Categorie(String nomCategorie) {
		super();
		this.nomCategorie = nomCategorie;
		
	}  
	
	
	public Long getIdCategorie() {
		return idCategorie;
	}
	public void setIdCategorie(Long idCategorie) {
		this.idCategorie = idCategorie;
	}
	public String getNomCategorie() {
		return nomCategorie;
	}
	
	public void setNomCategorie(String nomCategorie) {
		this.nomCategorie = nomCategorie;
	}
}
