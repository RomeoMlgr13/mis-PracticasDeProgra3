package com.RomeoDAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.romeo.model.Producto;
import com.romeo.model.TbVenta;

public class VentaDao {

	
	
	public void agregarDatos(TbVenta tbv) {
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("INICIALIZANDO_JPA-HIBERNATE");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(tbv);
		em.flush();
		em.getTransaction().commit();
	}
	
}
