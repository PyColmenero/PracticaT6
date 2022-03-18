package es.studium.InvertirOrden;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InvertirOrden_miguelvazquezmartin
 */
@WebServlet("/InvertirOrden_miguelvazquezmartin")
public class InvertirOrden_miguelvazquezmartin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InvertirOrden_miguelvazquezmartin() {
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
		
			
			String cadena = request.getParameter("texto");
			
			String caracteresInvertidos = "";
			
			char[] caracteres = cadena.toCharArray(); //Crear y rellenar un array con los caracteres introducidos
			int i;
			
			for (i = caracteres.length -1; i > -1; i--) //Recorrer el array al contrario
			{
			 caracteresInvertidos += caracteres[i];
			request.setAttribute("resultado", caracteresInvertidos);
			}

		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/InvertirOrden_miguelvazquezmartin.jsp");
		requestDispatcher.forward(request, response);
		
	}

}
