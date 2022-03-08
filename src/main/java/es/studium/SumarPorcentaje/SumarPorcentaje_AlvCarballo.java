package es.studium.SumarPorcentaje;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SumarPorcentaje_AlvCarballo
 */
@WebServlet("/SumarPorcentaje_AlvCarballo")
public class SumarPorcentaje_AlvCarballo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SumarPorcentaje_AlvCarballo() {
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
		float numero=Float.parseFloat(request.getParameter("numero"));
		float porcentaje=Float.parseFloat(request.getParameter("porcentaje"));
		request.setAttribute("resultado", (numero+((numero*porcentaje)/100)));
		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/SumarPorcentaje_AlvCarballo.jsp"); 
		requestDispatcher.forward(request, response); 
	}

}
