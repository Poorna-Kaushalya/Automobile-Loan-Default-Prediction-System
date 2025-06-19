package oism;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BookInsert")
public class BookInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String book_id = request.getParameter("book_id");
		String book_name = request.getParameter("book_name");
		String publisher = request.getParameter("publisher");
		String author = request.getParameter("author");
		String availability = request.getParameter("availability");
		
		boolean isTrue;
		
		isTrue = BookDBUtil.insertbook(book_id, book_name, publisher, author, availability);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
