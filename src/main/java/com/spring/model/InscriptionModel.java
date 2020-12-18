package com.spring.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.classes.Client;
import com.spring.dao.ClientDAO;
import com.spring.service.ClientInterface;

@Service("ClientService")
public class InscriptionModel implements ClientInterface{
	@Autowired
    ClientDAO clientdao;

	@Override
	public void inscrire(Client client) {
		clientdao.inscrire(client);
		
	}

	@Override
	public ArrayList<Client> listeDesClient() {
		// TODO Auto-generated method stub
		return clientdao.listeDesClient();
	}

	@Override
	public Client selectClient(String email) {
		// TODO Auto-generated method stub
		return clientdao.selectClient(email);
	}
}
