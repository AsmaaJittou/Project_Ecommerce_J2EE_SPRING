package com.spring.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.classes.Article;
import com.spring.dao.produitDAO;
import com.spring.service.ProduitsInterface;

@Service("produitService")
public class ProduitModel implements ProduitsInterface{
	@Autowired
    produitDAO produitdao;
	@Override
	public void ajouterProduit(Article produit) {
		produitdao.ajouterProduit(produit);
		
	}

	@Override
	public Article SelectionProduitParId(int id) {
		// TODO Auto-generated method stub
		return produitdao.SelectionProduitParId(id);
	}

	@Override
	public ArrayList<Article> listeDesProduits() {
		// TODO Auto-generated method stub
		return produitdao.listeDesProduits();
	}

	@Override
	public void supprimerProduit(int id) {
		produitdao.supprimerProduit(id);
		
	}

}
