package com.spring.imp;

import java.util.ArrayList;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.spring.classes.Article;
import com.spring.classes.Categorie;
import com.spring.classes.Client;
import com.spring.db.ApplicationConfig;
import com.spring.model.CategorieModel;
import com.spring.model.InscriptionModel;
import com.spring.model.ProduitModel;

public class test {

    public static void main(String args[]) {
    	System.out.println("whaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaat!!!!!????");
        AbstractApplicationContext context = new AnnotationConfigApplicationContext(ApplicationConfig.class);
       ProduitModel pro = (ProduitModel) context.getBean("produitService");
		   
    Article  product = pro.SelectionProduitParId(2);
    System.out.println("_________________________\n");
    System.out.println(product.getNomProduit());
       /*   InscriptionModel model = (InscriptionModel) context.getBean("ClientService");
      model.inscrire(new Client("asmaa","jittou","123456","jittou@gmail.com","somewhere","06543346","MAROC"));
   ArrayList<Client> articles = model.listeDesClient();
    		 for(Client produit : articles) {
    	   System.out.println("_________________________\n");
    	   System.out.println(produit.getNom());
       }*/
       // model.ajouterProduit(new Article("ghj","fgh","tgh","yug","ygf"));
       context.close();
    }
}
