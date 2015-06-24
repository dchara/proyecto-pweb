package episunsa;

import java.io.IOException;
import java.util.*;

import javax.servlet.http.*;
import javax.jdo.PersistenceManager;

@SuppressWarnings("serial")
public class SaveUsuario extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		
		String nombres=req.getParameter("nombres");
		String apellidos=req.getParameter("apellidos");
		String dni=req.getParameter("dni");
		String gmail=req.getParameter("gmail");
		String direccion=req.getParameter("direccion");
		String telefono=req.getParameter("telefono");
		String ventas=req.getParameter("ventas");
	
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Usuario usur = new Usuario(nombres,apellidos,dni,gmail,direccion,telefono,ventas);
		try{
			pm.makePersistent(usur);
			resp.getWriter().println("Persona Registrada");
			resp.sendRedirect("/listusuario");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrio un error, vuelva a intentarlo.");
			resp.sendRedirect("/usuario.jsp");
		}finally{
			pm.close();
		}
	
	
	}
}
