package es.studium.InvertirUpperLower_kvdos;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InvertirUpperLower
 */
@WebServlet("/InvertirUpperLower")
public class InvertirUpperLower_kvdos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InvertirUpperLower_kvdos() {
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
		
		String wording = request.getParameter("wording");
		String resultado = "";
		
		StringBuilder sb = new StringBuilder();
		
		if (wording != null) {
			for (char ch : wording.toCharArray()) {
	            if (Character.isUpperCase(ch)) {
	                ch = Character.toLowerCase(ch);
	            } else {
	                ch = Character.toUpperCase(ch);
	            }
	            
	            sb.append(ch);
	        }
			
			resultado = sb.toString();
		}
		
		request.setAttribute("wordingInverted", resultado);
        
		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/InvertirUpperLower_kvdos.jsp"); 
		requestDispatcher.forward(request, response); 
	}

}
