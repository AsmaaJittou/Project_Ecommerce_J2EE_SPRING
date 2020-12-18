package com.spring.service;

import java.util.ArrayList;

import com.spring.classes.Article;

public interface ProduitsInterface {
	public void ajouterProduit(Article produit );
	public  Article SelectionProduitParId(int id);
	public  ArrayList<Article> listeDesProduits();
	public void supprimerProduit(int id);
}
