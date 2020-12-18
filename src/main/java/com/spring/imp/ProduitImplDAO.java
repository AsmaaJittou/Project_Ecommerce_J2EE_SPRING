package com.spring.imp;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spring.classes.Article;
import com.spring.dao.produitDAO;

@Repository
@Qualifier("produitDao")
public class ProduitImplDAO implements produitDAO{
	 @Autowired
	    JdbcTemplate jdbcTemplate;
	@Override
	public void ajouterProduit(Article produit) {
		 Random rand = new Random();
		jdbcTemplate.update("INSERT INTO `article` (`idProduit`, `nomProduit`, `description`, `prix`, `IdCategorie`, `photo`) VALUES('"+rand. nextInt(100)+"','"+produit.getNomProduit()+"','"+produit.getDescription()+"','"+produit.getPrix()+"','"+produit.getIdCategorie()+"','"+produit.getPhoto()+"')");
	   System.out.println("greaaat adding!!!!!!!!!");
	}

	@Override
	public Article SelectionProduitParId(int id) {
		 @SuppressWarnings("unchecked")
		Article article = (Article) jdbcTemplate.queryForObject("SELECT * FROM article where idProduit =? ", new Object[] { id }, new BeanPropertyRowMapper(Article.class));
		 
		        return article;
	}

	@Override
	public ArrayList<Article> listeDesProduits() {
		 ArrayList < Article > articles = (ArrayList<Article>) jdbcTemplate.query("SELECT * FROM article", new BeanPropertyRowMapper(Article.class));
		 articles.removeAll(Collections.singletonList(null));
		 return articles;
	}

	@Override
	public void supprimerProduit(int id) {
        jdbcTemplate.update("DELETE from article WHERE idProduit= ? ", id);
		
	}

}
