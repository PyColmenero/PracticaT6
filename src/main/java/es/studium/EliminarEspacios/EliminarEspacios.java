package es.studium.EliminarEspacios;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EliminarEspacios
 */
@WebServlet("/EliminarEspacios")
public class EliminarEspacios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminarEspacios() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		
		
		if(request.getParameter("texto").length() != 0) {
			
			String texto = "       Hello World!        ";
			String text = texto.trim();
			
			
			
			texto = texto.replace(text, "");
			
			request.setAttribute("resultado_texto", texto);
			
		}else {
			request.setAttribute("resultado_texto", "Escriba un texto");
		}
		
		if(request.getParameter("caracter").length() == 0) {
			request.setAttribute("resultado_texto", "Escriba un carácter");
		}
		
		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/EliminadorEspacios_AlejandroDiaz.jsp"); 
		requestDispatcher.forward(request, response); 
	
	}

}