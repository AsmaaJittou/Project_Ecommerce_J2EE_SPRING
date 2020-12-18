package com.spring.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.classes.Article;
import com.spring.classes.Categorie;
import com.spring.dao.CategorieDAO;
import com.spring.dao.produitDAO;
import com.spring.service.CategorieInterface;

@Service("CategorieService")
public class CategorieModel implements CategorieInterface {
	@Autowired
    CategorieDAO categoriedao;
	@Override
	public void ajouterCategorie(String md) {
		categoriedao.ajouterCategorie(md);
		
	}

	@Override
	public void supprimerCategorie(String nomCategorie) {
		categoriedao.supprimerCategorie(nomCategorie);
		
	}

	@Override
	public ArrayList<Categorie> listeCategorie() {
		// TODO Auto-generated method stub
		return categoriedao.listeCategorie();
	}

	@Override
	public ArrayList<Article> listeDesProduitsByCategorie(String nameCategorie) {
		// TODO Auto-generated method stub
		return categoriedao.listeDesProduitsByCategorie(nameCategorie);
	}

}
