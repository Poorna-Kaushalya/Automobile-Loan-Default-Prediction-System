package oism;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addsubject")
public class addsubject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String subject_name = request.getParameter("subject_name");
		String subject_code = request.getParameter("subject_code");
		String subject_teacher = request.getParameter("subject_teacher");
		String grade = request.getParameter("grade");
		String level = request.getParameter("level");
		String subject_description = request.getParameter("subject_description");
		String subject_add_date = request.getParameter("subject_add_date");
		
		boolean isTrue;
		
		isTrue = subjectDB.insertsubject(subject_name, subject_code, subject_teacher, grade, level, subject_description, subject_add_date);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Dashboard.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
