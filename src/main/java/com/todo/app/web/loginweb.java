package com.todo.app.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todo.app.dao.LoginDao;
import com.todo.app.model.Login;

@WebServlet("/loginweb")
public class loginweb extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        authenticate(request, response);
    }

    private void authenticate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Login login = new Login();
        login.setUsername(username);
        login.setPassword(password);

        try {
            if (loginDao.validate(login)) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("TodoForm.jsp");
                dispatcher.forward(request, response);
            } else {
                @SuppressWarnings("unused")
				HttpSession session = request.getSession();
            
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}
	
	
	
	
	
	
	
	
	
	
	
	
