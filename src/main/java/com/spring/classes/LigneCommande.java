package com.spring.classes;

public class LigneCommande {
	private int idCommande;
	private int CodeArticle, quantite;
	public LigneCommande(int idCommande, int codeArticle, int quantite) {
		super();
		this.idCommande = idCommande;
		CodeArticle = codeArticle;
		this.quantite = quantite;
	}
	public int getIdCommande() {
		return idCommande;
	}
	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
	}
	public int getCodeArticle() {
		return CodeArticle;
	}
	public void setCodeArticle(int codeArticle) {
		CodeArticle = codeArticle;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	

}
