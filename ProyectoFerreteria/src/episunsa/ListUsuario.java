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
public class ListUsuario extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Usuario.class);
		
		q.setOrdering("idUsuario descending");
		//q.setRange(0, 10);
			try{
				@SuppressWarnings("unchecked")
				List<Usuario> usuarios = (List<Usuario>) q.execute();
				req.setAttribute("usuarios", usuarios);
				RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/listusuarios.jsp");
				rd.forward(req, resp);
			}catch(Exception e){
				System.out.println(e);
			}finally{
				q.closeAll();
				pm.close();
			}
					
	}

}
