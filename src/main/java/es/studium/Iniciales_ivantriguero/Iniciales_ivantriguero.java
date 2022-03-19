package es.studium.Iniciales_ivantriguero;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Iniciales_ivantriguero
 */
@WebServlet("/Iniciales_ivantriguero")
public class Iniciales_ivantriguero extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Iniciales_ivantriguero() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); 
		String nombre=request.getParameter("nombre");
		String[] nombreSeparado= nombre.split(" ");
		String iniciales="";
		for (int i = 0; i < nombreSeparado.length; i++){
			iniciales=iniciales+nombreSeparado[i].charAt(0);
		    // aqui se puede referir al objeto con arreglo[i];
		}
		iniciales=iniciales.toUpperCase();
		request.setAttribute("iniciales", iniciales);
		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/Iniciales_ivantriguero.jsp"); 
		requestDispatcher.forward(request, response); 
	}

}
