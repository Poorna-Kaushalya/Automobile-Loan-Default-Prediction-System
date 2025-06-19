package oism;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteadminServlet")
public class DeleteadminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		boolean isTrue;
		
		isTrue = adminDB.deleteadmin(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<admin> admDetails = adminDB.getadminDetails(id);
			request.setAttribute("admDetails", admDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminaccount.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
