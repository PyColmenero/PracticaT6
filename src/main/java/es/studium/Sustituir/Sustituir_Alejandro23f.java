package es.studium.Sustituir;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sustituir_Alejandro23f
 */
@WebServlet("/Sustituir_Alejandro23f")
public class Sustituir_Alejandro23f extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   /**
     * @see HttpServlet#HttpServlet()
     */
    public Sustituir_Alejandro23f() {
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
	
		String palabra = request.getParameter("palabra");
	
   request.setAttribute("resultado", palabra.replaceAll("[AaEeIiOoUu]", "a"));
  

		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = 
				servletContext.getRequestDispatcher("/Sustituir_Alejandro23f.jsp");
						requestDispatcher.forward(request, response);
						}
}
