package es.studium.Multiplicar_antoniorg1608;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Multiplicar_antoniorg1608
 */
@WebServlet("/Multiplicar")
public class Multiplicar_antoniorg1608 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Multiplicar_antoniorg1608() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		// DETECTAR QUE LOS INPUTS NO ESTÉN VACIOS
		if(request.getParameter("numero1").length() != 0 && request.getParameter("numero2").length() != 0) {

			// CALCULAR MULTIPLICACION
			int numero1 = Integer.parseInt(request.getParameter("numero1"));
			int numero2 = Integer.parseInt(request.getParameter("numero2"));
			int multiplicar = numero1*numero2;
			// GUARDAR RESULTADO
			request.setAttribute("resultado_multiplicar", multiplicar); // guardar datos para que el usuario lo reciba
		} else {
			// GUARDAR ERROR
			request.setAttribute("resultado_multiplicar", "Faltan datos...");
		}

		// VOLVER AL JSP
		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/Multiplicar_antoniorg1608.jsp"); 
		requestDispatcher.forward(request, response); 

	}

}
