package com.RomeoDAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.romeo.model.Producto;


public class ProductoDao {
	
	public List<Producto> productoLista(){
		
		List<Producto> listapr = new ArrayList<>();
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("INICIALIZANDO_JPA-HIBERNATE");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			listapr = em.createQuery("from Producto").getResultList();
			em.getTransaction().commit();
			
			
		}
		catch(Exception e) {
			System.out.println(e);
			
		}
		
		return listapr;
	}
	
	public void agregarDatos(Producto pr) {
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("INICIALIZANDO_JPA-HIBERNATE");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(pr);
		em.flush();
		em.getTransaction().commit();
	}
	

}
