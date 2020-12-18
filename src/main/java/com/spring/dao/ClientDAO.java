package com.spring.dao;

import java.util.ArrayList;

import com.spring.classes.Client;

public interface ClientDAO {
	public void inscrire(Client client);
	public  ArrayList<Client> listeDesClient();
	public Client selectClient(String email);
}
