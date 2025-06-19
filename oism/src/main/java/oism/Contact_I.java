package oism;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Contact_I")
public class Contact_I extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the request parameters (assumed to come from an HTML form).
        String name = request.getParameter("name");
        String number = request.getParameter("number");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        
        // insert data using the ContactDB class.
        boolean isTrue = ContactDB.insertcontact(name, number, email, subject, message);

        if (isTrue == true) {
            // If insert was successful, forward the request to "success.jsp".
            RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
            dis.forward(request, response);
        } else {
            // If insert failed, forward the request to "unsuccess.jsp".
            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);
        }
    }
}


