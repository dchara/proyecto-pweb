package episunsa;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ProyectoFerreteriaServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		String parametro=req.getParameter("parametro");
		if(parametro.equals("1")){
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/WEB-INF/index.jsp");
			rd.forward(req, resp);
		}
		if(parametro.equals("2")){
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/WEB-INF/factura.jsp");
			rd.forward(req, resp);
		}
		if(parametro.equals("3")){
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/registrar.jsp");
			rd.forward(req, resp);
		}
		if(parametro.equals("4")){
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/loguear.jsp");
			rd.forward(req, resp);
		}
		if(parametro.equals("5")){
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/producto.jsp");
			rd.forward(req, resp);
		}
		if(parametro.equals("6")){
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/WEB-INF/boleta.jsp");
			rd.forward(req, resp);
		}
		if(parametro.equals("8")){
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/WEB-INF/websites/modificarProducto.jsp");
			rd.forward(req, resp);
		}
		if(parametro.equals("9")){
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/WEB-INF/listProducto.jsp");
			rd.forward(req, resp);
		}
		if(parametro.equals("10")){
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/WEB-INF/websites/mostrarTrabajadores.jsp");
			rd.forward(req, resp);
		}
		
	}
}
