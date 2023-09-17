package org.zabalburu.FirstProject.jakarta.servlet;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.zabalburu.FirstProject.jakarta.dao.TareasList;
import org.zabalburu.FirstProject.jakarta.modelo.Empleado;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TareasList tl = TareasList.getInstance();
	
    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String msg = "";
		
		
		if(email.isBlank() && password.isBlank()) {
			msg="El campo password no puede esta vacio";
			request.getSession().setAttribute("msg", msg);
			
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		}else {
			Empleado emp = tl.login(email, password);
			if(emp == null) {
				msg = "Email o Password no esta correcta";
				request.getSession().setAttribute("msg", msg);
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
			}else {
				request.getSession().setAttribute("emp", emp);
				RequestDispatcher rd = request.getRequestDispatcher("/bienvenido.jsp");
				rd.forward(request, response);
			}
		}
	}

}
