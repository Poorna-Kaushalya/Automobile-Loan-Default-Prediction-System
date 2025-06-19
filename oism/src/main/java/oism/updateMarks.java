package oism;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/updateMarks")
public class updateMarks extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Sid");
		String name = request.getParameter("Sname");
		String clss = request.getParameter("Sclass");
		String subject = request.getParameter("subject");
		String marks = request.getParameter("marks");
		
		boolean isTrue;
		
		isTrue =ResultsDBUtil.updateMarks(id, name, clss, subject, marks);
		
        if(isTrue ==true) {
        
               List<Results> resDetails = ResultsDBUtil.getMarks(id);
               request.setAttribute("resDetails",resDetails);
        	
		       RequestDispatcher dis = request.getRequestDispatcher("ResultsSheet.jsp");
		       dis.forward(request, response);
        }
        else {

		       RequestDispatcher dis = request.getRequestDispatcher("ResultsSheet.jsp");
		       dis.forward(request, response);
        }
	}
}
