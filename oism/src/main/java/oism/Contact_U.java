package oism;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet("/Contact_U")
public class Contact_U extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue = ContactDB.updatecontact(id, name, number, email, subject, message);
		
		if(isTrue == true) {
			
			List<Contact> conDetails = ContactDB.selectContactDetails(id);
			request.setAttribute("conDetails", conDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewtable.jsp");
			dis.forward(request, response);
		}
		else {
			List<Contact> conDetails = ContactDB.selectContactDetails(id);
			request.setAttribute("conDetails", conDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}

