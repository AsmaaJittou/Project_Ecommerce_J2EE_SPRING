package com.spring.service;

import java.util.ArrayList;

import com.spring.classes.Article;
import com.spring.classes.Client;

public interface ClientInterface {
	public void inscrire(Client client);
	public  ArrayList<Client> listeDesClient();
	public Client selectClient(String email);
}
