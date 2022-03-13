package es.studium.CompararCadenas_AndresPedrosa;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CompararCadenas_AndresPedrosa
 */
@WebServlet("/CompararCadenas_AndresPedrosa")
public class CompararCadenas_AndresPedrosa extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CompararCadenas_AndresPedrosa() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String cadena1 = request.getParameter("cadena1");
		String cadena2 = request.getParameter("cadena2");
		String resultado = "";

		if (cadena1 != null && cadena2 != null) {
			if (cadena1.equals(cadena2)) {
				resultado = "Son iguales";
			} else {
				resultado = "No son iguales";
			}
		}

		request.setAttribute("resultado", resultado);

		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/CompararCadenas_AndresPedrosa.jsp");
		requestDispatcher.forward(request, response);
	}

}
