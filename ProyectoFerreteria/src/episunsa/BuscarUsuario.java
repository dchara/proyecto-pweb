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
	public class BuscarUsuario extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			//resp.setContentType("text/plain");
			
			
			String usuarioBuscado=req.getParameter("usbuscado");
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			//final Query q = pm.newQuery(Producto.class);
			
				try{
					@SuppressWarnings("unchecked")
					
					 List<Usuario> usuario = mostrarsegunNombre(usuarioBuscado);
					
					req.setAttribute("usuario", usuario);
			
					
					RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/mostrarusuario.jsp");
					rd.forward(req, resp);
				}catch(Exception e){
					System.out.println(e);
				}finally{
					
					pm.close();
				}
						
		}
		
		
		public static List<Usuario> mostrarsegunNombre(String name){
			 final PersistenceManager pm = PMF.get().getPersistenceManager();
			 String query = " select from " +
			 Usuario.class.getName() +
			 " where nombre == '" +
			 name + "'";
			 List<Usuario> usuario = (List<Usuario>)pm.newQuery(query).execute();
			 
			 return(usuario);
			}
	}