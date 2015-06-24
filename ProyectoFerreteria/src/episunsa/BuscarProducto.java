package episunsa;

import java.io.IOException;
import java.util.List;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

	@SuppressWarnings("serial")
	public class BuscarProducto extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			//resp.setContentType("text/plain");
			
			
			String productoBuscado=req.getParameter("buscado");
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			//final Query q = pm.newQuery(Producto.class);
			
				try{
					@SuppressWarnings("unchecked")
					
					 List<Producto> producto = mostrarsegunNombre(productoBuscado);
					
					req.setAttribute("productos", producto);
			
					
					RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/mostrarproducto.jsp");
					rd.forward(req, resp);
				}catch(Exception e){
					System.out.println(e);
				}finally{
					
					pm.close();
				}
						
		}
		
		
		public static List<Producto> mostrarsegunNombre(String name){
			 final PersistenceManager pm = PMF.get().getPersistenceManager();
			 String query = " select from " +
			 Producto.class.getName() +
			 " where nombre == '" +
			 name + "'";
			 List<Producto> producto = (List<Producto>)pm.newQuery(query).execute();
			 
			 return(producto);
			}
	}