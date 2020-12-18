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
import com.spring.classes.Client;
import com.spring.dao.ClientDAO;
@Repository
@Qualifier("clientDao")
public class ClientImplDAO implements ClientDAO{
@Autowired
	    JdbcTemplate jdbcTemplate;
	@Override
	public void inscrire(Client client) {
		 Random rand = new Random();
		String query="INSERT INTO `client` (`nom`, `prenom`, `password`, `email`, `pays`, `tel`, `adresse`) VALUES ('"+client.getNom()+"','"+client.getPrenom()+"','"+client.getPass()+"','"+client.getEmail()+"','"+client.getPays()+"','"+client.getTel()+"','"+client.getAdresse()+"')";
		jdbcTemplate.update(query);
		
	}

	@Override
	public ArrayList<Client> listeDesClient() {
		 ArrayList < Client > client = (ArrayList<Client>) jdbcTemplate.query("SELECT * FROM client", new BeanPropertyRowMapper(Client.class));
		 client.removeAll(Collections.singletonList(null));
		 return client;
	}

	@Override
	public Client selectClient(String email) {
		 Client client = jdbcTemplate.queryForObject("SELECT * FROM client where email=?", new Object[] { email }, new BeanPropertyRowMapper(Client.class));
		 return client;
	}

}
