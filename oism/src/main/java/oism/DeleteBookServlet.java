package oism;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteBookServlet")
public class DeleteBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("book_id");
		boolean isTrue;
		
		isTrue = BookDBUtil.deleteDetails(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Viewbook.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<book> bookDetails = BookDBUtil.getBook(id);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Viewbook.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
