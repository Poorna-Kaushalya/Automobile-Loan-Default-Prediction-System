package oism;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Payment_I")
public class Payment_I extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Name = request.getParameter("Name");
		String Number = request.getParameter("Number");
		String cvv = request.getParameter("cvv");
	 
		 boolean isTrue = PaymentDB.insertpayment(Name,Number,cvv);

			
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
			} else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);}
	}

}
