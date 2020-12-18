package com.spring.imp;

import java.util.ArrayList;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spring.classes.Article;
import com.spring.classes.Categorie;
import com.spring.dao.CategorieDAO;

@Repository
@Qualifier("catalogueDao")
public class CategorieImlDAO implements CategorieDAO{
	@Autowired
    JdbcTemplate jdbcTemplate;
	@Override
	public void ajouterCategorie(String md) {
		jdbcTemplate.update("INSERT INTO `categorie` (`nomCategorie`) VALUES ('"+md+"')");
		
	}

	@Override
	public void supprimerCategorie(String nomCategorie) {
		String query="delete from `categorie` where nomCategorie='"+nomCategorie+"'";
		jdbcTemplate.update(query);
		
	}

	@Override
	public ArrayList<Categorie> listeCategorie() {
		 ArrayList < Categorie > cat = (ArrayList<Categorie>) jdbcTemplate.query("SELECT * FROM categorie", new BeanPropertyRowMapper(Categorie.class));
		 cat.removeAll(Collections.singletonList(null));
		 return cat;
	}

	@Override
	public ArrayList<Article> listeDesProduitsByCategorie(String nameCategorie) {
		 ArrayList < Article > cats=null;
		try {
		cats = (ArrayList<Article>) jdbcTemplate.queryForObject("SELECT * FROM article where IdCategorie =? ", new Object[] { nameCategorie }, new BeanPropertyRowMapper(Article.class));
	 } catch (EmptyResultDataAccessException e) {
	   System.out.println("nooothing al3chira!!")  ;// do nothing, return null
            }
		 return cats;
	}
	/*	public ArrayList<Article> listeDesProduitsByCategorie(String nameCategorie) {
	List<Article> cats = (List<Article>) jdbcTemplate.queryForObject("SELECT * FROM article where IdCategorie =? ", new Object[] {nameCategorie},  new RowMapper<Article>() {
		 public Article mapRow(ResultSet resultat, int rowNum) throws SQLException {
				
				Article p = new Article();
				p.setIdProduit(resultat.getInt("idProduit"));
			
				p.setNomProduit(resultat.getString("nomProduit"));
				p.setPrix(resultat.getString("prix"));
				p.setDescription(resultat.getString("description"));
				p.setIdCategorie(resultat.getString("IdCategorie"));
				p.setPhoto(resultat.getString("photo"));
			return p;
				 }
	    });
	 cats.removeAll(Collections.singletonList(null));
	 return (ArrayList<Article>) cats;
}*/

}
