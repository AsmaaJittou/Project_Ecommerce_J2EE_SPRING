package com.spring.dao;

import java.util.ArrayList;

import com.spring.classes.Article;
import com.spring.classes.Categorie;

public interface CategorieDAO {
	public void ajouterCategorie(String md);
	public void supprimerCategorie(String nomCategorie);
	public ArrayList<Categorie> listeCategorie();
	public  ArrayList<Article> listeDesProduitsByCategorie(String nameCategorie);
}
