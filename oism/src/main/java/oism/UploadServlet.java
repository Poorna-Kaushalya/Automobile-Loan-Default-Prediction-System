package oism;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("studentId");
		String name = request.getParameter("studentName");
		
		try {
		
				List<Results> resDetails = ResultsDBUtil.validate(id, name);
				request.setAttribute("resDetails", resDetails);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		       RequestDispatcher dis = request.getRequestDispatcher("ResultsSheet.jsp");
		       dis.forward(request, response);
	}

}
