package oism;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/MarksEnter")
public class MarksEnter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String class1 = request.getParameter("class");
		String subject = request.getParameter("subject");
		String marks = request.getParameter("marks");
		
		boolean isTrue;
		
		isTrue = ResultsDBUtil.MarksEnter(id, name, class1, subject, marks);
		
		if(isTrue == true){
			RequestDispatcher dis = request.getRequestDispatcher("UploadResult.jsp");
			dis.forward(request,response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsucess.jsp");
			dis2.forward(request, response);
		}
		
		
		
		}

}
