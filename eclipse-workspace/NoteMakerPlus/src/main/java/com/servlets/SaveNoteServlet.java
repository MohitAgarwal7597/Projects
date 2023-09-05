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

import com.entities.Note;
import com.helper.FactoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String title = request.getParameter("title");
			String note = request.getParameter("note");
			
			Note notes = new Note(title,note,new Date());
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.save(notes);
			tx.commit();
			session.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style = 'text-align:center;'>Note Added Sucessfully..</h1>");
			out.println("<h1 style = 'text-align:center;'> <a href = 'allNotes.jsp'>View Note</a></h1>");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
