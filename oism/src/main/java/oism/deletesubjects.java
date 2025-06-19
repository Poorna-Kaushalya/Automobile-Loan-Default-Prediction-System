package oism;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletesubjects")
public class deletesubjects extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("scode");
		boolean isTrue;
		
		isTrue = adminDB.deletesubject(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<subject> subDetails = adminDB.getsubDetails(id);
			request.setAttribute("subDetails", subDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Subjects.jsp");
			dispatcher.forward(request, response);
		}
		
			
			
	}

}
