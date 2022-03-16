package es.studium.IntercalarCadenas_AndresGil94;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class IntercalarCadenas_AndresGil94
 */
@WebServlet("/IntercalarCadenas_AndresGil94")
public class IntercalarCadenas_AndresGil94 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public IntercalarCadenas_AndresGil94() {
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String cadena1 = request.getParameter("cadena1");
		String cadena2 = request.getParameter("cadena2");
		String resultado = "";
		
		int cadena1Length = cadena1.length();
		int cadena2Length = cadena2.length();
	

		if (cadena1Length == cadena2Length + 1 || cadena1Length + 1 == cadena2Length ) {

			if (cadena1Length > cadena2Length) {
				for (int i = 0; i < cadena2Length; i++) { 
					resultado += cadena1.charAt(i);
					resultado += cadena2.charAt(i);
				}
				resultado += cadena1.charAt(cadena2Length);
			} else if (cadena2Length > cadena1Length) {
				for (int i = 0; i < cadena1Length; i++) {
					resultado += cadena2.charAt(i);
					resultado += cadena1.charAt(i);
				}
				resultado += cadena2.charAt(cadena1Length);
			}
			
		}else {
			for (int i = 0; i < cadena2Length; i++) { 
				resultado += cadena1.charAt(i);
				resultado += cadena2.charAt(i);
			}

		}

		request.setAttribute("resultado", resultado);

		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/IntercalarCadenas_AndresGil94.jsp");
		requestDispatcher.forward(request, response);
	}

		
	}