package oism;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatesubjects")
public class updatesubjects extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sname = request.getParameter("sname");
		String scode = request.getParameter("scode");
		String teacher = request.getParameter("teacher");
		String grade = request.getParameter("grade");
		String level = request.getParameter("level");
		String description = request.getParameter("description");
		String date = request.getParameter("date");
		
		boolean isTrue;
		
		isTrue = adminDB.updatesubject(sname, scode, teacher, grade, level, description, date);
		
		if(isTrue == true) {
			
			List<subject> subDetails = adminDB.getsubDetails(scode);
			request.setAttribute("subDetails", subDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Dashboard.jsp");
			dis.forward(request, response);
		}
		else {
			List<subject> subDetails = adminDB.getsubDetails(scode);
			request.setAttribute("subDetails", subDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Subjects.jsp");
			dis.forward(request, response);
		}
	}


}
