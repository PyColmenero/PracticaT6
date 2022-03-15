package es.studium.toLowerCase;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class toLowerCase_alivazgom
 */
@WebServlet("/toLowerCase_alivazgom")
public class toLowerCase_alivazgom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public toLowerCase_alivazgom() {
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
		response.setCharacterEncoding("UTF-8"); 

		String cadena = (String)request.getParameter("cadena");
		//"A","B","C","D","E","H","I","J","K","M","L","N","Ñ","O","P","Q","R","S","T","U","W","X","Y","Z"
		if(cadena == "")
		{
			request.setAttribute("KO", "No has insertado ninguna cadena.");
		//} else if(cadena.contains("a","b","c","d","e","h","i","j","K","M","L","N","Ñ","O","P","Q","R","S","T","U","W","X","Y","Z")) {
			
		}else
		{

			request.setAttribute("minuscula", cadena.toLowerCase());		
			request.setAttribute("OK", "Esta es la nueva cadena.");
			
			ServletContext servletContext = getServletContext();
			RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/toLowerCase_alivazgom.jsp"); 
			requestDispatcher.forward(request, response); 
		}
	}

}
