package com.romeo.controladordedatos;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RomeoDAO.ProductoDao;
import com.google.gson.Gson;
import com.romeo.model.Producto;

/**
 * Servlet implementation class ServeletControler
 */
public class ServeletControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletControler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Producto pr = new Producto();
		ProductoDao prd = new ProductoDao();
		String id = request.getParameter("id");
		String nombrepr = request.getParameter("Nproductos");
		String preciopr = request.getParameter("Pproductos");
		String cantidadpr = request.getParameter("Cproductos");
		String totalpr = request.getParameter("Tproductos");
		
		
		
		pr.setId(Integer.parseInt(id));
		pr.setNombreProducto(nombrepr);
		pr.setPrecioProducto(Double.parseDouble(preciopr));
		pr.setCantidadProducto(Integer.parseInt(cantidadpr));
		pr.setTotalProducto(Double.parseDouble(totalpr));
		
		prd.agregarDatos(pr);
		
		response.sendRedirect("index.jsp");
		
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductoDao prdao = new ProductoDao();
		Gson json = new Gson();
		try {
			
			response.getWriter().append(json.toJson(prdao.productoLista()));
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

}
