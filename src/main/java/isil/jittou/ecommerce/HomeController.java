package isil.jittou.ecommerce;

import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.classes.Article;
import com.spring.classes.Categorie;
import com.spring.classes.Client;
import com.spring.db.ApplicationConfig;
import com.spring.model.CategorieModel;
import com.spring.model.InscriptionModel;
import com.spring.model.ProduitModel;

/**
 * Handles requests for the application home page.
 */
@Controller
@Scope("session")
public class HomeController {
	 double totalPrice=0;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	 AbstractApplicationContext context = new AnnotationConfigApplicationContext(ApplicationConfig.class);
		
	@RequestMapping(value="/accueil")
	public ModelAndView listContact(ModelAndView modell , HttpServletRequest request) throws IOException{
		   ProduitModel pro = (ProduitModel) context.getBean("produitService");
		     ArrayList<Article> articles = pro.listeDesProduits();
		    
				String[] productsId = request.getParameterValues("idProduit");
				List<Article> selectedProductsOld = (List<Article>) request.getSession().getAttribute("selectedProducts");
			    if(productsId!=null) {
			    	if (selectedProductsOld == null) {
						if (productsId != null) {
							 List<Article> selectedProducts = new ArrayList<Article>(); 
								ProduitModel model = (ProduitModel) context.getBean("produitService");
								Article product = null; 
								 for (String productId : productsId) { 
									product = new Article(); 
									System.out.println(productId);
									try {
										int id= Integer.parseInt(productId)	;							
										product = model.SelectionProduitParId(id);
										totalPrice = totalPrice + product.getPrixConvert();
										
									} catch (NumberFormatException e) {
										e.printStackTrace(); 
									} 
									selectedProducts.add(product); 
								}
								//System.out.println("Total price is: " + totalPrice);
								request.getSession().setAttribute("selectedProducts",selectedProducts);
								request.getSession().setAttribute("totalPrice", totalPrice);
						}
			    }else {
			    	if (productsId != null) {
			    		double totalPriceNew = 0;
			    		List<Article> selectedProductsNew = new ArrayList<Article>();
			    		ProduitModel model = (ProduitModel) context.getBean("produitService");
			    		Article product = null; 
						 for (String productId : productsId) { 
							product = new Article(); 
							System.out.println(productId);
							try {
								int id= Integer.parseInt(productId)	;							
								product = model.SelectionProduitParId(id);
								totalPrice = totalPrice + product.getPrixConvert();
								
							} catch (NumberFormatException e) {
								e.printStackTrace(); 
							}
							selectedProductsNew.add(product);
			             }
						 selectedProductsOld.addAll(selectedProductsNew);
						 totalPrice = totalPrice + totalPriceNew;
					
							request.getSession().setAttribute("selectedProducts",selectedProductsOld);
							request.getSession().setAttribute("totalPrice", totalPrice);
							
							
			    }
			    }
			    	 modell.addObject("listProduct", articles);
			 	    modell.setViewName("Accueil");
			 	 
			    	return modell;
			}else {
				 modell.addObject("listProduct", articles);
				    modell.setViewName("Accueil");
				 return modell;
			}
	}
	
	
	
	
	
	@RequestMapping(value="/card")
	public ModelAndView card(ModelAndView modell, HttpServletRequest request) throws IOException{
		List<Article> selectedProducts = (List<Article>) request.getSession().getAttribute("selectedProducts");
		Double totalPrice = (Double) request.getSession().getAttribute("totalPrice");
		request.getSession().setAttribute("totalPrice", totalPrice);
		request.getSession().setAttribute("selectedProducts",selectedProducts);
		modell.setViewName("showPanier");
		return modell;
	}
	@RequestMapping(value = "/cardChange/{idProduit}", method = RequestMethod.GET)
	public ModelAndView cardChange(@PathVariable("idProduit") String idProduit,ModelAndView modell, HttpServletRequest request) {
		List<Article> articles = (ArrayList<Article>) request.getSession().getAttribute("selectedProducts");
		if(idProduit!=null) {
			
			 Iterator<Article> iter = articles.iterator();
		      while (iter.hasNext()) {
		         Article item = iter.next();
		         if (item.getIdProduit() == Integer.parseInt(idProduit)) {
		        	 articles.remove(item);
		        	 modell.setViewName("showPanier");
		        	 return modell;
		         }}
		
		}
		return modell;
		
	} 
	
	@RequestMapping(value="/inscrire")
	public ModelAndView inscription(ModelAndView model) throws IOException{
	    model.setViewName("InscriptionClient");
	 
	    return model;
	}
	@RequestMapping(value="/propos")
	public ModelAndView propos(ModelAndView model) throws IOException{
	    model.setViewName("apropos");
	 
	    return model;
	}
	@RequestMapping(value="/checkout")
	public ModelAndView checkout(ModelAndView model) throws IOException{
	    model.setViewName("checkOut");
	 
	    return model;
	}
	@RequestMapping(value="/login")
	public ModelAndView login(ModelAndView model) throws IOException{
	    model.setViewName("login");
	 
	    return model;
	}
	
	@RequestMapping(value="/sendlogin")
	public ModelAndView loginsend(ModelAndView model) throws IOException{
	    model.setViewName("accueil");
	 
	    return model;
	}
	@RequestMapping(value="/calend")
	public ModelAndView calend(ModelAndView model) throws IOException{
	    model.setViewName("calendrier");
	 
	    return model;
	}
	
	@RequestMapping(value = "/saveClient", method = RequestMethod.POST)
	public ModelAndView saveContact(@ModelAttribute("newClient") Client client) {
		Random rand = new Random();
		client.SetId(rand.nextInt(10000));
		System.out.println(client.toString());
		InscriptionModel  modelClient =  (InscriptionModel) context.getBean("ClientService");
		 modelClient.inscrire(client);
	    return new ModelAndView("redirect:/");
	} 
	
	@RequestMapping(value="/addProduct")
	public ModelAndView newProduct(ModelAndView model) throws IOException{
		   CategorieModel pro = (CategorieModel) context.getBean("CategorieService");
		   
		     ArrayList<Categorie> categorie = pro.listeCategorie();
		     for(Categorie tfo : categorie) {
		    	 System.out.println(tfo);
		     }
	    model.addObject("listCategorie", categorie);
		model.setViewName("addProduct");
	 
	    return model;
	}
	@RequestMapping(value="/single/{idProduit}" , method = RequestMethod.GET)
	public ModelAndView productById(@PathVariable("idProduit") String id,ModelAndView model , HttpServletRequest request) throws IOException{
		ProduitModel pro = (ProduitModel) context.getBean("produitService");
		Article article = pro.SelectionProduitParId(Integer.parseInt(id));
	    model.addObject("article", article);
		model.setViewName("single");
	 
	    return model;
	}
	@RequestMapping(value="/listProduct")
	public ModelAndView listProduits(ModelAndView model) throws IOException{
		   ProduitModel pro = (ProduitModel) context.getBean("produitService");
		   
		     ArrayList<Article> articles = pro.listeDesProduits();
	    model.addObject("listProduct", articles);
	    model.setViewName("listeProduit");
	 
	    return model;
	}
	
	
	
	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public ModelAndView saveContact(@ModelAttribute("newProduct") Article article) {
		Random rand = new Random();
		article.setIdProduit(rand.nextInt(10000));
		System.out.println(article.toString());
		ProduitModel  modelProduit =  (ProduitModel) context.getBean("produitService");
		 modelProduit.ajouterProduit(article);
	    return new ModelAndView("redirect:/addProduct");
	}
	@RequestMapping(value="/viewCategorie")
	public ModelAndView cat(ModelAndView model) throws IOException{
		 
		model.setViewName("listeCategorie");
	 
	    return model;
	}
	@RequestMapping(value="/addCategorie")
	public ModelAndView newCategory(@ModelAttribute("newCat") Categorie cat) throws IOException{
		   CategorieModel pro = (CategorieModel) context.getBean("CategorieService");
		  
		    	 pro.ajouterCategorie(cat.getNomCategorie());
		 	    return new ModelAndView("redirect:/viewCategorie");
	}
	
	
	
	
}
