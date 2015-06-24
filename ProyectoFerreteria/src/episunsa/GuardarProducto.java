package episunsa;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class GuardarProducto extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		
		String nombre = req.getParameter("nombProd");
		String marca = req.getParameter("marcaProd");
		String modelo = req.getParameter("modProd");
		String especificaciones = req.getParameter("espProd");
		String garantia = req.getParameter("garantProd");
		String stock = req.getParameter("stockProd");
		String preciocompra= req.getParameter("pcProd");
		String precioventa= req.getParameter("pvProd");
		String ganancia = req.getParameter("ganProd");
		String precioxmayor= req.getParameter("pmayProd");
	
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Producto p = new Producto( nombre,marca,modelo,especificaciones,garantia,stock,preciocompra, precioventa,ganancia, precioxmayor);
		try{
			pm.makePersistent(p);
			resp.getWriter().println("Producto grabado correctamente.");
			resp.sendRedirect("/listproducto");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, vuelva a intentarlo.");
			resp.sendRedirect("/producto.jsp");
		}finally{
			pm.close();
		}
	}
}
