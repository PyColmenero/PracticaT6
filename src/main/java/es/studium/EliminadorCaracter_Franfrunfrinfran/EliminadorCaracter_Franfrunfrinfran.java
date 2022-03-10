package es.studium.EliminadorCaracter_Franfrunfrinfran;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EliminadorCaracter_Franfrunfrinfran
 */
@WebServlet("/EliminadorCaracter_Franfrunfrinfran")
public class EliminadorCaracter_Franfrunfrinfran extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminadorCaracter_Franfrunfrinfran() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		//Observar que los inputs no estén vacíos
		
		if(request.getParameter("texto").length() != 0) {
			
			//Obtenemos el dato texto y lo contamos
			String texto = request.getParameter("texto");
			String caracter = request.getParameter("caracter");
			
			//Tener el resultado sin contar espacios
			texto = texto.replace(caracter, "");
			
			//Guardar Resultado
			request.setAttribute("resultado_texto", texto);
			
		}else {
			request.setAttribute("resultado_texto", "Escriba un texto");
		}
		
		if(request.getParameter("caracter").length() == 0) {
			request.setAttribute("resultado_texto", "Escriba un carácter");
		}
		
		//Volver al JSP
		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/EliminadorCaracter_Franfrunfrinfran.jsp"); 
		requestDispatcher.forward(request, response); 
	
	}

}
