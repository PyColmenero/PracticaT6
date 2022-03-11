package es.studium.Calculadora_infantecruzalejandro;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calculadora_infantecruzalejandro")
public class Calculadora_infantecruzalejandro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ServletContext servletContext = null;
	RequestDispatcher requestDispatcher = null;

	String respuesta=null;
	
	public Calculadora_infantecruzalejandro() {
		super();
	}

	public void init(ServletConfig config) throws ServletException
	{
		servletContext = config.getServletContext();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		if(request.getParameter("num1") == "" && request.getParameter("num2") == "")
		{
			request.setAttribute("alertaKO", "Debe rellenar ambos campos");
		}
		else if(Integer.parseInt(request.getParameter("num1"))%1!=0 && Integer.parseInt(request.getParameter("num1"))%1!=0)
		{
			request.setAttribute("alertaKO","No ha introducido dos números enteros");
		}
		else
		{
			int num1=Integer.parseInt(request.getParameter("num1"));
			int num2=Integer.parseInt(request.getParameter("num2"));
			
			if (request.getParameter("division") != null) 
			{
				if(num2==0)
				{
					request.setAttribute("alertaKO","Para realizar la división debe de introducir un número distinto a 0");
				}
				else
				{	
					respuesta=Float.toString((float)Math.round((float)num1/(float)num2 * 100)/100);
					request.setAttribute("alertaOK", "División realizada con éxito");
				}

			} 
			
			else if (request.getParameter("multiplicacion") != null) 
			{
				respuesta=Integer.toString(num1 * num2);
				request.setAttribute("alertaOK", "Multiplicación realizada con éxito");

			} 
			
			else if (request.getParameter("resta") != null) {
				request.setAttribute("alertaOK", "Resta realizada con éxito");
				respuesta=Integer.toString(num1 - num2);

			}
			
			else if (request.getParameter("suma") != null) {

				request.setAttribute("alertaOK", "Suma realizada con éxito");
				respuesta=Integer.toString(num1 + num2);
			}			
		}
		
		if(respuesta != null)
		{
			request.setAttribute("respuesta", respuesta);
		}
		
		// Redireccionamiento
		requestDispatcher = servletContext.getRequestDispatcher("/Calculadora_infantecruzalejandro.jsp");
		requestDispatcher.forward(request, response);
	}

}
