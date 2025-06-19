package oism;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBookServlet")
public class UpdateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String book_id = request.getParameter("book_id");
		String book_name = request.getParameter("book_name");
		String publisher = request.getParameter("publisher");
		String author = request.getParameter("author");
		String availability = request.getParameter("availability");
		
		boolean isTrue;
		
		isTrue = BookDBUtil.updatebook(book_id, book_name, publisher, author, availability);
		
		if(isTrue == true) {
			
			List<book> bookDetails = BookDBUtil.getBook(book_name);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Viewbook.jsp");
			dis.forward(request, response);
		}
		else {
			List<book> bookDetails = BookDBUtil.getBook(book_name);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Viewbook.jsp");
			dis.forward(request, response);
		}
	}

}

