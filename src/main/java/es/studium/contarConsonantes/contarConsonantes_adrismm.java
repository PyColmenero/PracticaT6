package es.studium.contarConsonantes;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contarConsonantes_adrismm
 */

@WebServlet("/contarConsonantes_adrismm")
public class contarConsonantes_adrismm extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public contarConsonantes_adrismm() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setCharacterEncoding("UTF-8");
		String frase = request.getParameter("inputText");
		frase = frase.toLowerCase();
		int cont = 0;
		for(int i = 0; i < frase.length(); i++)
		{
			char ch = frase.charAt(i);
			if ((ch >= 'b') && (ch <= 'z') && (ch != 'e') && (ch != 'i') && (ch != 'o') && (ch != 'u'))
			{
				cont ++;
			}
		}
		
		request.setAttribute("frase", cont);
		ServletContext servletContext = getServletContext();
		RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/contarConsonantes_adrismm.jsp"); 
		requestDispatcher.forward(request, response); 
	}

}
