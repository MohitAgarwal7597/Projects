package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Registration;
import com.helper.FactoryProvider;

public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegistrationServlet() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String rEmailId = request.getParameter("re");
			String rPassword = request.getParameter("rp");
			
			Registration r = new Registration(rEmailId, rPassword, new Date());
			
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			
			session.save(r);
			tx.commit();
			
			session.close();
			
			PrintWriter out = response.getWriter();
			out.print("<h1 style = 'text-align:center;'>Registration Sucessfull<h1>");
			out.println("<h1 style = 'text-align:center;'> <a href = 'addNote.jsp'>Start Adding Note</a></h1>");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		

		
		
		
		
	}

}
