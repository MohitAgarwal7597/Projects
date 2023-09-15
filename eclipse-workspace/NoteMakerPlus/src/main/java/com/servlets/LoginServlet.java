package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entities.Registration;
import com.helper.FactoryProvider;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			PrintWriter out = response.getWriter();
			String email = request.getParameter("emailId");
			String password = request.getParameter("pass");
			Session session = FactoryProvider.getFactory().openSession();
			Registration l = session.get(Registration.class, email);
			if(l == null) {
				out.print("<h1 style = 'text-align:center;'>No Email Id Found Register First</h1>");
				out.println("<h1 style = 'text-align:center;'> <a href = 'registerUser.jsp'>Register Here</a></h1>");
			}
			
			if(l.getPassword().equals(password)) {
				
				out.print("<h1 style = 'text-align:center;'> Login Sucessfully</h1>");
				out.println("<h1 style = 'text-align:center;' class = btn-btn-primary> <a href = 'addNote.jsp'>Start Adding Notes</a></h1>");
				out.println("<h1 style = 'text-align:center;'> <a href = 'allNotes.jsp'>Show Notes</a></h1>");
			}
			else {
				
				out.print("<h1 style = 'text-align:center;'>Wrong Email or Password</h1>");
				out.println("<h1 style = 'text-align:center;'> <a href = 'login.jsp'>Try Again..</a></h1>");
				
			}
			session.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
		
	}

}
