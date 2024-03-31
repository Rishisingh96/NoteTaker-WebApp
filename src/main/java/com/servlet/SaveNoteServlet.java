// SaveNoteServlet.java
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

@SuppressWarnings("serial")
@WebServlet("/saveNote")
public class SaveNoteServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // title, content fetch
            String title = request.getParameter("title");
            String content = request.getParameter("content");

            Timestamp timestamp = new Timestamp(System.currentTimeMillis()); // Current timestamp

            Note note = new Note(title, content, timestamp);

            // hibernate: save()

            Session session = FactoryProvider.getFactory().openSession();

            Transaction transaction = session.beginTransaction();
            session.save(note);
            transaction.commit();

            session.close();

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h1 style='text-align:center;'>Note is added successfully</h1>");
            out.println("<h1 style='text-align:center;'><a href='show_allNotes.jsp'>View all</a></h1>");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
