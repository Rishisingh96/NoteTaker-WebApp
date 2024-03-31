package com.servlet;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.entities.Note;
import com.helper.FactoryProvider;

//@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DeleteServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 try { int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		 
		 Session session = FactoryProvider.getFactory().openSession(); Transaction
		  transaction = session.beginTransaction();
		  
		  Note note = session.get(Note.class, noteId); if (note != null) {
		  session.delete(note); transaction.commit();
		  response.sendRedirect("show_allNotes.jsp"); } else {
		  response.getWriter().println("Note not found with id: " + noteId); }
		  
		 session.close(); } catch (NumberFormatException e) {
		 response.getWriter().println("Invalid note id format"); } catch (Exception e)
		  { e.printStackTrace(); // Log the exception
		  response.getWriter().println("An error occurred while deleting the note: " +
		  e.getMessage()); }
		 
    }
}
