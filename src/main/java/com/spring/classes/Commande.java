package com.spring.classes;

public class Commande {
	private int idCommande;
	private String dateCommande;
	private int idClient;
	public Commande(int idCommande, String dateCommande, int idClient) {
		super();
		this.idCommande = idCommande;
		this.dateCommande = dateCommande;
		this.idClient = idClient;
	}
	public Commande() {
		// TODO Auto-generated constructor stub
	}
	public int getIdCommande() {
		return idCommande;
	}
	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
	}
	public String getDateCommande() {
		return dateCommande;
	}
	public void setDateCommande(String dateCommande) {
		this.dateCommande = dateCommande;
	}
	public int getIdClient() {
		return idClient;
	}
	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}
	
	
	
}
