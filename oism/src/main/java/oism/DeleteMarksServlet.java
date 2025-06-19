package oism;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/DeleteMarksServlet")
public class DeleteMarksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Sid");
		boolean isTrue;
		
		isTrue = ResultsDBUtil.DeleteMarks(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("UploadResult.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Results> resDtails = ResultsDBUtil.getMarks(id);
            request.setAttribute("resDtails",resDtails);
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("ResultsSheet.jsp");
			dispatcher.forward(request, response);
		}
	}

}
