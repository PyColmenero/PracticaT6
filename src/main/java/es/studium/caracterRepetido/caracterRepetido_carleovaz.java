package es.studium.caracterRepetido;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContarVocales_sarafersanz
 */
@WebServlet("/caracter_Repetido")
public class caracterRepetido_carleovaz extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public caracterRepetido_carleovaz() {
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
		request.setCharacterEncoding("UTF-8"); 
		String cadena = request.getParameter("cadena");
		String caracter = request.getParameter("caracter");
		int posicion, contador = 0;
		//se busca la primera vez que aparece
		if(cadena!=null)
		{
			posicion = cadena.indexOf(caracter);
			while (posicion != -1) { //mientras se encuentre el caracter
				contador++;           //se cuenta
				//se sigue buscando a partir de la posición siguiente a la encontrada
				posicion = cadena.indexOf(caracter, posicion + 1);
			}
		}
		// GUARDAR RESULTADO
		request.setAttribute("contador", contador);
		request.setAttribute("caracter", caracter);

		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/caracterRepetido_carleovaz.jsp"); 
		requestDispatcher.forward(request, response); 
	}

}